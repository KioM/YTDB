ALTER TABLE db_version CHANGE COLUMN required_11234_01_mangos_command required_11310_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1503);

INSERT INTO mangos_string VALUES
(1503,'Can not add spawn because no free guids for static spawn in reserved guids range. Need restart server before command will can used. Also look GuidReserveSize.* config options.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_11310_01_mangos_mangos_string required_11312_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1503);

INSERT INTO mangos_string VALUES
(1503,'Can not add spawn because no free guids for static spawn in reserved guids range. Server restart are required before command can be used. Also look GuidReserveSize.* config options.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);


# SD2_2018
UPDATE creature_template SET ScriptName='' WHERE entry=6497;
