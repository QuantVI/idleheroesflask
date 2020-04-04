-- Works with SQLite
CREATE TABLE IF NOT EXISTS factions(
   id   INTEGER  NOT NULL PRIMARY KEY 
  ,name VARCHAR(255) NOT NULL
  ,icon VARCHAR(255)
);


INSERT INTO factions(id,name,icon) VALUES
 (1,'Shadow',NULL)
,(2,'Fortress',NULL)
,(3,'Abyss',NULL)
,(4,'Forest',NULL)
,(5,'Dark',NULL)
,(6,'Light',NULL);


CREATE TABLE IF NOT EXISTS heroes(
   id                 INTEGER  NOT NULL PRIMARY KEY 
  ,faction_id         INTEGER  NOT NULL
  ,stars              INTEGER  NOT NULL
  ,name               VARCHAR(255) NOT NULL
  ,icon               VARCHAR(255)
  ,hive_pve_score     NUMERIC(3,1)
  ,hive_pvp_score     NUMERIC(3,1)
  ,hive_overall_score NUMERIC(3,1)
);


INSERT INTO heroes(id,faction_id,stars,name,icon,hive_pve_score,hive_pvp_score,hive_overall_score) VALUES
 (1,1,3,'Chain Hammer',NULL,NULL,NULL,NULL)
,(2,1,3,'Poison Tongue',NULL,NULL,NULL,NULL)
,(3,1,3,'Shirley',NULL,NULL,NULL,NULL)
,(4,1,3,'Dark Priest',NULL,NULL,NULL,NULL)
,(5,1,3,'Ice Troll',NULL,NULL,NULL,NULL)
,(6,1,4,'Grumpy Corpse',NULL,NULL,NULL,NULL)
,(7,1,4,'Gbagbo',NULL,NULL,NULL,NULL)
,(8,1,4,'Bonecarver',NULL,NULL,NULL,NULL)
,(9,1,4,'Glen',NULL,NULL,NULL,NULL)
,(10,1,4,'Nightmare Knight',NULL,NULL,NULL,NULL)
,(11,1,4,'Bone General',NULL,NULL,NULL,NULL)
,(12,1,4,'Lamb',NULL,NULL,NULL,NULL)
,(13,1,4,'Deathsworn',NULL,NULL,NULL,NULL)
,(14,1,5,'Grumpy Corpse',NULL,NULL,NULL,NULL)
,(15,1,5,'Gbagbo',NULL,NULL,NULL,NULL)
,(16,1,5,'Bonecarver',NULL,NULL,NULL,NULL)
,(17,1,5,'Glen',NULL,NULL,NULL,NULL)
,(18,1,5,'Nightmare Knight',NULL,NULL,NULL,NULL)
,(19,1,5,'Bone General',NULL,NULL,NULL,NULL)
,(20,1,5,'Lamb',NULL,NULL,NULL,NULL)
,(21,1,5,'Deathsworn',NULL,NULL,NULL,NULL)
,(22,1,5,'Kharma',NULL,NULL,NULL,NULL)
,(23,1,5,'Blood Blade',NULL,NULL,NULL,NULL)
,(24,1,5,'Dominator',NULL,NULL,NULL,NULL)
,(25,1,5,'Lutz',NULL,NULL,NULL,NULL)
,(26,1,5,'Field',NULL,NULL,NULL,NULL)
,(27,1,5,'Corpsedemon',NULL,NULL,NULL,NULL)
,(28,1,5,'Baade',NULL,NULL,NULL,NULL)
,(29,1,5,'Kamath',NULL,NULL,NULL,NULL)
,(30,1,5,'Aidan',NULL,NULL,NULL,NULL)
,(31,1,5,'Walter',NULL,NULL,NULL,NULL)
,(32,1,5,'Jahra',NULL,NULL,NULL,NULL)
,(33,1,5,'Horus',NULL,NULL,NULL,NULL)
,(34,1,6,'Bonecarver',NULL,NULL,NULL,NULL)
,(35,1,6,'Glen',NULL,NULL,NULL,NULL)
,(36,1,6,'Deathsworn',NULL,NULL,NULL,NULL)
,(37,1,6,'Kharma',NULL,3,3.6,3.3)
,(38,1,6,'Blood Blade',NULL,8.2,6.4,7.3)
,(39,1,6,'Dominator',NULL,3.6,2.6,3.1)
,(40,1,6,'Lutz',NULL,7.1,6,6.6)
,(41,1,6,'Field',NULL,2.1,2.4,2.3)
,(42,1,6,'Corpsedemon',NULL,6.1,7.4,7)
,(43,1,6,'Baade',NULL,4.9,3.7,4.3)
,(44,1,6,'Kamath',NULL,5.8,7.9,6.9)
,(45,1,6,'Aidan',NULL,6,6.1,6.1)
,(46,1,6,'Walter',NULL,7.5,6.5,7)
,(47,1,6,'Jahra',NULL,8.2,8.2,8.1)
,(48,1,6,'Horus',NULL,8.7,8.2,7.7)
,(49,2,3,'Reggie',NULL,NULL,NULL,NULL)
,(50,2,3,'Carver',NULL,NULL,NULL,NULL);


