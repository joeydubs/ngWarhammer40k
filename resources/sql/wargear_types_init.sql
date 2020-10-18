CREATE TABLE wargear_types
(
  id INT AUTO_INCREMENT,
  name VARCHAR(50),
  PRIMARY KEY (id)
);

INSERT INTO wargear_types
  (name)
VALUES
  ('Weapon');

INSERT INTO wargear_types
  (name)
VALUES
  ('Ability');

INSERT INTO wargear_types
  (name)
VALUES
  ('Group');

INSERT INTO wargear_types
  (name)
VALUES
  ('Select');