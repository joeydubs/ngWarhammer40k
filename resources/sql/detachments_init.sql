CREATE TABLE detachments
(
  id INTEGER,
  name TEXT,
  cpCost INTEGER,
  restrictions TEXT,
  cpBenefit INTEGER
);

CREATE TABLE detachment_slots
(
  detachmentId INTEGER,
  roleId INTEGER,
  min INTEGER,
  max INTEGER
);