import * as React from "react";
import { Event } from "./type";
import { createPortal } from "react-dom";
import { printTime } from "./helper";

function EventModal({ data, onClose }: { data: Event; onClose: () => void }) {
  return (
    <>
      <div className="fixed z-50 top-0 left-0 h-screen w-screen backdrop-blur-sm bg-transparent flex place-content-center">
        <div className="bg-white container rounded-lg overflow-y-scroll p-20">
          {/* <button
            className="border-1 p-2 border-black border-solid bg-slate-50 pr-4 pl-4"
            onClick={onClose}
          >
            Close
          </button> */}
          <h1 className="text-xl mb-2">{data.title}</h1>
          <p>
            {data.description.length > 0 ? (
              data.description
            ) : (
              <em>Geen bescrijving van toepassing</em>
            )}
          </p>
          <br />
          <em>{data.speaker}</em>
          <br />
          <em>{printTime(data.time)}</em> <br />
          <button
            className="border-1 p-2 border-black border-solid bg-[#084c3c] text-white pr-4 pl-4"
            onClick={onClose}
          >
            Close
          </button>
        </div>
      </div>
    </>
  );
}

export default EventModal;
