export interface Faction {
  id: number,
  name: string
}

export interface Subfaction {
  id: number,
  name: string,
  faction: Faction
}

export interface Keyword {
  id: number,
  name: string
}

export interface FactionKeyword {
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
  role: Role,
  power: number,
  faction: Faction,
  keywords: Keyword[],
  factionKeywords: FactionKeyword[],
  abilities: Ability[]
}

export interface Model {
  id: number,
  name: string,
  hasOptions: boolean,
  points: number,
  stats: ModelStats[],
  wargear: Wargear[],
  wargearOptions: string[]
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

export interface Ability {
  id: number,
  name: string,
  ability: string
}

export interface Wargear {
  id: number,
  name: string,
  description: string,
  points: number,
  typeId: number,
  typeName: string,
  stats: WargearStats[]
}

export interface WargearStats {
  id: number,
  wargearId: number,
  gearProfile: string,
  gearRange: string,
  gearType: string,
  gearStrength: string,
  gearArmorPen: number,
  gearDamage: string,
  gearAbilities: string
}