INSERT INTO heroes(id,faction_id,stars,name,icon,hive_pve_score,hive_pvp_score,hive_overall_score) VALUES
 (51,2,3,'Tara''s Servant',NULL,NULL,NULL,NULL)
,(52,2,3,'Fire Fist',NULL,NULL,NULL,NULL)
,(53,2,3,'MK-03',NULL,NULL,NULL,NULL)
,(54,2,4,'Time Mage',NULL,NULL,NULL,NULL)
,(55,2,4,'Storm Hudde',NULL,NULL,NULL,NULL)
,(56,2,4,'Roy',NULL,NULL,NULL,NULL)
,(57,2,4,'Sierra',NULL,NULL,NULL,NULL)
,(58,2,4,'Liquor',NULL,NULL,NULL,NULL)
,(59,2,4,'LM-02',NULL,NULL,NULL,NULL)
,(60,2,4,'Iron Bambi',NULL,NULL,NULL,NULL)
,(61,2,4,'Kristian',NULL,NULL,NULL,NULL)
,(62,2,5,'Time Mage',NULL,NULL,NULL,NULL)
,(63,2,5,'Storm Hudde',NULL,NULL,NULL,NULL)
,(64,2,5,'Roy',NULL,NULL,NULL,NULL)
,(65,2,5,'Sierra',NULL,NULL,NULL,NULL)
,(66,2,5,'Liquor',NULL,NULL,NULL,NULL)
,(67,2,5,'LM-02',NULL,NULL,NULL,NULL)
,(68,2,5,'Iron Bambi',NULL,NULL,NULL,NULL)
,(69,2,5,'Kristian',NULL,NULL,NULL,NULL)
,(70,2,5,'Emily',NULL,NULL,NULL,NULL)
,(71,2,5,'Ormus',NULL,NULL,NULL,NULL)
,(72,2,5,'Honor Guard',NULL,NULL,NULL,NULL)
,(73,2,5,'Flame Strike',NULL,NULL,NULL,NULL)
,(74,2,5,'Iceblink',NULL,NULL,NULL,NULL)
,(75,2,5,'Bleecker',NULL,NULL,NULL,NULL)
,(76,2,5,'Sigmund',NULL,NULL,NULL,NULL)
,(77,2,5,'Mirage',NULL,NULL,NULL,NULL)
,(78,2,5,'Miki',NULL,NULL,NULL,NULL)
,(79,2,5,'OD-01',NULL,NULL,NULL,NULL)
,(80,2,5,'Valentino',NULL,NULL,NULL,NULL)
,(81,2,5,'Xia',NULL,NULL,NULL,NULL)
,(82,2,6,'Roy',NULL,NULL,NULL,NULL)
,(83,2,6,'Sierra',NULL,NULL,NULL,NULL)
,(84,2,6,'Kristian',NULL,NULL,NULL,NULL)
,(85,2,6,'Emily',NULL,5.7,6.6,6.2)
,(86,2,6,'Ormus',NULL,7.8,6,6.9)
,(87,2,6,'Honor Guard',NULL,NULL,NULL,NULL)
,(88,2,6,'Flame Strike',NULL,7.6,7,7.3)
,(89,2,6,'Iceblink',NULL,6.1,7.1,6.6)
,(90,2,6,'Bleecker',NULL,2.1,2.7,2.4)
,(91,2,6,'Sigmund',NULL,8.6,6.5,7.6)
,(92,2,6,'Mirage',NULL,4.6,2.5,3.6)
,(93,2,6,'Miki',NULL,3.4,3.7,3.6)
,(94,2,6,'OD-01',NULL,4.4,5.4,4.9)
,(95,2,6,'Valentino',NULL,7.5,8.4,8)
,(96,2,6,'Xia',NULL,8.3,7.7,8)
,(97,3,3,'Abyss Guard',NULL,NULL,NULL,NULL)
,(98,3,3,'Wild Beast',NULL,NULL,NULL,NULL)
,(99,3,3,'Succube',NULL,NULL,NULL,NULL)
,(100,3,3,'Flaming Lips',NULL,NULL,NULL,NULL);


