SET DEFINE OFF

INSERT INTO USER_ACCOUNT (ID, USER_NAME, PASSWORD, MAIL_ADDRESS) 
VALUES (1.0, 'mucsina', 'mucsina00', 'mucsina0130@gmail.com');

INSERT INTO USER_ACCOUNT (ID, USER_NAME, PASSWORD, MAIL_ADDRESS) 
VALUES (2.0, 'popcornmaci', 'popcornmaci00', 'tilvlike@gmail.com');

INSERT INTO RULE_DECK (ID, MIN_QUANTITY, MAX_QUANTITY, STANDARD_CARD_QUANTITY) 
VALUES (1.0, 30.0, 60.0, 3.0);

INSERT INTO GAME_TYPE (ID, RULE_DECK_ID, NAME, SHOR_DESCRIPTION, RULE_OF_THE_GAME, IS_PUBLIC) VALUES (1,1,'YU-GI-OH!','With the Yu-Gi-Oh! TRADING CARD GAME you can take part in the exciting card game action seen in the family of Yu-Gi-Oh! TV and comic mega-hits. In this game, two players Duel each other using a variety of Monster, Spell, and Trap Cards to defeat their opponent’s monsters and be the first to drop the other’s LP (Life Points) to 0.','http://www.yugioh-card.com/uk/rulebook/Rulebook_v9_en.pdf',1);

