UPDATE creature, creature_template SET creature.curhealth=creature_template.minhealth, creature.curmana=creature_template.minmana 
WHERE creature.id=creature_template.entry and creature_template.RegenHealth = 1;

UPDATE creature SET spawndist = 0 WHERE MovementType = 0;