INSERT INTO heroes(id,faction_id,stars,name,icon,hive_pve_score,hive_pvp_score,hive_overall_score) VALUES
 (101,3,3,'Mirko',NULL,NULL,NULL,NULL)
,(102,3,4,'Rogge',NULL,NULL,NULL,NULL)
,(103,3,4,'Destroyer',NULL,NULL,NULL,NULL)
,(104,3,4,'Tanner',NULL,NULL,NULL,NULL)
,(105,3,4,'Akasha',NULL,NULL,NULL,NULL)
,(106,3,4,'Lemegeton',NULL,NULL,NULL,NULL)
,(107,3,4,'Aleria',NULL,NULL,NULL,NULL)
,(108,3,4,'Norma',NULL,NULL,NULL,NULL)
,(109,3,4,'Immolatus',NULL,NULL,NULL,NULL)
,(110,3,5,'Rogge',NULL,NULL,NULL,NULL)
,(111,3,5,'Destroyer',NULL,NULL,NULL,NULL)
,(112,3,5,'Tanner',NULL,NULL,NULL,NULL)
,(113,3,5,'Akasha',NULL,NULL,NULL,NULL)
,(114,3,5,'Lemegeton',NULL,NULL,NULL,NULL)
,(115,3,5,'Aleria',NULL,NULL,NULL,NULL)
,(116,3,5,'Norma',NULL,NULL,NULL,NULL)
,(117,3,5,'Immolatus',NULL,NULL,NULL,NULL)
,(118,3,5,'Skerei',NULL,NULL,NULL,NULL)
,(119,3,5,'Dantalian',NULL,NULL,NULL,NULL)
,(120,3,5,'Margaret',NULL,NULL,NULL,NULL)
,(121,3,5,'Barea',NULL,NULL,NULL,NULL)
,(122,3,5,'Queen',NULL,NULL,NULL,NULL)
,(123,3,5,'Lord Balrog',NULL,NULL,NULL,NULL)
,(124,3,5,'Fat Mu',NULL,NULL,NULL,NULL)
,(125,3,5,'Gusta',NULL,NULL,NULL,NULL)
,(126,3,5,'Karim',NULL,NULL,NULL,NULL)
,(127,3,5,'Kroos',NULL,NULL,NULL,NULL)
,(128,3,5,'King Barton',NULL,NULL,NULL,NULL)
,(129,3,5,'Cthuga',NULL,NULL,NULL,NULL)
,(130,3,6,'Destroyer',NULL,NULL,NULL,NULL)
,(131,3,6,'Aleria',NULL,NULL,NULL,NULL)
,(132,3,6,'Norma',NULL,NULL,NULL,NULL)
,(133,3,6,'Skerei',NULL,8.5,8.1,8.3)
,(134,3,6,'Dantalian',NULL,6.2,4.3,5.3)
,(135,3,6,'Margaret',NULL,5.6,4.1,4.9)
,(136,3,6,'Barea',NULL,8.2,6.4,7.3)
,(137,3,6,'Queen',NULL,7.7,7.5,7.6)
,(138,3,6,'Lord Balrog',NULL,3.7,2.8,3.3)
,(139,3,6,'Fat Mu',NULL,3.4,2.6,3)
,(140,3,6,'Gusta',NULL,2.1,2.1,2.1)
,(141,3,6,'Karim',NULL,7.9,7.6,7.8)
,(142,3,6,'Kroos',NULL,8.2,8.1,8.2)
,(143,3,6,'King Barton',NULL,7.9,8.2,8.1)
,(144,3,6,'Cthuga',NULL,7.8,7.3,7.6)
,(145,4,3,'Sybil',NULL,NULL,NULL,NULL)
,(146,4,3,'Undomiel',NULL,NULL,NULL,NULL)
,(147,4,3,'Blue Shaman',NULL,NULL,NULL,NULL)
,(148,4,3,'Frey',NULL,NULL,NULL,NULL)
,(149,4,3,'Forests Captain',NULL,NULL,NULL,NULL)
,(150,4,4,'Wind Walker',NULL,NULL,NULL,NULL);


