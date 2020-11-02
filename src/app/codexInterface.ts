export interface Faction {
  id: number,
  name: string
}

export interface Subfaction {
  id: number,
  name: string,
  faction: Faction
}

export interface Keywords {
  id: number,
  name: string
}

export interface FactionKeywords {
  id: number,
  name: string
}

export interface Role {
  id: number,
  name: string
}

export interface Detachment {
  id: number,
  name: string,
  commandCost: number,
  restrictions: string,
  commandBenefits: string,
  dedicatedTransports: boolean,
  slots: { string: DetachmentSlot }
}

export interface DetachmentSlot {
  detachmentId: number,
  roleId: number,
  min: number,
  max: number
}

export interface Unit {
  id: number,
  name: string,
  description: string,
  options: string,
  role: Role,
  power: number,
  faction: Faction,
  keywords: Keywords[],
  factionKeywords: FactionKeywords[]
}

export interface Model {
  id: number,
  name: string,
  hasWoundTrack: boolean,
  points: number,
  stats: ModelStats[],
  woundTrack: WoundTrack[]
}

export interface ModelStats {
  id: number,
  modelId: number,
  profileName: string,
  move: string,
  weapon: string,
  ballistic: string,
  strength: string,
  toughness: string,
  wounds: string,
  attacks: string,
  leadership: string,
  save: string
}

export interface WoundTrack {
  id: number,
  modelId: number,
  tier: number,
  wounds: string,
  char1name: string,
  char1value: string,
  char2name: string,
  char2value: string,
  char3name: string,
  char3value: string
}