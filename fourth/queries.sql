--4
SELECT guests.name, classes.name, level FROM guests
JOIN levels
ON levels.guest = guests.guest_id
JOIN classes
ON levels.class = classes.class_id
ORDER BY guests.name;
