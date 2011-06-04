UPDATE creature_template SET ScriptName = '' WHERE entry IN 
(creature_template.difficulty_entry_1, creature_template.difficulty_entry_2, creature_template.difficulty_entry_3);
-- removed not used string
DELETE FROM db_script_string WHERE entry BETWEEN 2000000294 AND 2000000301;
UPDATE creature, creature_template SET creature.curhealth=creature_template.minhealth, creature.curmana=creature_template.minmana 
WHERE creature.id=creature_template.entry and creature_template.RegenHealth = 1;
UPDATE creature SET spawndist = 0 WHERE MovementType = 0;
-- missing tyrannus in instance
DELETE FROM creature WHERE id = 36794;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(36794, 658, 3, 1, 0, 0, 539.634, 222.141, 548.685, 3.10669, 14400, 0, 0, 107848, 4169, 0, 0);