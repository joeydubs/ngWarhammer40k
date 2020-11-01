export interface Faction {
  id: number,
  name: string
}

export interface Subfaction {
  id: number,
  name: string,
  faction: Faction
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
  slots: {string: DetachmentSlot}
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
  faction: Faction
}