CREATE TABLE wargear (
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500),
    points INT,
    typeId INT,
    PRIMARY KEY (id)
);

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Death Ray", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Doomsday Cannon", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Eldritch Lance", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauntlet of Fire", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Blaster", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Cannon", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Flayer", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Flayer Array", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gauss Flux Arc", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gaze of Death", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Heat Ray", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Heavy Gauss Cannon", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Beamer", NULL, 10, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Caster", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Shredder", NULL, 25, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Particle Whip", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Rod of Covenant", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Staff of Light", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Staff of the Destroyer", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Synaptic Disintegrator", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tachyon Arrow", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Cannon", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Carbine", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Destructor", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tesla Sphere", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Transdimensional Beamer", NULL, 15, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Twin Heavy Gauss Cannon", NULL, 40, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Twin Tesla Destructor", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Automaton Claws", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Crackling Tendrils", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Empathic Obliterator", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Feeder Mandibles", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Flayer Claws", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Hyperphase Sword", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Massive Forelimbs", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Scythe of the Nightbringer", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Staff of Tomorrow", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Star-god Fists", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Vicious Claws", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Voidblade", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Voidscythe", NULL, 5, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Warscythe", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Whip Coils", NULL, 5, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Weapon";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Canoptek Cloak", NULL, 10, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Chronometron", NULL, 15, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Dispersion Shield", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Fabricator Claw Array", NULL, 5, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Gloom Prism", NULL, 5, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Nebuloscope", NULL, 3, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Phylactery", NULL, 10, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Resurrection Orb", NULL, 20, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Shadowloom", NULL, 5, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Shieldvanes", NULL, 3, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Ability";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Hyperphase Sword and Dispersion Shield", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Group";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Voidblade and particle Caster", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Group";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Catacomb Command Barge Wargear Choice", 'The Overlord may replace their staff of light with a hyperphase sword, a voidblade or a warscythe.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Catacomb Command Barge Wargear Choice 2", 'The Catacomb Command Barge may replace its gauss cannon with a tesla cannon.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Overlord Wargear Choice", 'This model may replace its staff of light with a voidscythe, a hyperphase sword, a voidblade or a warscythe.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Lord Wargear Choice", 'This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Cryptek Wargear Choice", 'This model may take either a chronometron or a Canoptek cloak.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Destroyer Lord Wargear Choice", 'This model may replace its staff of light with a hyperphase sword, a voidblade or a warscythe.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Destroyer Lord Wargear Choice 2", 'This model may take either a phylactery or a resurrection orb.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Immortals Wargear Choice", 'The entire unit may replace their gauss blasters with tesla carbines.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Lychguard Wargear Choice", 'The entire unit may replace their warscythes with hyperphase swords and dispersion shields.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Triarch Praetorians Wargear Choice", 'The entire unit may replace their rods of covenant with voidblades and particle casters.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Triarch Stalker Wargear Choice", 'This model may replace its heat ray with a particle shredder or a twin heavy gauss cannon.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Canoptek Wraith Wargear Choice", 'Any model may take a particle caster, transdimensional beamer or whip coils.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tomb Blades Wargear Choice", 'Any model may replace its two gauss blasters with two tesla carbines or a particle beamer.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Tomb Blades Wargear Choice 2", NULL, 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

INSERT INTO wargear
    (name, description, points, typeId)
SELECT "Annihilation Barge Wargear Choice", 'This model may replace its gauss cannon with a tesla cannon.', 0, wargear_types.id
FROM wargear_types
WHERE wargear_types.name = "Select";

