
-- locations seeds
INSERT into locations(address, street, city, state) VALUES(123, 'Street Road', 'Philadelphia', 'PA'),
            (3, 'Trinity Way', 'Zion', 'EA'), (666, 'Devil\'s Crossing', 'Tristram','HL'),
            (0, 'Beth Blvd', 'Citadel of Ricks', 'NA'), (56, 'Archer Ave', 'San Diego', 'CA'),
            (185, 'SunFlower Street', 'Las Vegas', 'NV');

-- tavern seeds

INSERT into taverns(name, location) VALUES('Busters', 1), ('Neo\'s Gastro Pub',2),('Nephalem\'s Respit', 3),
            ('Mort-tinis', 4),('Alcoholics Among Us', 5), ('Sun Shine Bar', 6);

-- guest status seeds

INSERT into guest_status(name) VALUES('drunk'), ('posion'), ('confuse'), ('blind'), ('enraged'), ('reflect');

-- guest table

INSERT into guests (name, notes, status, birthday, cakeday) VALUES('Dave', 'founder', null, '1950-01-01', '2000-07-04'),
            ('Neo', 'The one.', 5,'2017-03-11', '2035-04-04'),
            ('Diablo', 'jerkstore', 1, '0000-01-01', '1999-12-25'),
            ('Bird Person', 'Goes by Phoenix Person', 3, '1965-11-11', '2020-02-14'),
            ('Cyril Figgis', 'Loser', 2, '1980-09-22', '2018-10-03'),
            ('Mario', 'Super', null, '1985-09-13', '2009-05-07');

-- class table

INSERT into classes (name) VALUES ('Priest'), ('Knight'), ('Rogue'), ('Wizard'), ('Necromancer'), ('Druid'),
            ('Shaman'), ('Scientist'), ('Dragoon'), ('Hunter'), ('Paladin'), ('Warrior');

-- levels table

INSERT into levels (guest, class, level) VALUES (1, 1, 12), (2, 11, 99), (3, 5, 85), (3, 2, 85), (4, 8, 54), (5, 3, 27), (6, 12, 67);

-- room status

INSERT into room_status(status) VALUES ('Occupied'), ('Vacant');

-- rooms

INSERT into rooms (name,cost, tavern) VALUES ('standard',50, 1), ('penthouse',100, 1),
                                        ('standard',50, 2), ('penthouse',100, 2),
                                        ('standard',50, 3), ('penthouse',100, 3),
                                        ('standard',50, 4), ('penthouse',100, 4),
                                        ('standard',50, 5), ('penthouse',100, 5),
                                        ('standard',50, 6), ('penthouse',100, 6)