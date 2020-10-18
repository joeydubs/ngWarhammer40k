CREATE TABLE wargear_join
(
  wargearId INT,
  targetGearId INT,
  quantity INT,
  isDefault BOOLEAN
);

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Hyperphase Sword and Dispersion Shield'
  AND w2.name = 'Hyperphase Sword';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Hyperphase Sword and Dispersion Shield'
  AND w2.name = 'Dispersion Shield';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Voidblade and Partical Caster'
  AND w2.name = 'Voidblade';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Voidblade and Partical Caster'
  AND w2.name = 'Partical Caster';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Catacomb Command Barge Wargear Choice'
  AND w2.name = 'Staff of Light';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Catacomb Command Barge Wargear Choice'
  AND w2.name = 'Hyperphase Sword';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Catacomb Command Barge Wargear Choice'
  AND w2.name = 'Voidblade';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Catacomb Command Barge Wargear Choice'
  AND w2.name = 'Warscythe';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Catacomb Command Barge Wargear Choice 2'
  AND w2.name = 'Gauss Cannon';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Catacomb Command Barge Wargear Choice 2'
  AND w2.name = 'Tesla Cannon';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Overlord Wargear Choice'
  AND w2.name = 'Staff of Light';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Overlord Wargear Choice'
  AND w2.name = 'Voidscythe';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Overlord Wargear Choice'
  AND w2.name = 'Hyperphase Sword';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Overlord Wargear Choice'
  AND w2.name = 'Voidblade';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Overlord Wargear Choice'
  AND w2.name = 'Warscythe';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Lord Wargear Choice'
  AND w2.name = 'Staff of Light';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Lord Wargear Choice'
  AND w2.name = 'Hyperphase Sword';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Lord Wargear Choice'
  AND w2.name = 'Voidblade';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Lord Wargear Choice'
  AND w2.name = 'Warscythe';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Cryptek Wargear Choice'
  AND w2.name = 'Chronometron';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Cryptek Wargear Choice'
  AND w2.name = 'Canoptek Cloak';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Destroyer Lord Wargear Choice'
  AND w2.name = 'Staff of Light';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Destroyer Lord Wargear Choice'
  AND w2.name = 'Hyperphase Sword';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Destroyer Lord Wargear Choice'
  AND w2.name = 'Voidblade';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Destroyer Lord Wargear Choice'
  AND w2.name = 'Warscythe';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Destroyer Lord Wargear Choice 2'
  AND w2.name = 'Phylactery';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Destroyer Lord Wargear Choice 2'
  AND w2.name = 'Resurrection Orb';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Immortals Wargear Choice'
  AND w2.name = 'Gauss Blasters';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Immortals Wargear Choice'
  AND w2.name = 'Tesla Carbines';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Lychguard Wargear Choice'
  AND w2.name = 'Warscythes';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Lychguard Wargear Choice'
  AND w2.name = 'Hyperphase Sword and Dispersion Shield';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Triarch Praetorians Wargear Choice'
  AND w2.name = 'Rod of Covenant';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Triarch Praetorians Wargear Choice'
  AND w2.name = 'Voidblade and Partical Caster';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Triarch Stalker Wargear Choice'
  AND w2.name = 'Heat Ray';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Triarch Stalker Wargear Choice'
  AND w2.name = 'Particle Shredder';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Triarch Stalker Wargear Choice'
  AND w2.name = 'Twin Heavy Gauss Cannon';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Canoptek Wraith Wargear Choice'
  AND w2.name = 'Particle Caster';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Canoptek Wraith Wargear Choice'
  AND w2.name = 'Transdimensional Beamer';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Canoptek Wraith Wargear Choice'
  AND w2.name = 'Whip Coils';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 2, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Tomb Blades Wargear Choice'
  AND w2.name = 'Gauss Blaster';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 2, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Tomb Blades Wargear Choice'
  AND w2.name = 'Tesla Carbine';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Tomb Blades Wargear Choice'
  AND w2.name = 'Particle Beamer';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Tomb Blades Wargear Choice 2'
  AND w2.name = 'Nebuloscope';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Tomb Blades Wargear Choice 2'
  AND w2.name = 'Shadowloom';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, TRUE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Annihilation Barge Wargear Choice'
  AND w2.name = 'Gauss Cannon';

INSERT INTO wargear_join
  (wargearId, targetGearId, quantity, isDefault)
SELECT w1.id, w2.id, 1, FALSE
FROM wargear AS w1, wargear AS w2
WHERE w1.name = 'Annihilation Barge Wargear Choice'
  AND w2.name = 'Tesla Cannon';

