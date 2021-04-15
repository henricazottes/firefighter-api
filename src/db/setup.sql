CREATE TABLE firefighter (
    ID int(11) NOT NULL,
    name varchar(45) NOT NULL,
    team varchar(45) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO firefighter (id, name, team)
VALUES (1, 'Fanch', 'Core Qualité'),
    (2, 'Romain', 'Core Qualité'),
    (3, 'Saad', 'Android'),
    (4, 'Renaud', 'Core Qualité'),
    (5, 'Hugo', 'Core Qualité'),
    (6, 'Henri', 'Core Qualité');

CREATE TABLE property (
    ID int(11) NOT NULL,
    name varchar(45) NOT NULL,
    value varchar(45) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO property (id, name, value)
VALUES (1, 'offset', '0');