INSERT INTO heroes(id,faction_id,stars,name,icon,hive_pve_score,hive_pvp_score,hive_overall_score) VALUES
 (151,4,4,'Chief',NULL,NULL,NULL,NULL)
,(152,4,4,'Ent Elder',NULL,NULL,NULL,NULL)
,(153,4,4,'Headstriker',NULL,NULL,NULL,NULL)
,(154,4,4,'Thale',NULL,NULL,NULL,NULL)
,(155,4,4,'Kargath',NULL,NULL,NULL,NULL)
,(156,4,4,'The Grey-eyed',NULL,NULL,NULL,NULL)
,(157,4,4,'Zekkis',NULL,NULL,NULL,NULL)
,(158,4,5,'Wind Walker',NULL,NULL,NULL,NULL)
,(159,4,5,'Chief',NULL,NULL,NULL,NULL)
,(160,4,5,'Ent Elder',NULL,NULL,NULL,NULL)
,(161,4,5,'Headstriker',NULL,NULL,NULL,NULL)
,(162,4,5,'Thale',NULL,NULL,NULL,NULL)
,(163,4,5,'Kargath',NULL,NULL,NULL,NULL)
,(164,4,5,'The Grey-eyed',NULL,NULL,NULL,NULL)
,(165,4,5,'Zekkis',NULL,NULL,NULL,NULL)
,(166,4,5,'Demon Hunter',NULL,NULL,NULL,NULL)
,(167,4,5,'Dragon Slayer',NULL,NULL,NULL,NULL)
,(168,4,5,'Faceless',NULL,NULL,NULL,NULL)
,(169,4,5,'Rosa',NULL,NULL,NULL,NULL)
,(170,4,5,'Starlight',NULL,NULL,NULL,NULL)
,(171,4,5,'Groo',NULL,NULL,NULL,NULL)
,(172,4,5,'Eddga',NULL,NULL,NULL,NULL)
,(173,4,5,'Vesa',NULL,NULL,NULL,NULL)
,(174,4,5,'Malassa',NULL,NULL,NULL,NULL)
,(175,4,5,'Heart Watcher',NULL,NULL,NULL,NULL)
,(176,4,5,'Valkyrie',NULL,NULL,NULL,NULL)
,(177,4,5,'Oberon',NULL,NULL,NULL,NULL)
,(178,4,6,'Thale',NULL,NULL,NULL,NULL)
,(179,4,6,'The Grey-eyed',NULL,NULL,NULL,NULL)
,(180,4,6,'Zekkis',NULL,NULL,NULL,NULL)
,(181,4,6,'Demon Hunter',NULL,7,8.2,7.6)
,(182,4,6,'Dragon Slayer',NULL,5.9,3.6,4.8)
,(183,4,6,'Faceless',NULL,3.3,2.6,3)
,(184,4,6,'Rosa',NULL,7.8,6.3,7.1)
,(185,4,6,'Starlight',NULL,5.5,5.5,5.5)
,(186,4,6,'Groo',NULL,6.4,5.9,6.2)
,(187,4,6,'Eddga',NULL,4.2,2.3,3.3)
,(188,4,6,'Vesa',NULL,8.3,7.9,8.1)
,(189,4,6,'Malassa',NULL,6.7,5,5.9)
,(190,4,6,'Heart Watcher',NULL,8.7,6.1,7.4)
,(191,4,6,'Valkyrie',NULL,8.1,8.3,8.2)
,(192,4,6,'Oberon',NULL,5,4.6,4.8)
,(193,5,3,'Ghost of Aspen',NULL,NULL,NULL,NULL)
,(194,5,4,'Darkness Fanella',NULL,NULL,NULL,NULL)
,(195,5,4,'Logan',NULL,NULL,NULL,NULL)
,(196,5,4,'Dark Spirit',NULL,NULL,NULL,NULL)
,(197,5,5,'Darkness Fanella',NULL,NULL,NULL,NULL)
,(198,5,5,'Logan',NULL,NULL,NULL,NULL)
,(199,5,5,'Dark Spirit',NULL,NULL,NULL,NULL)
,(200,5,5,'Dark Anthindol',NULL,NULL,NULL,NULL);


