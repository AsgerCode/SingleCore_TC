-- 
DELETE FROM `creature_addon` WHERE `guid` IN (90888,90738,46620,48168,91011,90741,91066);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(90888,0,0,0,4097,10,'14869'),
(90738,0,0,0,4097,10,'14869'),
(46620,0,0,0,4097,10,'14869'),
(48168,0,0,0,4097,10,''),
(91011,0,0,0,4097,10,''),
(90741,0,0,0,4097,10,''),
(91066,0,0,0,4097,10,'');
UPDATE `creature_template_addon` SET `auras`="14869" WHERE `entry` IN (9554);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (9545, 9547, 9554, 9499, 9500);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `ScriptName`='' WHERE  `entry` IN (165738, 165739, 165578);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`IN(165738, 165739, 165578);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (949900, 954700, 954500, 955400, 950000) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9545, 9547, 9554, 9499, -48172, -90884, -91064, 9500) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(9545,0,0,0,0,0,100,0,3000,5000,5000,8000,11,15610,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grim Patron - In Combat - Cast 'Kick'"),
(9545,0,1,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(9545,0,2,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - OOC - Play Random Emotes"),
(9545,0,3,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Grim Patron - On Data set - Start Attack"),
(9545,0,4,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - On Data set - Action list"),
(954500,9,0,0,0,0,100,0,5000,5000,0,0,99,3,0,0,0,0,0,20,165578,10,0,0,0,0,0,"Grim Patron - Action list - Set loot state"),
(954500,9,1,0,0,0,100,0,0,0,0,0,11,50631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Action list - Cast Drink Dark Iron Brewer"),
(954500,9,2,0,0,0,100,0,2000,2000,0,0,11,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Action list - Cast Dark Iron Brewer is Swaggering"),
(954500,9,3,0,0,0,100,0,5000,5000,0,0,28,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Action list - Remove aura"), 
(9547,0,0,0,0,0,100,0,1000,2000,15000,15000,11,14868,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Curse of Agony'"),
(9547,0,1,0,0,0,100,0,3000,4000,3000,4000,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Shadow Bolt'"),
(9547,0,2,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(9547,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Play Random Emotes"),
(9547,0,4,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Guzzling Patron - On Data set - Start Attack"),
(9547,0,5,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - On Data set - Action list"),
(954700,9,0,0,0,0,100,0,1000,1000,0,0,99,3,0,0,0,0,0,20,165578,10,0,0,0,0,0,"Guzzling Patron - Action list - Set loot state"),
(954700,9,1,0,0,0,100,0,0,0,0,0,11,50631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Action list - Cast Drink Dark Iron Brewer"),
(954700,9,2,0,0,0,100,0,2000,2000,0,0,11,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Action list - Cast Dark Iron Brewer is Swaggering"),
(954700,9,3,0,0,0,100,0,7000,7000,0,0,28,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Action list - Remove aura"),
(9554,0,0,0,0,0,100,0,3000,5000,5000,8000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hammered Patron - In Combat - Cast 'Backhand'"),
(9554,0,1,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(9554,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - OOC - Play Random Emotes"),
(9554,0,4,0,38,0,100,0,1,4,0,0,80,955400,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - On Data set - Action list"),
(955400,9,0,0,0,0,100,0,1000,1000,0,0,99,3,0,0,0,0,0,20,165578,10,0,0,0,0,0,"Hammered Patron - Action list - Set loot state"),
(955400,9,1,0,0,0,100,0,0,0,0,0,11,50631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Action list - Cast Drink Dark Iron Brewer"),
(955400,9,2,0,0,0,100,0,2000,2000,0,0,11,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Action list - Cast Dark Iron Brewer is Swaggering"),
(955400,9,3,0,0,0,100,0,7000,7000,0,0,28,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Action list - Remove aura"),
(9499,0,0,0,1,0,100,0,7000,15000,35000,45000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - OOC - Say text 1"),
(9499,0,1,0,0,0,100,0,3000,5000,15000,18000,11,13338,0,0,0,0,0,2,0,0,0,0,0,0,0,"Plugger Spazzring - In Combat - Cast 'Curse of Tongues'"),
(9499,0,2,0,0,0,100,0,5000,7000,12000,15000,11,12742,0,0,0,0,0,2,0,0,0,0,0,0,0,"Plugger Spazzring - In Combat - Cast 'Immolate'"),
(9499,0,3,0,0,0,100,0,1000,2000,3000,4000,11,12739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Plugger Spazzring - In Combat - Cast 'Shadow Bolt'"),
(9499,0,4,0,23,0,100,0,13787,0,10000,10000,11,13787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On aura missing - Cast 'Demon Armor'"),
(9499,0,5,0,4,0,100,0,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Plugger Spazzring - On aggro - Say text 4"),
(9499,0,6,7,38,0,100,0,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On Data set - Say text 2"),
(9499,0,7,0,61,0,100,0,0,0,0,0,63,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On Data set - Increment counter1"),
(9499,0,8,0,77,0,100,0,1,3,0,0,80,949900,2,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On counter set- Actionlist"),
(949900,9,0,0,0,0,100,0,0,0,0,0,63,1,1,1,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - Actionlist - Reset counter1"),
(949900,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,9545,7,0,0,0,0,0,"Plugger Spazzring - Actionlist - Set data"),
(949900,9,2,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,9547,7,0,0,0,0,0,"Plugger Spazzring - Actionlist - Set data"),
(949900,9,3,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,35,0,0,0,0,0,0,"Plugger Spazzring - Actionlist - Start attack"),
(9499,0,9,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9554,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(9499,0,10,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9545,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(9499,0,11,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9547,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(9499,0,12,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9502,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(165739, 1, 0 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,1,0,0,0,0,19,9499,35,0,0,0,0,0, 'Grim Guzzler Boar - On State Changed - Set Data'),
(165738, 1, 0 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,1,0,0,0,0,19,9499,35,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(165578, 1, 0 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,4,0,0,0,0,19,9545,5,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(165578, 1, 1 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,4,0,0,0,0,19,9547,5,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(165578, 1, 2 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,4,0,0,0,0,19,9554,5,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(-48172,0,0,0,0,0,100,0,3000,5000,5000,8000,11,15610,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grim Patron - In Combat - Cast 'Kick'"),
(-48172,0,1,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(-48172,0,2,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - OOC - Play Random Emotes"),
(-48172,0,3,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Grim Patron - On Data set - Start Attack"),
(-48172,0,4,0,38,0,100,0,1,4,0,0,80,954500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - On Data set - Action list"),
(-48172,0,5,6,1,0,100,0,30000,30000,55000,60000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - OOC - Say text1"),
(-48172,0,6,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,9500,50,0,0,0,0,0,"Grim Patron - OOC - Set data"),
(-90884,0,0,0,0,0,100,0,1000,2000,15000,15000,11,14868,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Curse of Agony'"),
(-90884,0,1,0,0,0,100,0,3000,4000,3000,4000,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Shadow Bolt'"),
(-90884,0,2,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(-90884,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Play Random Emotes"),
(-90884,0,4,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Guzzling Patron - On Data set - Start Attack"),
(-90884,0,5,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - On Data set - Action list"),
(-90884,0,6,7,1,0,100,0,150000,150000,12000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Say text1"),
(-90884,0,7,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,9500,50,0,0,0,0,0,"Guzzling Patron - OOC - Set data"),
(-91064,0,0,0,0,0,100,0,1000,2000,15000,15000,11,14868,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Curse of Agony'"),
(-91064,0,1,0,0,0,100,0,3000,4000,3000,4000,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Shadow Bolt'"),
(-91064,0,2,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(-91064,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Play Random Emotes"),
(-91064,0,4,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Guzzling Patron - On Data set - Start Attack"),
(-91064,0,5,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - On Data set - Action list"),
(-91064,0,6,7,1,0,100,0,220000,200000,550000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Say text1"),
(-91064,0,7,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,9500,50,0,0,0,0,0,"Guzzling Patron - OOC - Set data"),
(9500,0,0,0,38,0,100,0,1,1,0,0,80,950000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nagmara - On Data set - Say text 1"),
(950000,9,0,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nagmara - On Data set - Say text 1");

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (90885, 91016, 48092, 90739, 90746, 46624, 90883);
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(90739,90739,0,0,2),(90739,90745,0,0,2),(90739,48168,0,0,2),(90739,91011,0,0,2),
(90739,90886,0,0,2),(90739,91045,0,0,2),(90739,91070,0,0,2),(90739,90741,0,0,2),
(90739,46629,0,0,2),(90739,48172,0,0,2),(48092,48092,0,0,2),(48092,91066,0,0,2),
(48092,90884,0,0,2),(48092,91019,0,0,2),(48092,48170,0,0,2),(48092,91048,0,0,2),
(48092,90888,0,0,2),(48092,46620,0,0,2),(48092,90738,0,0,2),(91016,91016,0,0,2),
(91016,90742,0,0,2),(91016,91013,0,0,2),(91016,91069,0,0,2),(90885,90885,0,0,2),
(90885,90890,0,0,2),(90885,48094,0,0,2),(90885,91068,0,0,2),(90885,91064,0,0,2),
(90885,91017,0,0,2),(90885,91012,0,0,2),(90746,90746,0,0,2),(90746,90887,0,0,2),
(90746,91015,0,0,2),(90746,90737,0,0,2),(90746,91065,0,0,2),(90746,91067,0,0,2),
(90746,90881,0,0,2),(90746,91047,0,0,2),(90746,91043,0,0,2),(90746,91014,0,0,2),
(90746,91071,0,0,2),(90746,90744,0,0,2),(90746,48153,0,0,2),(90746,90743,0,0,2),
(90746,46621,0,0,2),(90746,46628,0,0,2),(90746,91050,0,0,2),(90746,46625,0,0,2),
(90746,46626,0,0,2),(90883,90883,0,0,2),(90883,91052,0,0,2),(90883,90889,0,0,2),
(90883,46627,0,0,2),(90883,46630,0,0,2),(90883,91010,0,0,2),(90883,48093,0,0,2),
(90883,91044,0,0,2),(90883,91051,0,0,2),(90883,48169,0,0,2),(90883,91046,0,0,2),
(90883,90882,0,0,2),(90883,91049,0,0,2),(46624,46624,0,0,2),(46624,90740,0,0,2),
(46624,48171,0,0,2),(46624,48152,0,0,2),(46624,91018,0,0,2),(46624,46622,0,0,2);

SET @ENTRY := 9499;
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY,9545, 9554, 9547, 9500, 9503);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0,"Drink up! There''s more where that came from!",12,0,100,0,0,0, 'Plugger_Spazzring', 5307),
(@ENTRY,0,1,"Enjoy! You won''t find better ale anywhere!",12,0,100,0,0,0, 'Plugger_Spazzring', 5308),
(@ENTRY,0,2,"Have you tried the Dark Iron Ale? It''s the best!",12,0,100,0,0,0, 'Plugger_Spazzring', 5309),
(@ENTRY,0,3,"Try the boar! It''s my new recipe!",12,0,100,0,0,0, 'Plugger_Spazzring', 5310),
(@ENTRY,1,0,"What are you doing over there?",14,0,100,0,0,0, 'Plugger_Spazzring', 5054),
(@ENTRY,1,1,"Hey! Get away from that!",14,0,100,0,0,0, 'Plugger_Spazzring', 5053),
(@ENTRY,1,2,"Hey! Stop that!",14,0,100,0,0,0, 'Plugger_Spazzring', 5056),
(@ENTRY,1,3,"No stealing the goods!",14,0,100,0,0,0, 'Plugger_Spazzring', 5055),
(@ENTRY,1,4,"Phalanx, I think you need to teach thos person a lesson.",14,0,100,0,0,0, 'Plugger_Spazzring', 5057),
(@ENTRY,2,0,"Hey, my pockets were picked!",14,0,100,0,0,0, 'Plugger_Spazzring', 5266),
(@ENTRY,2,1,"That''s it! No more beer until this mess is sorted out!",14,0,100,0,0,0, 'Plugger_Spazzring', 5267),
(@ENTRY,3,0,"That''s it! You''re going down!",14,0,100,0,0,0, 'Plugger_Spazzring', 5060),
(9545,0,0,"Hey Nagmara!  How about a mug of Dark Iron Ale?",12,0,100,0,0,0, 'Patron', 4984),
(9545,0,1,"Nagmara!  Have any mutton left?",12,0,100,0,0,0, 'Patron', 4985),
(9545,0,2,"Mistress, you tell Plugger that I want more of his ale.  I can't get enough!",12,0,100,0,0,0, 'Patron', 4986),
(9545,0,3,"Hey Nag, how about you slice me off a piece of that...",12,0,100,0,0,0, 'Patron', 4987),
(9554,0,0,"Hey Nagmara!  How about a mug of Dark Iron Ale?",12,0,100,0,0,0, 'Patron', 4984),
(9554,0,1,"Nagmara!  Have any mutton left?",12,0,100,0,0,0, 'Patron', 4985),
(9554,0,2,"Mistress, you tell Plugger that I want more of his ale.  I can't get enough!",12,0,100,0,0,0, 'Patron', 4986),
(9554,0,3,"Hey Nag, how about you slice me off a piece of that...",12,0,100,0,0,0, 'Patron', 4987),
(9547,0,0,"Hey Nagmara!  How about a mug of Dark Iron Ale?",12,0,100,0,0,0, 'Patron', 4984),
(9547,0,1,"Nagmara!  Have any mutton left?",12,0,100,0,0,0, 'Patron', 4985),
(9547,0,2,"Mistress, you tell Plugger that I want more of his ale.  I can't get enough!",12,0,100,0,0,0, 'Patron', 4986),
(9547,0,3,"Hey Nag, how about you slice me off a piece of that...",12,0,100,0,0,0, 'Patron', 4987),
(9500,0,0,"You got it!",12,0,100,0,0,0, 'Nagmara', 4979),
(9500,0,1,"Coming right up!",12,0,100,0,0,0, 'Nagmara', 4980),
(9500,0,2,"I'll bring it right over, baby...",12,0,100,0,0,0, 'Nagmara', 4981),
(9500,1,0,"Hey, Rocknot!",12,0,100,0,0,0, 'Nagmara', 5000),
(9500,2,0,"Let's go, honey.",12,0,100,0,0,0, 'Nagmara', 5001),
(9500,3,0,"%s kisses her lover.",12,0,100,0,0,0, 'Nagmara', 5002),
(9503,0,0,"Ah, hits the spot!",12,0,100,0,0,0, 'Rocknot', 5172),
(9503,1,0,"I want more ale! Give me more ale!",12,0,100,0,0,0, 'Rocknot', 5166),
(9503,2,0,"That one's empty!!",12,0,100,0,0,0, 'Rocknot', 5167),
(9503,3,0,"Ah, empty again!",12,0,100,0,0,0, 'Rocknot', 5168),
(9503,4,0,"ALE!",12,0,100,0,0,0, 'Rocknot', 5169),
(9503,5,0,"%s kisses Mistress Nagmara",12,0,100,0,0,0, 'Rocknot', 5003),
(9503,6,0,"I'm getting out of here!",12,0,100,0,0,0, 'Rocknot', 5281);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup`=2076;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 2076, 0, 0, 0, 8, 0, 4201, 0, 0, 0, 0, 0, '', 'Show the gossip option for Nagmara if the quest The Love Potion is rewarded');