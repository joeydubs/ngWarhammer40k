CREATE TABLE subfactions (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    factionId INT,
    PRIMARY KEY (id)
);

INSERT INTO subfactions
    (name, factionId)
SELECT 'Mephrit', factions.id
FROM factions
WHERE factions.name = 'Necrons';

INSERT INTO subfactions
    (name, factionId)
SELECT 'Nephrekh', factions.id
FROM factions
WHERE factions.name = 'Necrons';

INSERT INTO subfactions
    (name, factionId)
SELECT 'Nihilakh', factions.id
FROM factions
WHERE factions.name = 'Necrons';

INSERT INTO subfactions
    (name, factionId)
SELECT 'Novokh', factions.id
FROM factions
WHERE factions.name = 'Necrons';

INSERT INTO subfactions
    (name, factionId)
SELECT 'Sautekh', factions.id
FROM factions
WHERE factions.name = 'Necrons';