import { useState } from "react";
import "./App.css";
import { useEffect } from "react";
import React from "react";
import { addMinutes, setHours, setSeconds } from "date-fns";

function App() {
    const data = {
        zaal: "zaal 1",
        tijden: [
            { begin: setHours(new Date(), 10), end: setHours(new Date(), 11) },
            { begin: setHours(new Date(), 12), end: setHours(new Date(), 14) },
            { begin: setHours(new Date(), 15), end: setHours(new Date(), 16) },
            { begin: setHours(new Date(), 16), end: setHours(new Date(), 17) },
        ],
    };
    const endTime = setHours(new Date(), 18);
    const blockSize = 60;
    const minSizePx = 1;
    const [count, setCount] = useState(0);
    const [modal, setModal] = useState(false);
    function toggleModal() {
        setModal(!modal);
    }
    useEffect(() => {
        console.log(data);
    });
    const minDrawSize = 1;

    interface HoursMinutes {
        h: number;
        m: number;
    }
    interface Item {
        start: HoursMinutes;
        end: HoursMinutes;
    }

    const dummyData: Item[] = [
        {
            start: {
                h: 10,
                m: 12,
            },
            end: {
                h: 10,
                m: 55,
            },
        },
        {
            start: {
                h: 11,
                m: 5,
            },
            end: {
                h: 11,
                m: 30,
            },
        },
        {
            start: {
                h: 11,
                m: 45,
            },
            end: {
                h: 12,
                m: 0,
            },
        },
    ];
    // Array of dates should 1. not be overlapping. 2. sorted. Needs to calc item block start to next item block start
    function timeItemToBuffers(
        start: HoursMinutes,
        end: HoursMinutes,
        nextStart: HoursMinutes
    ): Array<buffer> {
        // TODO: non whole lenght when next start in seperate block.
        let buffers: Array<buffer> = [];
        // return (start.getHours() * 60 + start.getMinutes()) - (end.getHours() * 60 + end.getMinutes());
        console.log("start-hours", start.h, "start-minutes", start.m);
        console.log("end-hours", end.h, "end-minutes", end.m);

        const endInMinutes = end.h * 60 + end.m;
        const startInMinutes = start.h * 60 + start.m;
        console.log("start", startInMinutes, "end", endInMinutes);

        const itemInMinutes = endInMinutes - startInMinutes;
        if (itemInMinutes > 0) {
            buffers.push(buffer(itemInMinutes, true));
        }
        console.log(buffers);

        console.log("item range", itemInMinutes);
        const distanceToNextBlock = blockSize - (endInMinutes % blockSize);
        console.log("Diff to end of block", distanceToNextBlock);
        const itemBlockEndInMinutes = endInMinutes + distanceToNextBlock;
        const nextStartInMinutes = nextStart.h * 60 + nextStart.m;
        console.info(nextStartInMinutes, "<", itemBlockEndInMinutes);
        if (nextStartInMinutes < itemBlockEndInMinutes) {
            const distanceItemEndToNextItemStartInBlock =
                nextStartInMinutes - endInMinutes;
            if (distanceItemEndToNextItemStartInBlock > 0) {
                buffers.push(buffer(distanceItemEndToNextItemStartInBlock));
            }
            return buffers;
        } else {
            console.log("to next block", distanceToNextBlock);
            // return distanceToNextBlock;
            buffers.push(buffer(distanceToNextBlock));
            const nextItemBlockStart =
                nextStartInMinutes - (nextStartInMinutes % blockSize);

            const distanceItemBlockEnd_NextItemBlockStart =
                nextItemBlockStart - itemBlockEndInMinutes;

            buffers = [
                ...buffers,
                ...Array(
                    distanceItemBlockEnd_NextItemBlockStart / blockSize
                ).fill(buffer(blockSize)),
            ];
            if (nextItemBlockStart < nextStartInMinutes) {
                const distanceNextItemBlockStart_NextItemStart =
                    nextStartInMinutes - nextItemBlockStart;
                buffers.push(
                    buffer(distanceNextItemBlockStart_NextItemStart));
            }
            return buffers;
        }
    }

    interface buffer {
        bufferInMinutes: number,
        isFull: boolean,
    }
    function buffer(bufferInMinutes: number, isFull: boolean = false): buffer {
        return { bufferInMinutes: bufferInMinutes, isFull: isFull };
    }
    // Expects all dates to be sorted. Not overlap and nulls proof
    function prossessDates(
        roomStart: HoursMinutes,
        roomEnd: HoursMinutes,
        dates: Item[]
    ): buffer[] {
        // while / for ; check what the next buffer is. and calc that buffer
        // let buffers: Array<number> = [];
        // for (let index = 0; index <= data.tijden.length; index++) {
        //     const {begin, end} = data.tijden[index]
        //     const {begin: nextBegin} = data.tijden[index + 1]

        //     buffers = [...buffers, ...timeItemToBuffers(begin, end, nextBegin)];
        // }
        // console.log(buffers);
        // TODO: For the first
        const datesWithStartAndEnd: Item[] = [
            { start: roomStart, end: roomStart },
            ...dates,
            { start: roomEnd, end: roomEnd },
        ];
        let buffers: Array<buffer> = [];
        for (let index = 0; index < datesWithStartAndEnd.length - 1; index++) {
            buffers = [
                ...buffers,
                ...timeItemToBuffers(
                    datesWithStartAndEnd[index].start,
                    datesWithStartAndEnd[index].end,
                    datesWithStartAndEnd[index + 1].start
                ),
            ];
            const oneItemArray = timeItemToBuffers(
                datesWithStartAndEnd[index].start,
                datesWithStartAndEnd[index].end,
                datesWithStartAndEnd[index + 1].start
            )
        }
        return buffers;
        // console.log(
        //     timeItemToBuffers(
        //         { h: 12, s: 20 },
        //         { h: 12, s: 20 },
        //         { h: 15, s: 0 }
        //     )
        // );
    }
    function handleTimesTest() {
        console.log(
            "With data",
            prossessDates({ h: 7, m: 1 }, { h: 17, m: 14 }, dummyData)
        );
        console.log(
            "Without data",
            prossessDates({ h: 7, m: 11 }, { h: 17, m: 22 }, [])
        );
        console.log(
            "SideBarTimes",
            createSideBarTimes({ h: 7, m: 11 }, { h: 17, m: 22 })
        );

    }

    function createSideBarTimes(start: HoursMinutes, end: HoursMinutes) {
        const times = prossessDates(start, end, []);
        const startInMinutes = hoursMinutesToMinutes(start)

        if (times.length > 1) {
            const timeList: sidebarTime[] = [{
                start: start,
                end: minutesToHoursMinutes(startInMinutes + times[0].bufferInMinutes),
                buffer: times[0]
            }]
            for (let index = 1; index < times.length; index++) {
                const lastDateInMinutes: number = hoursMinutesToMinutes(timeList[index - 1].start);
                const currentDateInMinutes: number = lastDateInMinutes + times[index - 1].bufferInMinutes;
                timeList.push({
                    start: minutesToHoursMinutes(currentDateInMinutes),
                    end: minutesToHoursMinutes(currentDateInMinutes + times[index].bufferInMinutes),
                    buffer: times[index]
                })
            }
            return timeList;
        }
    }

    function createMainTimes(start: HoursMinutes, end: HoursMinutes, dates: Item[]) {
        const times = prossessDates(start, end, dates);
        const startInMinutes = hoursMinutesToMinutes(start)

        if (times.length > 1) {
            const timeList: sidebarTime[] = [{
                start: start,
                end: minutesToHoursMinutes(startInMinutes + times[0].bufferInMinutes),
                buffer: times[0]
            }]
            for (let index = 1; index < times.length; index++) {
                const lastDateInMinutes: number = hoursMinutesToMinutes(timeList[index - 1].start);
                const currentDateInMinutes: number = lastDateInMinutes + times[index - 1].bufferInMinutes;
                timeList.push({
                    start: minutesToHoursMinutes(currentDateInMinutes),
                    end: minutesToHoursMinutes(currentDateInMinutes + times[index].bufferInMinutes),
                    buffer: times[index]
                })
            }
            return timeList;
        }
    }
    interface sidebarTime {
        start: HoursMinutes;
        end: HoursMinutes;
        buffer: buffer;
    }
    function hoursMinutesToMinutes(time: HoursMinutes): number {
        return (time.h * 60) + time.m;
    }
    function minutesToHoursMinutes(minutes: number): HoursMinutes {
        return { h: Math.floor(minutes / 60), m: minutes % 60 };
    }
    return (
        <main className="bg-slate-900 w-full">
            <button onClick={handleTimesTest}>run times</button>
            <div className="snap-x flex overflow-scroll snap-mandatory">
                <div className="sticky left-0 w-1/6 min-w-fit bg-indigo-300 shrink-0">
                    <h1>Times</h1>
                    {
                        createSideBarTimes({ h: 7, m: 11 }, { h: 17, m: 22 })?.map(date =>
                            <div style={{ height: date.buffer.bufferInMinutes }} className="shrink-0 bg-red-200">
                                <span>{date.start.h}:{date.start.m} - {date.end.h}:{date.end.m}</span>
                            </div>
                        )
                    }
                </div>
                {
                    createMainTimes({ h: 7, m: 11 }, { h: 17, m: 22 }, dummyData)?.map(date =>
                        <div style={{ height: date.buffer.bufferInMinutes }} className="shrink-0 bg-red-200">
                            <span>{date.start.h}:{date.start.m} - {date.end.h}:{date.end.m}</span>
                        </div>
                    )
                }
                <div className="snap-center shrink-0 w-full bg-orange-500 flex place-items-end flex-col">
                    <div className="w-4/5 flex">
                        <h2 className="place-self-center">some event</h2>
                    </div>
                    {
                        createMainTimes({ h: 7, m: 11 }, { h: 17, m: 22 }, dummyData)?.map(date =>
                            <div style={{ height: date.buffer.bufferInMinutes }} className={`${date.buffer.isFull ? " bg-white ": ""} `+"w-4/5 border-1 border-solid shadow-md shadow-neutral-600"}>
                                <span>{date.start.h}:{date.start.m} - {date.end.h}:{date.end.m}</span>
                            </div>
                        )
                    }
                    {/* <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div> */}
                </div>
                <div className="snap-center shrink-0 w-full pl-3 pr-3 bg-gray-500 flex flex-col place-items-center">
                    <h2>some event</h2>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                </div>
                <div className="snap-center shrink-0 w-full pl-3 pr-3 bg-red-500 flex flex-col place-items-center">
                    <h2>some event</h2>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600 bg-white">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                    <div className="w-4/5 p-2 border-1 border-solid shadow-md shadow-neutral-600">
                        sometime
                    </div>
                </div>
            </div>
        </main>
    );
}

export default App;
