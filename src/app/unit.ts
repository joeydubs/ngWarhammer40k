export interface UnitStats {
  modelName: string,
  hasWoundTrack: boolean,
  statId: number,
  statName: string,
  m: string,
  ws: string,
  bs: string,
  s: string,
  t: string,
  w: string,
  a: string,
  ld: string,
  sv: string,
}

export interface UnitWoundTrack {
  remainingW: string,
  char1name: string,
  char2name: string,
  char3name: string,
  char1value: string,
  char2value: string,
  char3value: string,
}