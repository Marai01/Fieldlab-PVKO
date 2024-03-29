import React, {
  createContext,
  DetailedHTMLProps,
  FC,
  HTMLAttributes,
  ReactDOM,
  RefObject,
  useContext,
  useEffect,
  useRef,
  useState,
} from "react";
import { AiOutlineArrowLeft, AiOutlineArrowRight } from "react-icons/ai";
// import { dummyEvents, dummyRooms } from "./data";
import {
  Block,
  Event,
  HourMinute,
  Rooms,
  Time,
  TimeBlock,
  Room as RoomType,
  EventJSON,
  RoomJSON,
  RoomsJSON,
} from "./type";
import Room from "./Room";
import SidBar from "./SideBar";
import { ThemeProvider } from "./ThemeProvider";
import { MetaDataProvider, useMetaDataContext } from "./MetaDataProvider";
import EventModal from "./EventModal";

export const Schedule: FC = () => {
  const sidebarRef = useRef<RefObject<HTMLDivElement>>();
  const [slide, setSlide] = useState<number>(0);
  function handleNext() {
    let slideId = slide + 1;
    if (!data) {
      return;
    }

    if (slideId > data.length - 1) {
      slideId = 0;
    }
    document
      .getElementById(`slide-${slideId}`)
      ?.scrollIntoView({ behavior: "smooth", block: "nearest" });
    setSlide(slideId);
  }
  function handleLast() {
    let slideId = slide - 1;
    if (!data) {
      return;
    }
    if (slide < 0) {
      slideId = data.length - 1;
    }
    document
      .getElementById(`slide-${slideId}`)
      ?.scrollIntoView({ behavior: "smooth" });
    setSlide(slideId);
  }
  const dayRange: Time = {
    start: {
      h: 13,
      m: 0,
    },
    end: {
      h: 20,
      m: 0,
    },
  };

  // const blocks = numberRangeIntoBlocks(hourMinuteToMinutes(dayRange.start), hourMinuteToMinutes(dayRange.end), 60);

  function handleTimesTest() {}

  function handleOverlayBlockClick(event: Event) {}

  const { data, loading } = useFetch("/data.php");

  const { sizeMultiplier, setSizeMultiplier } = useMetaDataContext();

  const [eventModalData, setEventModalData] = useState<null | Event>(null);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (data === null) {
    return <div>Unable to load data</div>;
  }

  return (
    <ThemeProvider>
      <MetaDataProvider>
        {/* <button onClick={getData}>Test data</button> */}
        {eventModalData && (
          <EventModal
            onClose={() => setEventModalData(null)}
            data={eventModalData}
          />
        )}
        <img
          className="sticky top-0 max-h-80 z-30 md:hidden"
          src="header.jpg"
          alt="header"
        />
        <div className="bg-[url('/header.jpg')] hidden h-80 bg-slate-600 md:block bg-cover"></div>
        <div className="snap-x text-[#fff6e0] flex overflow-x-scroll overflow-y-hidden snap-mandatory ">
          <div className="sticky z-20 left-0 w-1/5 bg-[#6abca5] shrink-0">
            <h1>Tijden</h1>
            <SidBar range={dayRange} />
          </div>
          <div
            className="fixed top-1/2 right-0 z-40"
            onClick={() => {
              handleNext();
            }}
          >
            <AiOutlineArrowRight className="text-6xl" />
          </div>
          {/* <div
            className="fixed left-1/4 top-1/2 z-40"
            onClick={() => {
              handleLast();
            }}
          >
            <AiOutlineArrowLeft className="text-6xl" />
          </div> */}
          {data.map((room, index) => (
            <div
              id={`slide-${index}`}
              key={room.title}
              className="scroll-smooth snap-center shrink-0 w-full bg-[#fef6e0] flex place-items-end flex-col"
            >
              <div className="w-4/5 flex">
                <h2 className="place-self-center bg-[#6abca5] w-full">
                  {room.title}
                </h2>
              </div>
              {/* dayContainer */}
              <div className="w-4/5 relative bg-[#6abca5]">
                <Room
                  events={room.events}
                  range={dayRange}
                  onOverlayBlockClick={setEventModalData}
                />
              </div>
            </div>
          ))}
        </div>
      </MetaDataProvider>
    </ThemeProvider>
  );
};

function useFetch(url: string) {
  const [data, setData] = useState<null | Rooms>(null);
  const [loading, setLoading] = useState(true);

  async function fetchData() {
    const response = await fetch(url);
    const json = await response.json();
    let parsedJson: RoomsJSON = [];
    for (let key in json) {
      parsedJson.push(json[key]);
    }
    const data: Rooms = parsedJson.map((room: RoomJSON) => {
      return {
        ...room,
        events: room.events.map((event: EventJSON) => {
          const time = event.time;
          return {
            ...event,
            time: {
              start: {
                h: parseInt(time.start.h),
                m: parseInt(time.start.m),
              },
              end: {
                h: parseInt(time.end.h),
                m: parseInt(time.end.m),
              },
            },
          };
        }),
      };
    });

    // const data = dummyRooms;

    console.log(data);
    setData(data);
    setLoading(false);
  }

  useEffect(() => {
    fetchData();
  }, [url]);

  return { data, loading };
}
