CREATE TABLE wargear (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    points INTEGER,
    typeId INTEGER
);

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Death Ray", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Doomsday Cannon", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Eldritch Lance", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauntlet of Fire", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Blaster", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Cannon", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Flayer", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Flayer Array", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Flux Arc", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gaze of Death", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Heat Ray", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Heavy Gauss Cannon", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Beamer", NULL, NULL, 10, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Caster", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Shredder", NULL, NULL, 25, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Whip", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Rod of Covenant", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Staff of Light", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Staff of the Destroyer", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Synaptic Disintegrator", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tachyon Arrow", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Cannon", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Carbine", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Destructor", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Sphere", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Transdimensional Beamer", NULL, NULL, 15, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Twin Heavy Gauss Cannon", NULL, NULL, 40, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Twin Tesla Destructor", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Automaton Claws", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Crackling Tendrils", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Empathic Obliterator", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Feeder Mandibles", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Flayer Claws", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Hyperphase Sword", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Massive Forelimbs", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Scythe of the Nightbringer", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Staff of Tomorrow", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Star-god Fists", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Vicious Claws", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Voidblade", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Voidscythe", NULL, NULL, 5, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Warscythe", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Whip Coils", NULL, NULL, 5, type.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Canoptek Cloak", NULL, NULL, 10, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Chronometron", NULL, NULL, 15, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Dispersion Shield", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Fabricator Claw Array", NULL, NULL, 5, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gloom Prism", NULL, NULL, 5, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Nebuloscope", NULL, NULL, 3, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Phylactery", NULL, NULL, 10, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Resurrection Orb", NULL, NULL, 20, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Shadowloom", NULL, NULL, 5, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Shieldvanes", NULL, NULL, 3, type.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Hyperphase Sword and Dispersion Shield", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Group";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Voidblade and particle Caster", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Group";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Catacomb Command Barge Wargear Choice", 'The Overlord may replace their staff of light with a hyperphase sword, a voidblade or a warscythe.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Catacomb Command Barge Wargear Choice 2", 'The Catacomb Command Barge may replace its gauss cannon with a tesla cannon.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Overlord Wargear Choice", 'This model may replace its staff of light with a voidscythe, a hyperphase sword, a voidblade or a warscythe.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Lord Wargear Choice", 'This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Cryptek Wargear Choice", 'This model may take either a chronometron or a Canoptek cloak.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Destroyer Lord Wargear Choice", 'This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Destroyer Lord Wargear Choice 2", 'This model may take either a phylactery or a resurrection orb.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Immortals Wargear Choice", 'The entire unit may replace their gauss blasters with tesla carbines.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Lychguard Wargear Choice", 'The entire unit may replace their warscythes with hyperphase swords and dispersion shields.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Triarch Praetorians Wargear Choice", 'The entire unit may replace their rods of covenant with voidblades and particle casters.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Triarch Stalker Wargear Choice", 'This model may replace its heat ray with a particle shredder or a twin heavy gauss cannon.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Canoptek Wraith Wargear Choice", 'Any model may take a particle caster, transdimensional beamer or whip coils.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tomb Blades Wargear Choice", 'Any model may replace its two gauss blasters with two tesla carbines or a particle beamer.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tomb Blades Wargear Choice 2", NULL, NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Annihilation Barge Wargear Choice", 'This model may replace its gauss cannon with a tesla cannon.', NULL, 0, type.id
FROM wargear_types
WHERE wargear_types.name = "Select";

