CREATE TABLE detachments
(
  id INT AUTO_INCREMENT,
  name VARCHAR(50),
  commandCost INT,
  restrictions VARCHAR(500),
  commandBenefits VARCHAR(500),
  dedicatedTransports INT,
  PRIMARY KEY (id)
);

CREATE TABLE detachment_slots
(
  detachmentId INT,
  roleId INT,
  min INT,
  max INT
);

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Patrol Detachment',
    2,
    'All units must be from the same Faction. This Detachment cannot include any Understrength units.',
    '+2 Command points if you Warlord is part of this Detachment.',
    1
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 2
FROM detachments, roles
WHERE detachments.name = 'Patrol Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 3
FROM detachments, roles
WHERE detachments.name = 'Patrol Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Patrol Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Patrol Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Patrol Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Patrol Detachment'
  AND roles.name = 'Flyer';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Battalion Detachment',
    3,
    'All units must be from the same Faction. This Detachment cannot include any Understrength units.',
    '+3 Command points if you Warlord is part of this Detachment.',
    1
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 2, 2
FROM detachments, roles
WHERE detachments.name = 'Battalion Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 6
FROM detachments, roles
WHERE detachments.name = 'Battalion Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 6
FROM detachments, roles
WHERE detachments.name = 'Battalion Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 3
FROM detachments, roles
WHERE detachments.name = 'Battalion Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 3
FROM detachments, roles
WHERE detachments.name = 'Battalion Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Battalion Detachment'
  AND roles.name = 'Flyer';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Brigade Detachment',
    4,
    'All units must be from the same Faction. This Detachment cannot include any Understrength units.',
    '+4 Command points if you Warlord is part of this Detachment.',
    1
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 5
FROM detachments, roles
WHERE detachments.name = 'Brigade Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 6, 12
FROM detachments, roles
WHERE detachments.name = 'Brigade Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 8
FROM detachments, roles
WHERE detachments.name = 'Brigade Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 5
FROM detachments, roles
WHERE detachments.name = 'Brigade Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 5
FROM detachments, roles
WHERE detachments.name = 'Brigade Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Brigade Detachment'
  AND roles.name = 'Flyer';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Vanguard Detachment',
    3,
    'All units must be from the same Faction. This Detachment cannot include any Understrength units.',
    'None.',
    1
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 2
FROM detachments, roles
WHERE detachments.name = 'Vanguard Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 3
FROM detachments, roles
WHERE detachments.name = 'Vanguard Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 6
FROM detachments, roles
WHERE detachments.name = 'Vanguard Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Vanguard Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Vanguard Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Vanguard Detachment'
  AND roles.name = 'Flyer';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Spearhead Detachment',
    3,
    'All units must be from the same Faction. This Detachment cannot include any Understrength units.',
    'None.',
    1
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 2
FROM detachments, roles
WHERE detachments.name = 'Spearhead Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 3
FROM detachments, roles
WHERE detachments.name = 'Spearhead Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Spearhead Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Spearhead Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 6
FROM detachments, roles
WHERE detachments.name = 'Spearhead Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Spearhead Detachment'
  AND roles.name = 'Flyer';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Outrider Detachment',
    3,
    'All units must be from the same Faction. This Detachment cannot include any Understrength units.',
    'None.',
    1
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 2
FROM detachments, roles
WHERE detachments.name = 'Outrider Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 3
FROM detachments, roles
WHERE detachments.name = 'Outrider Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Outrider Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 6
FROM detachments, roles
WHERE detachments.name = 'Outrider Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Outrider Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 2
FROM detachments, roles
WHERE detachments.name = 'Outrider Detachment'
  AND roles.name = 'Flyer';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Supreme Command Detachment',
    0,
    'You can only include one Supreme Command Detachment in your army. This Detachment can only include one Primarch, Daemon Primarch, or Supreme Commander unit, and this unit must be selected as your Warlord.',
    'Select one of the following: +4 Command points if your army includes any Brigade Detachments; +3 Command points if your army includes any Battalion Detachments; +2 Command points if your army includes any Patrol Detachments.',
    0
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Supreme Command Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Supreme Command Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Super-Heavy Detachment',
    3,
    'To include this Detachment in your army, you must spend either 3 or 6 Command points. If you only spend 3 Command points then you cannot include any Itianic units in this Detachment. All units must be from the same Faction.',
    'None.',
    0
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 3, 5
FROM detachments, roles
WHERE detachments.name = 'Super-Heavy Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Super-Heavy Auxiliary Detachment',
    3,
    'None.',
    'None.',
    0
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 1
FROM detachments, roles
WHERE detachments.name = 'Super-Heavy Auxiliary Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Fortification Network',
    1,
    'You can only include one Fortification Network Detachment in your army. Your Warlord cannot be a unit in this Detachment.',
    'None.',
    0
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 1, 3
FROM detachments, roles
WHERE detachments.name = 'Fortification Network'
  AND roles.name = 'Fortification';

INSERT INTO detachments
  (name, commandCost, restrictions, commandBenefits, dedicatedTransports)
VALUES
  (
    'Auxiliary Support Detachment',
    2,
    'This Detachment can only include one unit.',
    'None.',
    0
);

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Auxiliary Support Detachment'
  AND roles.name = 'HQ';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Auxiliary Support Detachment'
  AND roles.name = 'Troops';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Auxiliary Support Detachment'
  AND roles.name = 'Elites';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Auxiliary Support Detachment'
  AND roles.name = 'Fast Attack';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Auxiliary Support Detachment'
  AND roles.name = 'Heavy Support';

INSERT INTO detachment_slots
  (detachmentId, roleId, min, max)
SELECT detachments.id, roles.id, 0, 1
FROM detachments, roles
WHERE detachments.name = 'Auxiliary Support Detachment'
  AND roles.name = 'Flyer';