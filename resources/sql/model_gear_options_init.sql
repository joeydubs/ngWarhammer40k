CREATE TABLE model_gear_options
(
    id INT AUTO_INCREMENT,
    modelId INT,
    wargearId INT,
    quantity INT,
    isRequired BOOLEAN,
    isOption BOOLEAN,
    description VARCHAR(500),
    unitLimit INT,
    PRIMARY KEY (id)
);

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Imotekh the Stormlord"
    AND wargear.name = "Gauntlet of Fire";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Imotekh the Stormlord"
    AND wargear.name = "Staff of the Destroyer";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Nemesor Zahndrekh"
    AND wargear.name = "Staff of Light";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Vargard Obyron"
    AND wargear.name = "Warscythe";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Illuminor Szeras"
    AND wargear.name = "Eldritch Lance";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Orikan the Diviner"
    AND wargear.name = "Staff of Tomorrow";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Anrakyr the Traveller"
    AND wargear.name = "Tachyon Arrow";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Anrakyr the Traveller"
    AND wargear.name = "Warscythe";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Trazyn the Infinite"
    AND wargear.name = "Empathic Obliterator";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'The Overlord may replace their staff of light with a hyperphase sword, a voidblade or a warscythe.', 0
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
    AND wargear.name = "Catacomb Command Barge Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'The Overlord may take a resurrection orb.', 0
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
    AND wargear.name = "Resurrection Orb";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'The Catacomb Command Barge may replace its gauss cannon with a tesla cannon.', 0
FROM models, wargear
WHERE models.name = "Catacomb Command Barge"
    AND wargear.name = "Catacomb Command Barge Wargear Choice 2";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may replace its staff of light with a voidscythe, a hyperphase sword, a voidblade or a warscythe.', 0
FROM models, wargear
WHERE models.name = "Overlord"
    AND wargear.name = "Overlord Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'This model may take a resurrection orb.', 0
FROM models, wargear
WHERE models.name = "Overlord"
    AND wargear.name = "Resurrection Orb";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe.', 0
FROM models, wargear
WHERE models.name = "Lord"
    AND wargear.name = "Lord Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'This model may take a resurrection orb.', 0
FROM models, wargear
WHERE models.name = "Lord"
    AND wargear.name = "Resurrection Orb";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Cryptek"
    AND wargear.name = "Staff of Light";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may take either a chronometron or a Canoptek cloak.', 0
FROM models, wargear
WHERE models.name = "Cryptek"
    AND wargear.name = "Cryptek Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe.', 0
FROM models, wargear
WHERE models.name = "Destroyer Lord"
    AND wargear.name = "Destroyer Lord Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may take either a phylactery or a resurrection orb.', 0
FROM models, wargear
WHERE models.name = "Destroyer Lord"
    AND wargear.name = "Destroyer Lord Wargear Choice 2";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Necron Warrior"
    AND wargear.name = "Gauss Flayer";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'The entire unit may replace their gauss blasters with tesla carbines.', 0
FROM models, wargear
WHERE models.name = "Immortal"
    AND wargear.name = "Immortals Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'The entire unit may replace their warscythes with hyperphase swords and dispersion shields.', 0
FROM models, wargear
WHERE models.name = "Lychguard"
    AND wargear.name = "Lychguard Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Deathmarks"
    AND wargear.name = "Synaptic Disintegrator";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Flayed One"
    AND wargear.name = "Flayer Claws";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'The entire unit may replace their rods of covenant with voidblades and particle casters.', 0
FROM models, wargear
WHERE models.name = "Triarch Praetorian"
    AND wargear.name = "Triarch Praetorians Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may replace its heat ray with a particle shredder or a twin heavy gauss cannon.', 0
FROM models, wargear
WHERE models.name = "Triarch Stalker"
    AND wargear.name = "Triarch Stalker Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Triarch Stalker"
    AND wargear.name = "Massive Forelimbs";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "C'tan Shard of the Deceiver"
    AND wargear.name = "Star-god Fists";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "C'tan Shard of the Nightbringer"
    AND wargear.name = "Gaze of Death";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "C'tan Shard of the Nightbringer"
    AND wargear.name = "Scythe of the Nightbringer";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'Any model may take a particle caster, transdimensional beamer or whip coils.', 0
FROM models, wargear
WHERE models.name = "Canoptek Wraith"
    AND wargear.name = "Canoptek Wraith Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Canoptek Wraith"
    AND wargear.name = "Vicious Claws";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Canoptek Scarab Swarm"
    AND wargear.name = "Feeder Mandibles";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'Any model may replace its two gauss blasters with two tesla carbines or a particle beamer.', 0
FROM models, wargear
WHERE models.name = "Tomb Blades"
    AND wargear.name = "Tomb Blades Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'Any model may take shieldvanes.', 0
FROM models, wargear
WHERE models.name = "Tomb Blades"
    AND wargear.name = "Shieldvanes";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'Any model may take a nebuloscope or a shadowloom.', 0
FROM models, wargear
WHERE models.name = "Tomb Blades"
    AND wargear.name = "Tomb Blades Wargear Choice 2";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Destroyer"
    AND wargear.name = "Gauss Cannon";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Heavy Destroyer"
    AND wargear.name = "Heavy Gauss Cannon";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
    AND wargear.name = "Automaton Claws";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'Any model may take a fabricator claw array.', 0
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
    AND wargear.name = "Fabricator Claw Array";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, FALSE, TRUE, 'Any model may take a gloom prism.', 0
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
    AND wargear.name = "Gloom Prism";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 2, FALSE, TRUE, 'Any model may take two particle beamers.', 0
FROM models, wargear
WHERE models.name = "Canoptek Spyders"
    AND wargear.name = "Particle Beamer";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 4, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Monolith"
    AND wargear.name = "Gauss Flux Arc";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Monolith"
    AND wargear.name = "Particle Whip";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, TRUE, 'This model may replace its gauss cannon with a tesla cannon.', 0
FROM models, wargear
WHERE models.name = "Annihilation Barge"
    AND wargear.name = "Annihilation Barge Wargear Choice";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Annihilation Barge"
    AND wargear.name = "Twin Tesla Destructor";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Doomsday Ark"
    AND wargear.name = "Doomsday cannon";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 2, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Doomsday Ark"
    AND wargear.name = "Gauss Flayer Array";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Transcendent C'tan"
    AND wargear.name = "Crackling Tendrils";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 2, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Ghost Ark"
    AND wargear.name = "Gauss Flayer Array";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 1, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Doom Scythe"
    AND wargear.name = "Death Ray";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 2, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Doom Scythe"
    AND wargear.name = "Tesla Destructor";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 2, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Night Scythe"
    AND wargear.name = "Tesla Destructor";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 4, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Obelisk"
    AND wargear.name = "Tesla Sphere";

INSERT INTO model_gear_options
    (modelId, wargearId, quantity, isRequired, isOption, description, unitLimit)
SELECT models.id, wargear.id, 4, TRUE, FALSE, '', 0
FROM models, wargear
WHERE models.name = "Tesseract Vault"
    AND wargear.name = "Tesla Sphere";