INSERT INTO heroes(id,faction_id,stars,name,icon,hive_pve_score,hive_pvp_score,hive_overall_score) VALUES
 (201,5,5,'Sleepless',NULL,NULL,NULL,NULL)
,(202,5,5,'Das Moge',NULL,NULL,NULL,NULL)
,(203,5,5,'Amuvor',NULL,NULL,NULL,NULL)
,(204,5,5,'Mihm',NULL,NULL,NULL,NULL)
,(205,5,5,'Aspen',NULL,NULL,NULL,NULL)
,(206,5,6,'Dark Spirit',NULL,NULL,NULL,NULL)
,(207,5,6,'Dark Anthindol',NULL,5.2,8.1,6.7)
,(208,5,6,'Sleepless',NULL,5.6,5.8,5.7)
,(209,5,6,'Das Moge',NULL,8.3,7.6,8)
,(210,5,6,'Amuvor',NULL,8.3,8.5,8.4)
,(211,5,6,'Mihm',NULL,6.6,8.6,7.6)
,(212,5,6,'Aspen',NULL,8.3,8.5,8.4)
,(213,6,3,'Holy Kid',NULL,NULL,NULL,NULL)
,(214,6,4,'Disciple',NULL,NULL,NULL,NULL)
,(215,6,4,'Fegan',NULL,NULL,NULL,NULL)
,(216,6,4,'DivineSpirit',NULL,NULL,NULL,NULL)
,(217,6,5,'Disciple',NULL,NULL,NULL,NULL)
,(218,6,5,'Fegan',NULL,NULL,NULL,NULL)
,(219,6,5,'Divine Spirit',NULL,NULL,NULL,NULL)
,(220,6,5,'Gerke',NULL,NULL,NULL,NULL)
,(221,6,5,'Asmodel',NULL,NULL,NULL,NULL)
,(222,6,5,'Michelle',NULL,NULL,NULL,NULL)
,(223,6,5,'Faith Blade',NULL,NULL,NULL,NULL)
,(224,6,5,'Belrain',NULL,NULL,NULL,NULL)
,(225,6,5,'Aida',NULL,NULL,NULL,NULL)
,(226,6,6,'Divine Spirit',NULL,NULL,NULL,NULL)
,(227,6,6,'Gerke',NULL,7.8,6.4,7.1)
,(228,6,6,'Asmodel',NULL,7.5,8.2,7.9)
,(229,6,6,'Michelle',NULL,7,8.3,7.7)
,(230,6,6,'Faith Blade',NULL,6.2,8.5,7.4)
,(231,6,6,'Belrain',NULL,7.7,8.3,8)
,(232,6,6,'Aida',NULL,8.7,8.6,8.7);