COMMIT;

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (1, 1, 'Gate Guardian ', '11', 'This card can only be Special Summoned by offering "Sanga of the Thunder", "Kazejin", and "Suijin" on your side of the field as a Tribute. ', '3750', '3400', 'Effect Monster ', 'Secret Rare ', 'Dark ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (2.0, 1.0, 'Feral Imp ', '4', 'A playful little fiend that lurks in the dark, waiting to attack an unwary enemy. ', '1300', '1400', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (3.0, 1.0, 'Winged Dragon, Guardian of the Fortress #1 ', '4', 'A dragon commonly found guarding mountain fortresses. Its signature attack is a sweeping dive from out of the blue. ', '1400', '1200', 'Normal Monster ', 'Common ', 'Wind ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (4.0, 1.0, 'Summoned Skull ', '6', 'A fiend with dark powers for confusing the enemy. Among the Fiend-Type monsters, this monster boasts considerable force. ', '2500', '1200', 'Normal Monster ', 'Ultra Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (5.0, 1.0, 'Rock Ogre Grotto #1 ', '3', 'Protected by a solid body of rock, this monster throws a bone-shattering punch. ', '800', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Rock ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (6.0, 1.0, 'Armored Lizard ', '4', 'A lizard with a very though hide and a vicious bite. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Reptile ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (7.0, 1.0, 'Killer Needle ', '4', 'A huge bee with exceptional strength that''s particularly dangerous in a swarm. ', '1200', '1000', 'Normal Monster ', 'Common ', 'Wind ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (8.0, 1.0, 'Larvae Moth ', '2', 'This monster can only be Special Summoned by offering "Petit Moth" as a tribute on the 2nd of your turns after "Petit Moth" has been equipped with "Cocoon of Evolution". ', '500', '400', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (9.0, 1.0, 'Harpie Lady ', '4', 'This human-shaped animal with wings is beautiful to watch but deadly in battle. ', '1300', '1400', 'Normal Monster ', 'Common ', 'Wind ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (10.0, 1.0, 'Harpie Lady Sisters ', '6', 'This monster can only be Special Summoned with the Magic Card "Elegant Egotist". ', '1950', '2100', 'Effect Monster ', 'Super Rare ', 'Wind ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (11.0, 1.0, 'Kojikocy ', '4', 'A man-hunter with powerful arms that can crush boulders. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (12.0, 1.0, 'Cocoon of Evolution ', '3', 'You may treat this card as an Equip Magic Card on a face-up "Petit Moth" on the field. When equipped, the ATK and DEF of "Petit Moth" becomes the same as "Cocoon of Evolution". ', '0', '2000', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (13.0, 1.0, 'Crawling Dragon ', '5', 'This weakened dragon can no longer fly, but it is still a deadly force to be reckoned with. ', '1600', '1400', 'Normal Monster ', 'Common ', 'Earth ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (14.0, 1.0, 'Armored Zombie ', '3', 'This warrior blindly swings a deadly blade with devastating force. ', '1500', '0', 'Normal Monster ', 'Common ', 'Dark ', 'Zombie ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (15.0, 1.0, 'Mask of Darkness ', '3', 'FLIP: Select 1 Trap Card from your Graveyard and return it to your hand. ', '900', '400', 'Effect Monster ', 'Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (16.0, 1.0, 'Doma the Angel of Silence ', '5', 'This fairy rules over the end of existence. ', '1600', '1400', 'Normal Monster ', 'Common ', 'Dark ', 'Fairy ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (17.0, 1.0, 'White Magical Hat ', '3', 'When this card inflicts damage to your opponent''s Life Points, 1 card must be discarded randomly from your opponent''s Hand to the Graveyard. ', '1000', '700', 'Effect Monster ', 'Rare ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (18.0, 1.0, 'Big Eye ', '4', 'FLIP: See the 5 cards from the top of your deck, arrange them in the order desired, and replace them on top of your deck. ', '1200', '1000', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (19.0, 1.0, 'B. Skull Dragon ', '9', '"Summoned Skull" + "Red-Eyes B. Dragon" ', '3200', '2500', 'Fusion Monster ', 'Ultra Rare ', 'Dark ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (20.0, 1.0, 'Masked Sorcerer ', '4', 'When you inflict damage to your opponent''s Life Points with this card, draw a card from your deck. ', '900', '1400', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (21.0, 1.0, 'Roaring Ocean Snake ', '6', '"Mystic Lamp" + "Hyosube" ', '2100', '1800', 'Fusion Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (22.0, 1.0, 'Water Omotics ', '4', 'Transforms the water overflowing from a jar into attacking dragons. ', '1400', '1200', 'Normal Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (23.0, 1.0, 'Ground Attacker Bugroth ', '4', 'A surface battle robot that was once used for sea warfare. ', '1500', '1000', 'Normal Monster ', 'Common ', 'Earth ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (24.0, 1.0, 'Petit Moth ', '1', 'This small but deadly creature is better of avoided. ', '300', '200', 'Normal Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (25.0, 1.0, 'Elegant Egotist ', NULL, 'When there are 1 or more "Harpie Lady" cards on the field. You can Special Summon 1 "Harpie Lady" or "Harpie Lady Sisters" from your hand or Deck. ', NULL, NULL, 'Spell ', 'Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (26.0, 1.0, 'Sanga of the Thunder ', '7', 'Reduce the ATK of an opponent''s monster attacking this card to 0. This effect may only be used once. The card''s owner chooses when to activate the effect. ', '2600', '2200', 'Effect Monster ', 'Super Rare ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (27.0, 1.0, 'Kazejin ', '7', 'Reduce the ATK of an opponent''s monster attacking this card to 0. This effect may only be used once. The card''s owner chooses when to activate the effect. ', '2400', '2000', 'Effect Monster ', 'Super Rare ', 'Wind ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (28.0, 1.0, 'Suijin ', '7', 'Reduce the ATK of an opponent''s monster attacking this card to 0. This effect may only be used once. The card''s owner chooses when to activate the effect. ', '2500', '2400', 'Effect Monster ', 'Super Rare ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (29.0, 1.0, 'Mystic Lamp ', '1', 'This monster may attack your opponent''s Life Points directly. ', '400', '300', 'Effect Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (30.0, 1.0, 'Steel Scorpion ', '1', 'A non-Machine-Type Monster attacking "Steel Scorpion" will be destroyed at the End Phase of your opponent''s 3rd turn after the attack. ', '250', '300', 'Effect Monster ', 'Common ', 'Earth ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (31.0, 1.0, 'Ocubeam ', '5', 'Frightening in appearance, this creature uses its large eyes and ears to keep track of any movement. ', '1550', '1650', 'Normal Monster ', 'Common ', 'Light ', 'Fairy ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (32.0, 1.0, 'Leghul ', '1', 'This monster may attack your opponent''s Life Points directly. ', '300', '350', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (33.0, 1.0, 'Ooguchi ', '1', 'This monster may attack your opponent''s Life Points directly. ', '300', '250', 'Effect Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (34.0, 1.0, 'Leogun ', '5', 'Huge monster with a lion''s mane similar to the King of Beasts. ', '1750', '1550', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (35.0, 1.0, 'Blast Juggler ', '3', 'Offer this card as a Tribute during your Standby Phase if face-up to destroy 2 face-up monsters with an ATK of 1000 or less. ', '800', '900', 'Effect Monster ', 'Common ', 'Fire ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (36.0, 1.0, 'Jinzo #7 ', '2', 'This monster may attack your opponent''s Life Points directly. ', '500', '400', 'Effect Monster ', 'Common ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (37.0, 1.0, 'Magician of Faith ', '1', 'FLIP: Select 1 Magic Card from your Graveyard and return it to your hand. ', '300', '400', 'Effect Monster ', 'Rare ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (38.0, 1.0, 'Ancient Elf ', '4', 'This elf is rumored to have lived for thousands of years. He leads an army of spirits against his enemies. ', '1450', '1200', 'Normal Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (39.0, 1.0, 'Deapsea Shark ', '5', '"Bottom Dweller" + "Tongyo" ', '1900', '1600', 'Fusion Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (40.0, 1.0, 'Bottom Dweller ', '5', 'This is one sea creature whose wrath is something monsters fear to face. ', '1650', '1700', 'Normal Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (41.0, 1.0, 'Destroyer Golem ', '4', 'A golem with a massive right hand for crushing its victims. ', '1500', '1000', 'Normal Monster ', 'Common ', 'Earth ', 'Rock ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (42.0, 1.0, 'Kaminari Attack ', '5', '"Ocubeam" + "Mega Thunderball" ', '1900', '1400', 'Fusion Monster ', 'Common ', 'Wind ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (43.0, 1.0, 'Rainbow Flower ', '2', 'This monster may attack your opponent''s Life Points directly. ', '400', '500', 'Effect Monster ', 'Common ', 'Earth ', 'Plant ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (44.0, 1.0, 'Morinphen ', '5', 'A strange fiend with long arms and razor sharp talons. ', '1550', '1300', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (45.0, 1.0, 'Mega Thunderball ', '2', 'Rolls along the ground releasing bolts of electricity to attack its enemies. ', '750', '600', 'Normal Monster ', 'Common ', 'Wind ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (46.0, 1.0, 'Tongyo ', '4', 'This monster captures other fish with its long tongue and sucks the energy out of them. ', '1350', '800', 'Normal Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (47.0, 1.0, 'Empress Judge ', '6', '"Queen''s Double" + "Hibikime" ', '2100', '1700', 'Fusion Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (48.0, 1.0, 'Pale Beast ', '4', 'With skin tinged bluish-white, this strange creature is a fearsome sight to behold. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (49.0, 1.0, 'Electric Lizard ', '3', 'A non Zombie-Type monster attacking "Electric Lizard" cannot attack on its following turn. ', '850', '800', 'Effect Monster ', 'Common ', 'Earth ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (50.0, 1.0, 'Hunter Spider ', '5', 'This monster feeds on whatever it catches in its web. ', '1600', '1400', 'Normal Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (51.0, 1.0, 'Ancient Lizard Warrior ', '4', 'Before the dawn of time, this lizard warrior reigned supreme. ', '1400', '1100', 'Normal Monster ', 'Common ', 'Earth ', 'Reptile ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (52.0, 1.0, 'Queen''s Double ', '1', 'This monster may attack your opponent''s Life Points directly. ', '350', '300', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (53.0, 1.0, 'Trent ', '5', 'A guardian of the woods, this massive tree is believed to be immortal. ', '1500', '1800', 'Normal Monster ', 'Common ', 'Earth ', 'Plant ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (54.0, 1.0, 'Disk Magician ', '4', 'This monster hides in a saucer and only appears when executing an attack. ', '1350', '1000', 'Normal Monster ', 'Common ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (55.0, 1.0, 'Hyosube ', '4', 'This amphibian is strong on the attack, but leaves much to be desired when defending. ', '1500', '900', 'Normal Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (56.0, 1.0, 'Hibikime ', '4', 'Confuses enemies with a noise that is harsh to the ears. ', '1450', '1000', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (57.0, 1.0, 'Fake Trap ', NULL, 'When your opponent uses a Magic, Trap, or Effect Monster Card to destroy your Trap Card(s), this card can be destroyed as a substitute for your Trap Cards(s). ', NULL, NULL, 'Trap ', 'Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (58.0, 1.0, 'Tribute to the Doomed ', NULL, 'Discard 1 card from your hand to the Graveyard to destroy 1 Monster Card on the Field (regardless of position). ', NULL, NULL, 'Spell ', 'Super Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (59.0, 1.0, 'Soul Release ', NULL, 'Select up to 5 cards from either you or your opponent''s Graveyard and remove them from the current Duel. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (60.0, 1.0, 'The Cheerful Coffin ', NULL, 'You can discard up to 3 Monster Cards from your hand to the Graveyard. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (61.0, 1.0, 'Change of Heart ', NULL, 'Select and control 1 opposing monster (regardless of position) on the field until the end of your turn. ', NULL, NULL, 'Spell ', 'Ultra Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (62.0, 1.0, 'Baby Dragon ', '3', 'Much more than just a child, this dragon is gifted with untapped power. ', '1200', '700', 'Normal Monster ', 'Common ', 'Wind ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (63.0, 1.0, 'Blackland Fire Dragon ', '4', 'A dragon that dwells in the depths of darkness, its vulnerability lies in its poor eyesight. ', '1500', '800', 'Normal Monster ', 'Common ', 'Dark ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (64.0, 1.0, 'Swamp Battleguard ', '5', 'Increase the ATK of this monster by 500 points for every face-up "Lava Battleguard" on your side of the Field. ', '1800', '1500', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (65.0, 1.0, 'Battle Steer ', '5', 'A bull monster often found in the woods, it charges enemies with a pair of deadly horns. ', '1800', '1300', 'Normal Monster ', 'Common ', 'Earth ', 'Beast-Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (66.0, 1.0, 'Time Wizard ', '2', NULL, '500', '400', 'Effect Monster ', 'Ultra Rare ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (67.0, 1.0, 'Saggi the Dark Clown ', '3', 'This clown appears from nowhere and executes very strange moves to avoid enemy attacks. ', '600', '1500', 'Normal Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (68.0, 1.0, 'Dragon Piper ', '3', 'FLIP: Destroys "Dragon Capture Jar" and turns all face-up Dragon-Type monsters to Attack Position. ', '200', '1800', 'Effect Monster ', 'Common ', 'Fire ', 'Pyro ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (69.0, 1.0, 'Illusionist Faceless Mage ', '5', 'Manipulates enemy attacks with the power of illusions. ', '1200', '2200', 'Normal Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (70.0, 1.0, 'Sangan ', '3', 'When this card is sent from the Field to the Graveyard, move 1 monster with an ATK of 1500 or less from your Deck to your hand. Your deck is then shuffled. ', '1000', '600', 'Effect Monster ', 'Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (71.0, 1.0, 'Great Moth ', '8', 'This monster can only be Special Summoned by offering "Petit Moth" as a Tribute on the 4th of your turns after "Petit Moth" has been equipped with "Cocoon of Evolution". ', '2600', '2500', 'Effect Monster ', 'Rare ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (72.0, 1.0, 'Kuriboh ', '1', 'Discard this card from your hand to the Graveyard to make the damage inflicted to your Life Points by 1 opponent''s monster 0. This effect must be activated during your opponent''s Battle Phase. ', '300', '200', 'Effect Monster ', 'Super Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (73.0, 1.0, 'Jellyfish ', '4', 'An almost invisible, semi-transparent jellyfish that drifts in the sea. ', '1200', '1500', 'Normal Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (74.0, 1.0, 'Castle of Dark Illusions ', '4', NULL, '920', '1930', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (75.0, 1.0, 'King of Yamimakai ', '5', 'Wields the power of darkness to destroy its enemies. ', '2000', '1530', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (76.0, 1.0, 'Catapult Turtle ', '5', NULL, '1000', '2000', 'Effect Monster ', 'Super Rare ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (77.0, 1.0, 'Mystic Horseman ', '4', 'Half man and half horse, this monster is known for its extreme speed. ', '1300', '1550', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (78.0, 1.0, 'Rabid Horseman ', '6', '"Battle Ox" + "Mystic Horseman" ', '2000', '1700', 'Fusion Monster ', 'Common ', 'Earth ', 'Beast-Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (79.0, 1.0, 'Crass Clown ', '4', 'When this card is changed from Attack Position to Defense Position, return 1 monster on your opponent''s side of the Field to the owner''s hand. ', '1350', '1400', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (80.0, 1.0, 'Pumpking the King of Ghosts ', '6', NULL, '1800', '2000', 'Effect Monster ', 'Common ', 'Dark ', 'Zombie ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (81.0, 1.0, 'Dream Clown ', '3', 'When this card is changed from Attack Position to Defense Position, select and destroy 1 monster on your opponent''s side of the field. ', '1200', '900', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (82.0, 1.0, 'Tainted Wisdom ', '3', 'When this card is changed from Attack Position to Defense Position, shuffle your own Deck. ', '1250', '800', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (83.0, 1.0, 'Ancient Brain ', '3', 'A fallen fairy that is powerful in the dark. ', '1000', '700', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (84.0, 1.0, 'Guardian of the Labyrinth ', '4', 'A monster that guards the entrance to the Netherworld. ', '1000', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (85.0, 1.0, 'Prevent Rat ', '4', 'This creature is shielded with a tough hide of hair and is excellent at defending itself. ', '500', '2000', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (86.0, 1.0, 'The Little Swordsman of Aile ', '3', 'Offer 1 monster on your side of the Field as a Tribute to increase this monster''s ATK by 700 points until the end of the turn. ', '800', '1300', 'Effect Monster ', 'Common ', 'Water ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (87.0, 1.0, 'Princess of Tsurugi ', '3', 'FLIP: Inflicts 500 points of Direct Damage to your opponent''s Life Points for each Magic and Trap Card your opponent has on the Field. ', '900', '700', 'Effect Monster ', 'Rare ', 'Wind ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (88.0, 1.0, 'Protector of the Throne ', '4', 'While the king is away, this queen protects his throne with a mighty defense. ', '800', '1500', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (89.0, 1.0, 'Tremendous Fire ', NULL, 'Inflict 1000 points of Direct Damage to your opponent''s Life Points and 500 points of Direct Damage to your Life Points. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (90.0, 1.0, 'Jirai Gumo ', '4', 'When you attack with this card, toss a coin and call it. If you call it right, attack normally. If you call it wrong, reduce your Life Points by half before attacking. ', '2200', '100', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (91.0, 1.0, 'Shadow Ghoul ', '5', 'Increase the ATK of this monster by 100 points for each monster in your Graveyard. ', '1600', '1300', 'Effect Monster ', 'Rare ', 'Dark ', 'Zombie ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (92.0, 1.0, 'Labyrinth Tank ', '7', '"Giga Tech Wolf" + "Cannon Soldier" ', '2400', '2400', 'Fusion Monster ', 'Common ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (93.0, 1.0, 'Ryu-Kishin Powered ', '4', 'A gargoyle enhanced by the powers of darkness. Very sharp talons make it a worthy opponent. ', '1600', '1200', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (94.0, 1.0, 'Bickuribox ', '7', '"Crass Clown" + "Dream Clown" ', '2300', '2000', 'Fusion Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (95.0, 1.0, 'Giltia the D. Knight ', '5', '"Guardian of the Labyrinth" + "Protector of the Throne" ', '1850', '1500', 'Fusion Monster ', 'Common ', 'Light ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (96.0, 1.0, 'Launcher Spider ', '7', 'A mechanical spider with rocket launchers capable of random fire. ', '2200', '2500', 'Normal Monster ', 'Common ', 'Fire ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (97.0, 1.0, 'Giga-Tech Wolf ', '4', 'An iron wolf with razor-sharp fangs that can penetrate any armor. ', '1200', '1400', 'Normal Monster ', 'Common ', 'Fire ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (98.0, 1.0, 'Thunder Dragon ', '5', 'Discard this card from your hand to the Graveyard to add up to 2 "Thunder Dragon" cards from your deck to your hand. This effect is only activated during a Main Phase. ', '1600', '1500', 'Effect Monster ', 'Common ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (99.0, 1.0, '7 Colored Fish ', '4', 'A rare rainbow fish that has never been caught by mortal man. ', '1800', '800', 'Normal Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (100.0, 1.0, 'The Immortal of Thunder ', '4', 'FLIP: You gain 3000 Life Points. After this card is flipped, you lose 5000 Life Points when it is sent from the Field to the Graveyard. ', '1500', '1300', 'Effect Monster ', 'Common ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (101.0, 1.0, 'Punished Eagle ', '6', '"Blue-Winged Crown" + "Niwatori" ', '2100', '1800', 'Fusion Monster ', 'Common ', 'Wind ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (102.0, 1.0, 'Insect Soldiers of the Sky ', '3', 'The ATK of this card increases by 1000 points whenever it attacks a Wind monster. ', '1000', '800', 'Effect Monster ', 'Common ', 'Wind ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (103.0, 1.0, 'Hoshiningen ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Light monsters by 500 points and decreases the ATK of all Dark monsters by 400 points. ', '500', '700', 'Effect Monster ', 'Rare ', 'Light ', 'Fairy ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (104.0, 1.0, 'Musician King ', '5', '"Witch of the Black Forest" + "Lady of Faith" ', '1750', '1500', 'Fusion Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (105.0, 1.0, 'Yado Karu ', '4', 'When this card is changed from Defense Position to Attack Position, you can place any number of cards from your hand at the bottom of your Deck in any order you desire. ', '900', '1700', 'Effect Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (106.0, 1.0, 'Cyber Saurus ', '5', '"Blast Juggler" + "Two-Headed King Rex" ', '1800', '1400', 'Fusion Monster ', 'Common ', 'Earth ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (107.0, 1.0, 'Cannon Soldier ', '4', 'Offer 1 monster on your side of the Field as a Tribute to inflict 500 points of Direct Damage to your opponent''s Life Points. Monsters used for a Tribute Summon or that are offered as Tributes due to other card''s effects are excluded. ', '1400', '1300', 'Effect Monster ', 'Rare ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (108.0, 1.0, 'Muka Muka ', '2', 'Increase the ATK and DEF of this card by 300 points for every card in your hand. ', '600', '300', 'Effect Monster ', 'Rare ', 'Earth ', 'Rock ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (109.0, 1.0, 'The Bistro Butcher ', '4', 'When this card inflicts damage to your opponent, your opponent must draw 2 cards from his/her Deck. ', '1800', '1000', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (110.0, 1.0, 'Star Boy ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Water monsters by 500 points and decreases the ATK of all Fire monsters by 400 points. ', '550', '500', 'Effect Monster ', 'Rare ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (111.0, 1.0, 'Milus Radiant ', '1', 'As long as this card remains face-up on the Field, increase the ATK of all Earth monsters by 500 points and decreases the ATK of all Wind monsters by 400 points. ', '300', '250', 'Effect Monster ', 'Rare ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (112.0, 1.0, 'Flame Cerberus ', '6', 'Known to many as the "Burning Executioner", this monster is capable of burning enemies to cinders. ', '2100', '1800', 'Normal Monster ', 'Common ', 'Fire ', 'Pyro ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (113.0, 1.0, 'Niwatori ', '3', 'Swallows enemies whole and uses their essence as energy. ', '900', '800', 'Normal Monster ', 'Common ', 'Earth ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (114.0, 1.0, 'Dark Elf ', '4', 'This card requires a cost of 1000 of your own Life Points to attack. ', '2000', '800', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (115.0, 1.0, 'Mushroom Man #2 ', '3', 'A player controlling this monster loses 300 Life Points during each of his/her Standby Phases when this card is on the Field. Control of this card is shifted to your opponent by paying 500 Life Points at your End Phase. ', '1250', '800', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (116.0, 1.0, 'Lava Battleguard ', '5', 'Increase the ATK of this monster by 500 points for every face-up "Swamp Battleguard" on your side of the Field. ', '1550', '1800', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (117.0, 1.0, 'Witch of the Black Forest ', '4', 'When this card is sent from the Field to the Graveyard, move 1 monster with an DEF of 1500 or less from your Deck to your hand. Your deck is then shuffled. ', '1100', '1200', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (118.0, 1.0, 'Little Chimera ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Fire monsters by 500 points and decreases the ATK of all Water monsters by 400 points. ', '600', '550', 'Effect Monster ', 'Rare ', 'Fire ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (119.0, 1.0, 'Bladefly ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Wind monsters by 500 points and decreases the ATK of all Earth monsters by 400 points. ', '600', '700', 'Effect Monster ', 'Rare ', 'Wind ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (120.0, 1.0, 'Lady of Faith ', '3', 'Soothes the souls of others by chanting a mysterious spell. ', '1100', '800', 'Normal Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (121.0, 1.0, 'Twin-Headed Thunder Dragon ', '7', '"Thunder Dragon" + "Thunder Dragon" ', '2800', '2100', 'Fusion Monster ', 'Super Rare ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (122.0, 1.0, 'Witch''s Apprentice ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Dark monsters by 500 points and decreases the ATK of all Light monsters by 400 points. ', '550', '500', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (123.0, 1.0, 'Blue-Winged Crown ', '4', 'With hair shaped like a crown and a body incased in bluish white flames, this bird is a formidable sight. ', '1600', '1200', 'Normal Monster ', 'Common ', 'Wind ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (124.0, 1.0, 'Skull Knight ', '7', '"Tainted Wisdom" + "Ancient Brain" ', '2650', '2250', 'Fusion Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (125.0, 1.0, 'Gazelle the King of Mythical Beasts ', '4', 'This monster moves so fast that it looks like an illusion to mortal eyes. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (126.0, 1.0, 'Garnecia Elefantis ', '7', 'A monster so heavy that each step rocks the earth. ', '2400', '2000', 'Normal Monster ', 'Super Rare ', 'Earth ', 'Beast-Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (127.0, 1.0, 'Barrel Dragon ', '7', 'Toss a coin 3 times. If 2 out of 3 results are Heads, destroy 1 monster on your opponent''s side of the Field. This card''s effect can only be used during your own turn once per turn. ', '2600', '2200', 'Effect Monster ', 'Ultra Rare ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (128.0, 1.0, 'Solemn Judgment ', NULL, 'Pay half of your Life Points when your opponent either activates a Magic or Trap Card or summons a monster (including Special Summon) to negate the action and destroy the cards involved. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (129.0, 1.0, 'Magic Jammer ', NULL, 'Discard 1 card from your hand to the Graveyard to negate the activation of a Magic Card and destroy it. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (130.0, 1.0, 'Seven Tools of the Bandit ', NULL, 'Pay 1000 of your Life Points to negate the activation of a Magic Card and destroy it. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (131.0, 1.0, 'Horn of Heaven ', NULL, 'Offer 1 of your own monsters on the Field as a Tribute to negate the summon (including Special Summon) of a monster and destroy it. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (132.0, 1.0, 'Shield & Sword ', NULL, NULL, NULL, NULL, 'Spell ', 'Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (133.0, 1.0, 'Sword of Deep-Seated ', NULL, 'A Monster Card equipped with this card increases its ATK and DEF by 500 points. When this card is sent to the Graveyard, place it on top of your Deck. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (134.0, 1.0, 'Block Attack ', NULL, 'Select 1 of your opponent''s monsters and shift it to Defense Position. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (135.0, 1.0, 'The Unhappy Maiden ', '1', 'When this card is sent to the Graveyard as a result of battle, the Battle Phase for that turn end immediately. ', '0', '100', 'Effect Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (136.0, 1.0, 'Robbin'' Goblin ', NULL, 'Each time 1 of your monsters inflicts damage to your opponent''s Life Points, 1 card is randomly selected from your opponent''s hand and discarded to the Graveyard. ', NULL, NULL, 'Trap ', 'Rare ', NULL, 'Continuous ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (137.0, 1.0, 'Germ Infection ', NULL, 'The ATK of a non Machine-Type monster equipped with this card is decreased by 300 points at each of its Standby Phases. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (138.0, 1.0, 'Paralyzing Potion ', NULL, 'A non Machine-Type monster equipped with this card cannot attack. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (139.0, 1.0, 'Mirror Force ', NULL, 'When an opponent''s monster attacks, negate the attack and destroy all opponent''s monsters in Attack Position. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (140.0, 1.0, 'Ring of Magnetism ', NULL, 'A monster equipped with this card decreases its ATK and DEF by 500 points. All your opponent''s monsters must attack the monster equipped with this card. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (141.0, 1.0, 'Share the Pain ', NULL, 'Offer 1 monster on your side of the Field as a Tribute. Your opponent must select 1 monster on his/her side of the Field and offer it as a Tribute. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (142.0, 1.0, 'Stim-Pack ', NULL, 'A monster equipped with this card increases its ATK by 700 points. Its ATK is then decreased by 200 points at each of its Standby Phases. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (143.0, 1.0, 'Heavy Storm ', NULL, 'Destroys all Magic and Trap Cards on the Field. ', NULL, NULL, 'Spell ', 'Super Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (144.0, 1.0, 'Thousand Dragon ', '7', '"Time Wizard" + "Baby Dragon" ', '2400', '2000', 'Fusion Monster ', 'Secret Rare ', 'Wind ', 'Dragon ', '');

INSERT INTO CARD_MAPPER (ID, GAME_TYPE_ID, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (1.0, 1.0, 'ATK', 'DEF', 'Type ', 'Rarity ', 'Attribute ', 'Sub Type ', '');

INSERT INTO DECK (ID, USER_ID, GAME_TYPE_ID, NAME, IS_PUBLIC) 
VALUES (1.0, 1.0, 1.0, 'Elsõ', 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 1.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 2.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 3.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 4.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 5.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 6.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 7.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 8.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 9.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 10.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 11.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 12.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 13.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 14.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 15.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 16.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 17.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 18.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 19.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 20.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 21.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 22.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 23.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 24.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 25.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 26.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 27.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 28.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 29.0, 1.0);

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID, AMOUNT) 
VALUES (1.0, 30.0, 1.0);
