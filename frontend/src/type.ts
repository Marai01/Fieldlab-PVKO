export interface HourMinute {
  h: number;
  m: number;
}

export interface Time {
  start: HourMinute;
  end: HourMinute;
}

export interface Event {
  title: string;
  speaker: string;
  description: string;
  time: Time;
  session: number;
}

export interface EventJSON {
  title: string;
  speaker: string;
  description: string;
  time: TimeJSON;
  session: number;
}

export interface HourMinuteJSON {
  h: string;
  m: string;
}

export interface TimeJSON {
  start: HourMinuteJSON;
  end: HourMinuteJSON;
}

export interface RoomJSON {
  events: EventJSON[];
  title: string;
}

export interface Room {
  events: Event[];
  title: string;
}

export type Rooms = Room[];

export type RoomsJSON = RoomJSON[];

export interface Block<T> {
  data: T;
  offset?: number;
  size: number;
}

export interface TimeBlock {
  block: number;
  time: Time;
}

type ID = { id: "A"; idb: "B" } | { id: "C"; idb: "D" };

const id: ID = { id: "C", idb: "D" };