CREATE TABLE IF NOT EXISTS fusions(
   id                  INTEGER  NOT NULL PRIMARY KEY 
  ,faction_id          INTEGER  NOT NULL
  ,result_hero_id      INTEGER  NOT NULL
  ,input_hero_1_id     INTEGER  NOT NULL
  ,input_hero_1_amount INTEGER  NOT NULL
  ,input_hero_2_id     INTEGER  NOT NULL
  ,input_hero_2_amount INTEGER  NOT NULL
  ,fodder_amount       INTEGER  NOT NULL
  ,fodder_stars        INTEGER  NOT NULL
);


INSERT INTO fusions(id,faction_id,result_hero_id,input_hero_1_id,input_hero_1_amount,input_hero_2_id,input_hero_2_amount,fodder_amount,fodder_stars) VALUES
 (1,1,14,6,4,5,4,4,4)
,(2,1,15,7,4,2,4,4,4)
,(3,1,16,8,4,3,4,4,4)
,(4,1,17,9,4,4,4,4,4)
,(5,1,18,10,4,5,4,4,4)
,(6,1,19,11,4,1,4,4,4)
,(7,1,20,12,4,1,4,4,4)
,(8,1,21,13,4,3,4,4,4)
,(9,1,34,16,2,15,1,3,5)
,(10,1,35,17,2,21,1,3,5)
,(11,1,36,21,2,17,1,3,5)
,(12,1,37,22,2,17,1,3,5)
,(13,1,38,23,2,16,1,3,5)
,(14,1,39,24,2,19,1,3,5)
,(15,1,40,25,2,15,1,3,5)
,(16,1,41,26,2,20,1,3,5)
,(17,1,42,27,2,14,1,3,5)
,(18,1,43,28,2,18,1,3,5)
,(19,1,44,29,2,15,1,3,5)
,(20,1,45,30,2,21,1,3,5)
,(21,1,46,31,2,16,1,3,5)
,(22,1,47,32,2,20,1,3,5)
,(23,1,48,33,2,14,1,3,5)
,(24,2,62,54,4,49,4,4,4)
,(25,2,63,55,4,52,4,4,4)
,(26,2,64,56,4,50,4,4,4)
,(27,2,65,57,4,49,4,4,4)
,(28,2,66,58,4,51,4,4,4)
,(29,2,67,59,4,53,4,4,4)
,(30,2,68,60,4,52,4,4,4)
,(31,2,69,61,4,50,4,4,4)
,(32,2,82,64,2,66,1,3,5)
,(33,2,83,65,2,69,1,3,5)
,(34,2,84,69,2,68,1,3,5)
,(35,2,85,70,2,62,1,3,5)
,(36,2,86,71,2,62,1,3,5)
,(37,2,87,72,2,63,1,3,5)
,(38,2,88,73,2,65,1,3,5)
,(39,2,89,74,2,69,1,3,5)
,(40,2,90,75,2,66,1,3,5)
,(41,2,91,76,2,68,1,3,5)
,(42,2,92,77,2,64,1,3,5)
,(43,2,93,78,2,64,1,3,5)
,(44,2,94,79,2,67,1,3,5)
,(45,2,95,80,2,67,1,3,5)
,(46,2,96,81,2,64,1,3,5)
,(47,3,110,102,4,98,4,4,4)
,(48,3,111,103,4,98,4,4,4)
,(49,3,112,104,4,97,4,4,4)
,(50,3,113,105,4,99,4,4,4);


