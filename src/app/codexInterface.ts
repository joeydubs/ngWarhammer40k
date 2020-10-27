export interface Faction {
  id: number,
  name: string
}

export interface Detachment {
  id: number,
  name: string,
  commandCost: number,
  restrictions: string,
  commandBenefits: string
  dedicatedTransports: boolean
}