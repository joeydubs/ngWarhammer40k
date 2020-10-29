export interface Faction {
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
  slots: {string: DetachmentSlot}
}

export interface DetachmentSlot {
  detachmentId: number,
  roleId: number,
  min: number,
  max: number
}