INSERT INTO fusions(id,faction_id,result_hero_id,input_hero_1_id,input_hero_1_amount,input_hero_2_id,input_hero_2_amount,fodder_amount,fodder_stars) VALUES
 (51,3,114,106,4,100,4,4,4)
,(52,3,115,107,4,101,4,4,4)
,(53,3,116,108,4,101,4,4,4)
,(54,3,117,109,4,100,4,4,4)
,(55,3,130,111,2,113,1,3,5)
,(56,3,131,115,2,116,1,3,5)
,(57,3,132,116,2,115,1,3,5)
,(58,3,133,118,2,111,1,3,5)
,(59,3,134,119,2,114,1,3,5)
,(60,3,135,120,2,116,1,3,5)
,(61,3,136,121,2,110,1,3,5)
,(62,3,137,122,2,113,1,3,5)
,(63,3,138,123,2,114,1,3,5)
,(64,3,139,124,2,112,1,3,5)
,(65,3,140,125,2,112,1,3,5)
,(66,3,141,126,2,115,1,3,5)
,(67,3,142,127,2,110,1,3,5)
,(68,3,143,128,2,117,1,3,5)
,(69,3,144,129,2,114,1,3,5)
,(70,4,158,150,4,145,4,4,4)
,(71,4,159,151,4,147,4,4,4)
,(72,4,160,152,4,148,4,4,4)
,(73,4,161,153,4,146,4,4,4)
,(74,4,162,154,4,149,4,4,4)
,(75,4,163,155,4,146,4,4,4)
,(76,4,164,156,4,148,4,4,4)
,(77,4,165,157,4,147,4,4,4)
,(78,4,178,162,2,165,1,3,5)
,(79,4,179,164,2,161,1,3,5)
,(80,4,180,165,2,162,1,3,5)
,(81,4,181,166,2,158,1,3,5)
,(82,4,182,167,2,163,1,3,5)
,(83,4,183,168,2,161,1,3,5)
,(84,4,184,169,2,165,1,3,5)
,(85,4,185,170,2,162,1,3,5)
,(86,4,186,171,2,160,1,3,5)
,(87,4,187,172,2,159,1,3,5)
,(88,4,188,173,2,162,1,3,5)
,(89,4,189,174,2,163,1,3,5)
,(90,4,190,175,2,164,1,3,5)
,(91,4,191,176,2,163,1,3,5)
,(92,4,192,177,2,162,1,3,5)
,(93,5,197,194,4,193,4,4,4)
,(94,5,198,195,4,193,4,4,4)
,(95,5,199,196,4,193,4,4,4)
,(96,5,206,199,2,197,1,3,5)
,(97,5,207,200,2,197,1,3,5)
,(98,5,208,201,2,198,1,3,5)
,(99,5,209,202,2,199,1,3,5)
,(100,5,210,203,2,197,1,3,5);


INSERT INTO fusions(id,faction_id,result_hero_id,input_hero_1_id,input_hero_1_amount,input_hero_2_id,input_hero_2_amount,fodder_amount,fodder_stars) VALUES
 (101,5,211,204,2,199,1,3,5)
,(102,5,212,205,2,198,1,3,5)
,(103,6,217,214,4,213,4,4,4)
,(104,6,218,215,4,213,4,4,4)
,(105,6,219,216,4,213,4,4,4)
,(106,6,226,219,2,217,1,3,5)
,(107,6,227,220,2,217,1,3,5)
,(108,6,228,221,2,218,1,3,5)
,(109,6,229,222,2,217,1,3,5)
,(110,6,230,223,2,218,1,3,5)
,(111,6,231,224,2,217,1,3,5)
,(112,6,232,225,2,217,1,3,5);

