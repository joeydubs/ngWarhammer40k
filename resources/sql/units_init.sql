CREATE TABLE units
(
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    description VARCHAR(500),
    roleId INT,
    power INT,
    factionId INT,
    PRIMARY KEY (id)
);

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Imotekh the Stormlord",
    "Imotekh the Stormlord is a single model armed with the Staff of the Destroyer and a gauntlet of fire. Only one of this model may be included in your army.",
    roles.id,
    10,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Nemesor Zahndrekh",
    "Nemesor Zahndrekh is a single model armed with a staff of light. Only one of this model may be included in your army.",
    roles.id,
    9,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Vargard Obyron",
    "Vargard Obyron is a single model armed with a warscythe. Only one of this model may be included in your army.",
    roles.id,
    7,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Illuminor Szeras",
    "Illuminor Szeras is a single model armed with the Eldritch Lance. Only one of this model may be included in your army.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Orikan the Diviner",
    "Orikan the Diviner is a single model armed with the Staff of Tomorrow. Only one of this model may be included in your army.",
    roles.id,
    6,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Anrakyr the Traveller",
    "Anrakyr the Traveller is a single model armed with a tachyon arrow and warscythe. Only one of this model may be included in your army.",
    roles.id,
    9,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Trazyn the Infinite",
    "Trazyn the Infinite is a single model armed with the Empathic Obliterator. Only one of this model may be included in your army.",
    roles.id,
    5,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Catacomb Command Barge",
    "A Catacomb Command Barge is a single model equipped with a gauss cannon. It is ridden by an Overlord armed with a staff of light.",
    roles.id,
    9,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Overlord",
    "An Overlord is a single model armed with a staff of light.",
    roles.id,
    6,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Lord",
    "A Lord is a single model armed with a staff of light.",
    roles.id,
    5,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Cryptek",
    "A Cryptek is a single model armed with a staff of light.",
    roles.id,
    5,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Destroyer Lord",
    "A Destroyer Lord is a single model armed with a staff of light.",
    roles.id,
    7,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "HQ";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Necron Warriors",
    "This unit contains 10 Necron Warriors. It may include up to 10 additional Necron Warriors (Power Rating +6). Each model is armed with a gauss flayer.",
    roles.id,
    6,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Troops";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Immortals",
    "This unit contains 5 Immortals. It can include up to 5 additional Immortals (Power Rating +4). Each model is armed with a gauss blaster.",
    roles.id,
    4,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Troops";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Lychguard",
    "This unit contains 5 Lychguard. It can include up to 5 additional Lychguard (Power Rating +8). Each model is armed with a warscythe.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Deathmarks",
    "This unit contains 5 Deathmarks. It can include up to 5 additional Deathmarks (Power Rating +4). Each model is armed with a synaptic disintegrator.",
    roles.id,
    5,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Flayed Ones",
    "This unit contains 5 Flayed Ones. It can include up to 5 additional Flayed Ones (Power Rating +4), up to 10 additional Flayed Ones (Power Rating +8) or up to 15 additional Flayed Ones (Power Rating +12). Each model attacks with their flayer claws.",
    roles.id,
    4,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Triarch Praetorians",
    "This unit contains 5 Triarch Praetorians. It can include up to 5 additional Triarch Praetorians (Power Rating +8). Each model is armed with a rod of covenant.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Triarch Stalker",
    "A Triarch Stalker is a single model equipped with a heat ray and massive forelimbs.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "C'tan Shard of the Deceiver",
    "The C’tan Shard of the Deceiver is a single model that attacks with its star-god fists. Only one of this model may be included in your army.",
    roles.id,
    12,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "C'tan Shard of the Nightbringer",
    "The C’tan Shard of the Nightbringer is a single model that attacks with a gaze of death and the Scythe of the Nightbringer. Only one of this model may be included in your army.",
    roles.id,
    12,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Elites";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Canoptek Wraiths",
    "This unit contains 3 Canoptek Wraiths. It may include up to 3 additional Canoptek Wraiths (Power Rating +9). Each model is equipped with vicious claws.",
    roles.id,
    9,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Fast Attack";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Canoptek Scarabs",
    "This unit contains 3 Canoptek Scarab Swarms. It may include up to 3 additional Canoptek Scarab Swarms (Power Rating +2) or up to 6 additional Canoptek Scarab Swarms (Power Rating +4). Each swarm is equipped with feeder mandibles.",
    roles.id,
    2,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Fast Attack";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Tomb Blades",
    "This unit contains 3 Tomb Blades. It can include up to 3 additional Tomb Blades (Power Rating +5) or up to 6 additional Tomb Blades (Power Rating +9). Each model is equipped with two gauss blasters.",
    roles.id,
    5,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Fast Attack";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Destroyers",
    "This unit contains 1 Destroyer. It can include up to 5 additional Destroyers (Power Rating +3 per model). If the unit contains at least three models, a Heavy Destroyer can take the place of a Destroyer. Each Destroyer is armed with a gauss cannon. The Heavy Destroyer is armed with a heavy gauss cannon.",
    roles.id,
    3,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Fast Attack";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Heavy Destroyers",
    "This unit contains 1 Heavy Destroyer. It may include 1 additional Heavy Destroyer (Power Rating +3) or 2 additional Heavy Destroyers (Power Rating +6). Each model is armed with a heavy gauss cannon.",
    roles.id,
    3,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Heavy Support";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Canoptek Spyders",
    "This unit contains 1 Canoptek Spyder. It may include 1 additional Canoptek Spyder (Power Rating +4) or 2 additional Canoptek Spyders (Power Rating +8). Each model is equipped with automaton claws.",
    roles.id,
    4,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Heavy Support";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Monolith",
    "A Monolith is a single model equipped with four gauss flux arcs and a particle whip.",
    roles.id,
    19,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Heavy Support";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Annihilation Barge",
    "An Annihilation Barge is a single model equipped with a gauss cannon and a twin tesla destructor.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Heavy Support";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Doomsday Ark",
    "A Doomsday Ark is a single model equipped with a doomsday cannon and two gauss flayer arrays.",
    roles.id,
    10,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Heavy Support";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Transcendent C'tan",
    "A Transcendent C’tan is a single model that attacks with its crackling tendrils.",
    roles.id,
    12,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Heavy Support";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Ghost Ark",
    "A Ghost Ark is a single model equipped with two gauss flayer arrays.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Transport";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Doom Scythe",
    "A Doom Scythe is a single model equipped with a death ray and two tesla destructors.",
    roles.id,
    11,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Flyer";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Night Scythe",
    "A Night Scythe is a single model equipped with two tesla destructors.",
    roles.id,
    8,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Flyer";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Obelisk",
    "An Obelisk is a single model equipped with four tesla spheres.",
    roles.id,
    22,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Lord of War";

INSERT INTO units
    (name, description, roleId, power, factionId)
SELECT
    "Tesseract Vault",
    "A Tesseract Vault is a single model equipped with four tesla spheres.",
    roles.id,
    25,
    factions.id
FROM factions, roles
WHERE factions.name = "Necrons"
    AND roles.name = "Lord of War";