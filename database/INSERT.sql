SET DEFINE OFF

INSERT INTO USER_ACCOUNT (ID, USER_NAME, PASSWORD, MAIL_ADDRESS) 
VALUES (userAccount_seq.nextval, 'popcornmaci', 'popcornmaci00', 'tilvlike@gmail.com');

INSERT INTO RULE_DECK (ID, MIN_QUANTITY, MAX_QUANTITY, STANDARD_CARD_QUANTITY) 
VALUES (RULEDECK_seq.nextval, 30.0, 60.0, 3.0);

INSERT INTO GAME_TYPE (ID, RULE_DECK_ID, NAME, SHOR_DESCRIPTION, RULE_OF_THE_GAME, IS_PUBLIC) VALUES (gameType_seq.nextval,RULEDECK_seq.currval,'YU-GI-OH!','With the Yu-Gi-Oh! TRADING CARD GAME you can take part in the exciting card game action seen in the family of Yu-Gi-Oh! TV and comic mega-hits. In this game, two players Duel each other using a variety of Monster, Spell, and Trap Cards to defeat their opponent’s monsters and be the first to drop the other’s LP (Life Points) to 0.',
'Constructed Deck format:
	The Main Deck must contain only Legal cards.
    The Main Deck can have a minimum of 40 cards and a maximum of 60 cards. (Only the cards in the Main Deck, not cards in the Extra Deck, count toward this total.)
    A Duelist may not have more than three copies of any Unlimited card included in their Main Deck, Side Deck, and Extra Deck combined.
        If a Forbidden, Limited, or Semi-Limited List is used, the number of copies must not exceed those requirements.
        Cards which have their name permanently treated as that of another card are considered to be the same as that card for deck construction. 
',1);

INSERT INTO USER_ACCOUNT (ID, USER_NAME, PASSWORD, MAIL_ADDRESS) 
VALUES (userAccount_seq.nextval, 'mucsina', 'mucsina00', 'mucsina0130@gmail.com');

INSERT INTO DECK (ID, USER_ID, GAME_TYPE_ID, NAME, IS_PUBLIC) 
VALUES (deck_seq.nextval, userAccount_seq.currval, gameType_seq.currval, 'Elso', 1.0);

INSERT INTO CARD_MAPPER (ID, GAME_TYPE_ID, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (cardMapper_seq.nextval, gameType_seq.currval, 'ATK', 'DEF', 'Type ', 'Rarity ', 'Attribute ', 'Sub Type ', '');

COMMIT;

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Gate Guardian ', '11', 'This card can only be Special Summoned by offering "Sanga of the Thunder", "Kazejin", and "Suijin" on your side of the field as a Tribute. ', '3750', '3400', 'Effect Monster ', 'Secret Rare ', 'Dark ', 'Warrior ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Feral Imp ', '4', 'A playful little fiend that lurks in the dark, waiting to attack an unwary enemy. ', '1300', '1400', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Winged Dragon, Guardian of the Fortress #1 ', '4', 'A dragon commonly found guarding mountain fortresses. Its signature attack is a sweeping dive from out of the blue. ', '1400', '1200', 'Normal Monster ', 'Common ', 'Wind ', 'Dragon ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Summoned Skull ', '6', 'A fiend with dark powers for confusing the enemy. Among the Fiend-Type monsters, this monster boasts considerable force. ', '2500', '1200', 'Normal Monster ', 'Ultra Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Rock Ogre Grotto #1 ', '3', 'Protected by a solid body of rock, this monster throws a bone-shattering punch. ', '800', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Rock ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Armored Lizard ', '4', 'A lizard with a very though hide and a vicious bite. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Reptile ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Killer Needle ', '4', 'A huge bee with exceptional strength that''s particularly dangerous in a swarm. ', '1200', '1000', 'Normal Monster ', 'Common ', 'Wind ', 'Insect ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Larvae Moth ', '2', 'This monster can only be Special Summoned by offering "Petit Moth" as a tribute on the 2nd of your turns after "Petit Moth" has been equipped with "Cocoon of Evolution". ', '500', '400', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Harpie Lady ', '4', 'This human-shaped animal with wings is beautiful to watch but deadly in battle. ', '1300', '1400', 'Normal Monster ', 'Common ', 'Wind ', 'Winged Beast ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Harpie Lady Sisters ', '6', 'This monster can only be Special Summoned with the Magic Card "Elegant Egotist". ', '1950', '2100', 'Effect Monster ', 'Super Rare ', 'Wind ', 'Winged Beast ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Kojikocy ', '4', 'A man-hunter with powerful arms that can crush boulders. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Cocoon of Evolution ', '3', 'You may treat this card as an Equip Magic Card on a face-up "Petit Moth" on the field. When equipped, the ATK and DEF of "Petit Moth" becomes the same as "Cocoon of Evolution". ', '0', '2000', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Crawling Dragon ', '5', 'This weakened dragon can no longer fly, but it is still a deadly force to be reckoned with. ', '1600', '1400', 'Normal Monster ', 'Common ', 'Earth ', 'Dragon ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Armored Zombie ', '3', 'This warrior blindly swings a deadly blade with devastating force. ', '1500', '0', 'Normal Monster ', 'Common ', 'Dark ', 'Zombie ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Mask of Darkness ', '3', 'FLIP: Select 1 Trap Card from your Graveyard and return it to your hand. ', '900', '400', 'Effect Monster ', 'Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Doma the Angel of Silence ', '5', 'This fairy rules over the end of existence. ', '1600', '1400', 'Normal Monster ', 'Common ', 'Dark ', 'Fairy ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'White Magical Hat ', '3', 'When this card inflicts damage to your opponent''s Life Points, 1 card must be discarded randomly from your opponent''s Hand to the Graveyard. ', '1000', '700', 'Effect Monster ', 'Rare ', 'Light ', 'Spellcaster ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Big Eye ', '4', 'FLIP: See the 5 cards from the top of your deck, arrange them in the order desired, and replace them on top of your deck. ', '1200', '1000', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'B. Skull Dragon ', '9', '"Summoned Skull" + "Red-Eyes B. Dragon" ', '3200', '2500', 'Fusion Monster ', 'Ultra Rare ', 'Dark ', 'Dragon ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Masked Sorcerer ', '4', 'When you inflict damage to your opponent''s Life Points with this card, draw a card from your deck. ', '900', '1400', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Roaring Ocean Snake ', '6', '"Mystic Lamp" + "Hyosube" ', '2100', '1800', 'Fusion Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Water Omotics ', '4', 'Transforms the water overflowing from a jar into attacking dragons. ', '1400', '1200', 'Normal Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ground Attacker Bugroth ', '4', 'A surface battle robot that was once used for sea warfare. ', '1500', '1000', 'Normal Monster ', 'Common ', 'Earth ', 'Machine ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Petit Moth ', '1', 'This small but deadly creature is better of avoided. ', '300', '200', 'Normal Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Elegant Egotist ', NULL, 'When there are 1 or more "Harpie Lady" cards on the field. You can Special Summon 1 "Harpie Lady" or "Harpie Lady Sisters" from your hand or Deck. ', NULL, NULL, 'Spell ', 'Rare ', NULL, 'Normal ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Sanga of the Thunder ', '7', 'Reduce the ATK of an opponent''s monster attacking this card to 0. This effect may only be used once. The card''s owner chooses when to activate the effect. ', '2600', '2200', 'Effect Monster ', 'Super Rare ', 'Light ', 'Thunder ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Kazejin ', '7', 'Reduce the ATK of an opponent''s monster attacking this card to 0. This effect may only be used once. The card''s owner chooses when to activate the effect. ', '2400', '2000', 'Effect Monster ', 'Super Rare ', 'Wind ', 'Spellcaster ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Suijin ', '7', 'Reduce the ATK of an opponent''s monster attacking this card to 0. This effect may only be used once. The card''s owner chooses when to activate the effect. ', '2500', '2400', 'Effect Monster ', 'Super Rare ', 'Water ', 'Aqua ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Mystic Lamp ', '1', 'This monster may attack your opponent''s Life Points directly. ', '400', '300', 'Effect Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Steel Scorpion ', '1', 'A non-Machine-Type Monster attacking "Steel Scorpion" will be destroyed at the End Phase of your opponent''s 3rd turn after the attack. ', '250', '300', 'Effect Monster ', 'Common ', 'Earth ', 'Machine ', '');

INSERT INTO DECK_CARDLIST (DECK_ID, CARD_ID) 
VALUES (deck_seq.currval, card_seq.currval );

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ocubeam ', '5', 'Frightening in appearance, this creature uses its large eyes and ears to keep track of any movement. ', '1550', '1650', 'Normal Monster ', 'Common ', 'Light ', 'Fairy ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Leghul ', '1', 'This monster may attack your opponent''s Life Points directly. ', '300', '350', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ooguchi ', '1', 'This monster may attack your opponent''s Life Points directly. ', '300', '250', 'Effect Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Leogun ', '5', 'Huge monster with a lion''s mane similar to the King of Beasts. ', '1750', '1550', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Blast Juggler ', '3', 'Offer this card as a Tribute during your Standby Phase if face-up to destroy 2 face-up monsters with an ATK of 1000 or less. ', '800', '900', 'Effect Monster ', 'Common ', 'Fire ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Jinzo #7 ', '2', 'This monster may attack your opponent''s Life Points directly. ', '500', '400', 'Effect Monster ', 'Common ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Magician of Faith ', '1', 'FLIP: Select 1 Magic Card from your Graveyard and return it to your hand. ', '300', '400', 'Effect Monster ', 'Rare ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ancient Elf ', '4', 'This elf is rumored to have lived for thousands of years. He leads an army of spirits against his enemies. ', '1450', '1200', 'Normal Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Deapsea Shark ', '5', '"Bottom Dweller" + "Tongyo" ', '1900', '1600', 'Fusion Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Bottom Dweller ', '5', 'This is one sea creature whose wrath is something monsters fear to face. ', '1650', '1700', 'Normal Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Destroyer Golem ', '4', 'A golem with a massive right hand for crushing its victims. ', '1500', '1000', 'Normal Monster ', 'Common ', 'Earth ', 'Rock ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Kaminari Attack ', '5', '"Ocubeam" + "Mega Thunderball" ', '1900', '1400', 'Fusion Monster ', 'Common ', 'Wind ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Rainbow Flower ', '2', 'This monster may attack your opponent''s Life Points directly. ', '400', '500', 'Effect Monster ', 'Common ', 'Earth ', 'Plant ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Morinphen ', '5', 'A strange fiend with long arms and razor sharp talons. ', '1550', '1300', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Mega Thunderball ', '2', 'Rolls along the ground releasing bolts of electricity to attack its enemies. ', '750', '600', 'Normal Monster ', 'Common ', 'Wind ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Tongyo ', '4', 'This monster captures other fish with its long tongue and sucks the energy out of them. ', '1350', '800', 'Normal Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Empress Judge ', '6', '"Queen''s Double" + "Hibikime" ', '2100', '1700', 'Fusion Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Pale Beast ', '4', 'With skin tinged bluish-white, this strange creature is a fearsome sight to behold. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Electric Lizard ', '3', 'A non Zombie-Type monster attacking "Electric Lizard" cannot attack on its following turn. ', '850', '800', 'Effect Monster ', 'Common ', 'Earth ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Hunter Spider ', '5', 'This monster feeds on whatever it catches in its web. ', '1600', '1400', 'Normal Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ancient Lizard Warrior ', '4', 'Before the dawn of time, this lizard warrior reigned supreme. ', '1400', '1100', 'Normal Monster ', 'Common ', 'Earth ', 'Reptile ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Queen''s Double ', '1', 'This monster may attack your opponent''s Life Points directly. ', '350', '300', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Trent ', '5', 'A guardian of the woods, this massive tree is believed to be immortal. ', '1500', '1800', 'Normal Monster ', 'Common ', 'Earth ', 'Plant ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Disk Magician ', '4', 'This monster hides in a saucer and only appears when executing an attack. ', '1350', '1000', 'Normal Monster ', 'Common ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Hyosube ', '4', 'This amphibian is strong on the attack, but leaves much to be desired when defending. ', '1500', '900', 'Normal Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Hibikime ', '4', 'Confuses enemies with a noise that is harsh to the ears. ', '1450', '1000', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Fake Trap ', NULL, 'When your opponent uses a Magic, Trap, or Effect Monster Card to destroy your Trap Card(s), this card can be destroyed as a substitute for your Trap Cards(s). ', NULL, NULL, 'Trap ', 'Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Tribute to the Doomed ', NULL, 'Discard 1 card from your hand to the Graveyard to destroy 1 Monster Card on the Field (regardless of position). ', NULL, NULL, 'Spell ', 'Super Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Soul Release ', NULL, 'Select up to 5 cards from either you or your opponent''s Graveyard and remove them from the current Duel. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'The Cheerful Coffin ', NULL, 'You can discard up to 3 Monster Cards from your hand to the Graveyard. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Change of Heart ', NULL, 'Select and control 1 opposing monster (regardless of position) on the field until the end of your turn. ', NULL, NULL, 'Spell ', 'Ultra Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Baby Dragon ', '3', 'Much more than just a child, this dragon is gifted with untapped power. ', '1200', '700', 'Normal Monster ', 'Common ', 'Wind ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Blackland Fire Dragon ', '4', 'A dragon that dwells in the depths of darkness, its vulnerability lies in its poor eyesight. ', '1500', '800', 'Normal Monster ', 'Common ', 'Dark ', 'Dragon ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Swamp Battleguard ', '5', 'Increase the ATK of this monster by 500 points for every face-up "Lava Battleguard" on your side of the Field. ', '1800', '1500', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Battle Steer ', '5', 'A bull monster often found in the woods, it charges enemies with a pair of deadly horns. ', '1800', '1300', 'Normal Monster ', 'Common ', 'Earth ', 'Beast-Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Time Wizard ', '2', NULL, '500', '400', 'Effect Monster ', 'Ultra Rare ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Saggi the Dark Clown ', '3', 'This clown appears from nowhere and executes very strange moves to avoid enemy attacks. ', '600', '1500', 'Normal Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Dragon Piper ', '3', 'FLIP: Destroys "Dragon Capture Jar" and turns all face-up Dragon-Type monsters to Attack Position. ', '200', '1800', 'Effect Monster ', 'Common ', 'Fire ', 'Pyro ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Illusionist Faceless Mage ', '5', 'Manipulates enemy attacks with the power of illusions. ', '1200', '2200', 'Normal Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Sangan ', '3', 'When this card is sent from the Field to the Graveyard, move 1 monster with an ATK of 1500 or less from your Deck to your hand. Your deck is then shuffled. ', '1000', '600', 'Effect Monster ', 'Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Great Moth ', '8', 'This monster can only be Special Summoned by offering "Petit Moth" as a Tribute on the 4th of your turns after "Petit Moth" has been equipped with "Cocoon of Evolution". ', '2600', '2500', 'Effect Monster ', 'Rare ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Kuriboh ', '1', 'Discard this card from your hand to the Graveyard to make the damage inflicted to your Life Points by 1 opponent''s monster 0. This effect must be activated during your opponent''s Battle Phase. ', '300', '200', 'Effect Monster ', 'Super Rare ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Jellyfish ', '4', 'An almost invisible, semi-transparent jellyfish that drifts in the sea. ', '1200', '1500', 'Normal Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Castle of Dark Illusions ', '4', NULL, '920', '1930', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'King of Yamimakai ', '5', 'Wields the power of darkness to destroy its enemies. ', '2000', '1530', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Catapult Turtle ', '5', NULL, '1000', '2000', 'Effect Monster ', 'Super Rare ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Mystic Horseman ', '4', 'Half man and half horse, this monster is known for its extreme speed. ', '1300', '1550', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Rabid Horseman ', '6', '"Battle Ox" + "Mystic Horseman" ', '2000', '1700', 'Fusion Monster ', 'Common ', 'Earth ', 'Beast-Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Crass Clown ', '4', 'When this card is changed from Attack Position to Defense Position, return 1 monster on your opponent''s side of the Field to the owner''s hand. ', '1350', '1400', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Pumpking the King of Ghosts ', '6', NULL, '1800', '2000', 'Effect Monster ', 'Common ', 'Dark ', 'Zombie ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Dream Clown ', '3', 'When this card is changed from Attack Position to Defense Position, select and destroy 1 monster on your opponent''s side of the field. ', '1200', '900', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Tainted Wisdom ', '3', 'When this card is changed from Attack Position to Defense Position, shuffle your own Deck. ', '1250', '800', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ancient Brain ', '3', 'A fallen fairy that is powerful in the dark. ', '1000', '700', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Guardian of the Labyrinth ', '4', 'A monster that guards the entrance to the Netherworld. ', '1000', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Prevent Rat ', '4', 'This creature is shielded with a tough hide of hair and is excellent at defending itself. ', '500', '2000', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'The Little Swordsman of Aile ', '3', 'Offer 1 monster on your side of the Field as a Tribute to increase this monster''s ATK by 700 points until the end of the turn. ', '800', '1300', 'Effect Monster ', 'Common ', 'Water ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Princess of Tsurugi ', '3', 'FLIP: Inflicts 500 points of Direct Damage to your opponent''s Life Points for each Magic and Trap Card your opponent has on the Field. ', '900', '700', 'Effect Monster ', 'Rare ', 'Wind ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Protector of the Throne ', '4', 'While the king is away, this queen protects his throne with a mighty defense. ', '800', '1500', 'Normal Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Tremendous Fire ', NULL, 'Inflict 1000 points of Direct Damage to your opponent''s Life Points and 500 points of Direct Damage to your Life Points. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Jirai Gumo ', '4', 'When you attack with this card, toss a coin and call it. If you call it right, attack normally. If you call it wrong, reduce your Life Points by half before attacking. ', '2200', '100', 'Effect Monster ', 'Common ', 'Earth ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Shadow Ghoul ', '5', 'Increase the ATK of this monster by 100 points for each monster in your Graveyard. ', '1600', '1300', 'Effect Monster ', 'Rare ', 'Dark ', 'Zombie ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Labyrinth Tank ', '7', '"Giga Tech Wolf" + "Cannon Soldier" ', '2400', '2400', 'Fusion Monster ', 'Common ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ryu-Kishin Powered ', '4', 'A gargoyle enhanced by the powers of darkness. Very sharp talons make it a worthy opponent. ', '1600', '1200', 'Normal Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Bickuribox ', '7', '"Crass Clown" + "Dream Clown" ', '2300', '2000', 'Fusion Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Giltia the D. Knight ', '5', '"Guardian of the Labyrinth" + "Protector of the Throne" ', '1850', '1500', 'Fusion Monster ', 'Common ', 'Light ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Launcher Spider ', '7', 'A mechanical spider with rocket launchers capable of random fire. ', '2200', '2500', 'Normal Monster ', 'Common ', 'Fire ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Giga-Tech Wolf ', '4', 'An iron wolf with razor-sharp fangs that can penetrate any armor. ', '1200', '1400', 'Normal Monster ', 'Common ', 'Fire ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Thunder Dragon ', '5', 'Discard this card from your hand to the Graveyard to add up to 2 "Thunder Dragon" cards from your deck to your hand. This effect is only activated during a Main Phase. ', '1600', '1500', 'Effect Monster ', 'Common ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, '7 Colored Fish ', '4', 'A rare rainbow fish that has never been caught by mortal man. ', '1800', '800', 'Normal Monster ', 'Common ', 'Water ', 'Fish ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'The Immortal of Thunder ', '4', 'FLIP: You gain 3000 Life Points. After this card is flipped, you lose 5000 Life Points when it is sent from the Field to the Graveyard. ', '1500', '1300', 'Effect Monster ', 'Common ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Punished Eagle ', '6', '"Blue-Winged Crown" + "Niwatori" ', '2100', '1800', 'Fusion Monster ', 'Common ', 'Wind ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Insect Soldiers of the Sky ', '3', 'The ATK of this card increases by 1000 points whenever it attacks a Wind monster. ', '1000', '800', 'Effect Monster ', 'Common ', 'Wind ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Hoshiningen ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Light monsters by 500 points and decreases the ATK of all Dark monsters by 400 points. ', '500', '700', 'Effect Monster ', 'Rare ', 'Light ', 'Fairy ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Musician King ', '5', '"Witch of the Black Forest" + "Lady of Faith" ', '1750', '1500', 'Fusion Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Yado Karu ', '4', 'When this card is changed from Defense Position to Attack Position, you can place any number of cards from your hand at the bottom of your Deck in any order you desire. ', '900', '1700', 'Effect Monster ', 'Common ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Cyber Saurus ', '5', '"Blast Juggler" + "Two-Headed King Rex" ', '1800', '1400', 'Fusion Monster ', 'Common ', 'Earth ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Cannon Soldier ', '4', 'Offer 1 monster on your side of the Field as a Tribute to inflict 500 points of Direct Damage to your opponent''s Life Points. Monsters used for a Tribute Summon or that are offered as Tributes due to other card''s effects are excluded. ', '1400', '1300', 'Effect Monster ', 'Rare ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Muka Muka ', '2', 'Increase the ATK and DEF of this card by 300 points for every card in your hand. ', '600', '300', 'Effect Monster ', 'Rare ', 'Earth ', 'Rock ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'The Bistro Butcher ', '4', 'When this card inflicts damage to your opponent, your opponent must draw 2 cards from his/her Deck. ', '1800', '1000', 'Effect Monster ', 'Common ', 'Dark ', 'Fiend ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Star Boy ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Water monsters by 500 points and decreases the ATK of all Fire monsters by 400 points. ', '550', '500', 'Effect Monster ', 'Rare ', 'Water ', 'Aqua ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Milus Radiant ', '1', 'As long as this card remains face-up on the Field, increase the ATK of all Earth monsters by 500 points and decreases the ATK of all Wind monsters by 400 points. ', '300', '250', 'Effect Monster ', 'Rare ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Flame Cerberus ', '6', 'Known to many as the "Burning Executioner", this monster is capable of burning enemies to cinders. ', '2100', '1800', 'Normal Monster ', 'Common ', 'Fire ', 'Pyro ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Niwatori ', '3', 'Swallows enemies whole and uses their essence as energy. ', '900', '800', 'Normal Monster ', 'Common ', 'Earth ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Dark Elf ', '4', 'This card requires a cost of 1000 of your own Life Points to attack. ', '2000', '800', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Mushroom Man #2 ', '3', 'A player controlling this monster loses 300 Life Points during each of his/her Standby Phases when this card is on the Field. Control of this card is shifted to your opponent by paying 500 Life Points at your End Phase. ', '1250', '800', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Lava Battleguard ', '5', 'Increase the ATK of this monster by 500 points for every face-up "Swamp Battleguard" on your side of the Field. ', '1550', '1800', 'Effect Monster ', 'Common ', 'Earth ', 'Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Witch of the Black Forest ', '4', 'When this card is sent from the Field to the Graveyard, move 1 monster with an DEF of 1500 or less from your Deck to your hand. Your deck is then shuffled. ', '1100', '1200', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Little Chimera ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Fire monsters by 500 points and decreases the ATK of all Water monsters by 400 points. ', '600', '550', 'Effect Monster ', 'Rare ', 'Fire ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Bladefly ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Wind monsters by 500 points and decreases the ATK of all Earth monsters by 400 points. ', '600', '700', 'Effect Monster ', 'Rare ', 'Wind ', 'Insect ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Lady of Faith ', '3', 'Soothes the souls of others by chanting a mysterious spell. ', '1100', '800', 'Normal Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Twin-Headed Thunder Dragon ', '7', '"Thunder Dragon" + "Thunder Dragon" ', '2800', '2100', 'Fusion Monster ', 'Super Rare ', 'Light ', 'Thunder ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Witch''s Apprentice ', '2', 'As long as this card remains face-up on the Field, increase the ATK of all Dark monsters by 500 points and decreases the ATK of all Light monsters by 400 points. ', '550', '500', 'Effect Monster ', 'Rare ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Blue-Winged Crown ', '4', 'With hair shaped like a crown and a body incased in bluish white flames, this bird is a formidable sight. ', '1600', '1200', 'Normal Monster ', 'Common ', 'Wind ', 'Winged Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Skull Knight ', '7', '"Tainted Wisdom" + "Ancient Brain" ', '2650', '2250', 'Fusion Monster ', 'Common ', 'Dark ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Gazelle the King of Mythical Beasts ', '4', 'This monster moves so fast that it looks like an illusion to mortal eyes. ', '1500', '1200', 'Normal Monster ', 'Common ', 'Earth ', 'Beast ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Garnecia Elefantis ', '7', 'A monster so heavy that each step rocks the earth. ', '2400', '2000', 'Normal Monster ', 'Super Rare ', 'Earth ', 'Beast-Warrior ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Barrel Dragon ', '7', 'Toss a coin 3 times. If 2 out of 3 results are Heads, destroy 1 monster on your opponent''s side of the Field. This card''s effect can only be used during your own turn once per turn. ', '2600', '2200', 'Effect Monster ', 'Ultra Rare ', 'Dark ', 'Machine ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Solemn Judgment ', NULL, 'Pay half of your Life Points when your opponent either activates a Magic or Trap Card or summons a monster (including Special Summon) to negate the action and destroy the cards involved. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Magic Jammer ', NULL, 'Discard 1 card from your hand to the Graveyard to negate the activation of a Magic Card and destroy it. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Seven Tools of the Bandit ', NULL, 'Pay 1000 of your Life Points to negate the activation of a Magic Card and destroy it. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Horn of Heaven ', NULL, 'Offer 1 of your own monsters on the Field as a Tribute to negate the summon (including Special Summon) of a monster and destroy it. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Counter ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Shield & Sword ', NULL, NULL, NULL, NULL, 'Spell ', 'Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Sword of Deep-Seated ', NULL, 'A Monster Card equipped with this card increases its ATK and DEF by 500 points. When this card is sent to the Graveyard, place it on top of your Deck. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Block Attack ', NULL, 'Select 1 of your opponent''s monsters and shift it to Defense Position. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'The Unhappy Maiden ', '1', 'When this card is sent to the Graveyard as a result of battle, the Battle Phase for that turn end immediately. ', '0', '100', 'Effect Monster ', 'Common ', 'Light ', 'Spellcaster ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Robbin'' Goblin ', NULL, 'Each time 1 of your monsters inflicts damage to your opponent''s Life Points, 1 card is randomly selected from your opponent''s hand and discarded to the Graveyard. ', NULL, NULL, 'Trap ', 'Rare ', NULL, 'Continuous ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Germ Infection ', NULL, 'The ATK of a non Machine-Type monster equipped with this card is decreased by 300 points at each of its Standby Phases. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Paralyzing Potion ', NULL, 'A non Machine-Type monster equipped with this card cannot attack. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Mirror Force ', NULL, 'When an opponent''s monster attacks, negate the attack and destroy all opponent''s monsters in Attack Position. ', NULL, NULL, 'Trap ', 'Ultra Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Ring of Magnetism ', NULL, 'A monster equipped with this card decreases its ATK and DEF by 500 points. All your opponent''s monsters must attack the monster equipped with this card. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Share the Pain ', NULL, 'Offer 1 monster on your side of the Field as a Tribute. Your opponent must select 1 monster on his/her side of the Field and offer it as a Tribute. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Stim-Pack ', NULL, 'A monster equipped with this card increases its ATK by 700 points. Its ATK is then decreased by 200 points at each of its Standby Phases. ', NULL, NULL, 'Spell ', 'Common ', NULL, 'Equip ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Heavy Storm ', NULL, 'Destroys all Magic and Trap Cards on the Field. ', NULL, NULL, 'Spell ', 'Super Rare ', NULL, 'Normal ', '');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, COST, DESCRIPTION, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2, FIELD3, FIELD4, FIELD5) 
VALUES (card_seq.nextval, gameType_seq.currval, 'Thousand Dragon ', '7', '"Time Wizard" + "Baby Dragon" ', '2400', '2000', 'Fusion Monster ', 'Secret Rare ', 'Wind ', 'Dragon ', '');

INSERT INTO RULE_DECK (ID, MIN_QUANTITY, MAX_QUANTITY, STANDARD_CARD_QUANTITY) 
VALUES (RULEDECK_seq.nextval, 60.0, 400.0, 4.0);

INSERT INTO GAME_TYPE (ID, RULE_DECK_ID, NAME, SHOR_DESCRIPTION, RULE_OF_THE_GAME, IS_PUBLIC) VALUES (gameType_seq.nextval,RULEDECK_seq.currval,'Magic:The Gathering',
'In Magic: The Gathering, you are a Planeswalker, one of the greatest mages in the Multiverse. Using a deck of Magic cards, you cast spells, summon creatures to fight for you, and battle against other Planeswalkers in an attempt to take your opponent down.',
' You play a Magic game with your own customized deck. You build it yourself using whichever Magic cards you want. 
There are two rules: Your deck must have at least 60 cards, and your deck can’t have more than four copies of any single card (except for basic lands). 
The rest is up to you, but here are some guidelines for getting started:
   Lands 
. A good rule of thumb is that 2/5 of your deck should be lands. A 60-card deck usually has 
about 24 lands.
 Creatures 
. Creatures account for 20 to 30 cards in a typical 60-card deck. Choose creatures that have 
a variety of mana costs. Low-cost creatures are potent early on, but high-cost creatures can quickly 
win a game once they enter the battlefield.
 Other  cards 
. Artifacts, enchantments, planeswalkers, instants, and sorceries round out your deck.
  After you play with your new deck for a while, you can start to customize it. Take out cards you don’t feel are working 
well and add new cards you want to try. Th  e best part about trading card games is being able to play with whatever 
cards you want, so start experimenting!',1);

INSERT INTO CARD_MAPPER (ID, GAME_TYPE_ID, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, FIELD1, FIELD2) 
VALUES (cardMapper_seq.nextval, gameType_seq.currval, 'Power', 'Toughness', 'Card Type ', 'Flavor text');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aegis Automaton', 'Artifact Creature — Construct', '{2}', '0', '3', '{4}{W}: Return another target creature you control to its owner''s hand.', 'The streets of Ghirapur have become dangerous. It''s good to have a dependable companion.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aerial Modification', 'Enchantment — Aura', '{4}{W}', NULL, NULL, 'Enchant creature or VehicleAs long as enchanted permanent is a Vehicle, it''s a creature in addition to its other types.Enchanted creature gets +2/+2 and has flying.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aeronaut Admiral', 'Creature — Human Pilot', '{3}{W}', '3', '1', 'FlyingVehicles you control have flying.', 'The Consulate recruits its best pilots from the League of Aeronauts. Many go on to command entire fleets.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aether Chaser', 'Creature — Human Artificer', '{1}{R}', '2', '1', 'First strikeWhen Aether Chaser enters the battlefield, you get {E}{E} (two energy counters).Whenever Aether Chaser attacks, you may pay {E}{E}. If you do, create a 1/1 colorless Servo artifact creature token.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aether Herder', 'Creature — Elf Artificer Druid', '{3}{G}', '3', '3', 'When Aether Herder enters the battlefield, you get {E}{E} (two energy counters).Whenever Aether Herder attacks, you may pay {E}{E}. If you do, create a 1/1 colorless Servo artifact creature token.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aether Inspector', 'Creature — Dwarf Artificer', '{3}{W}', '2', '3', 'VigilanceWhen Aether Inspector enters the battlefield, you get {E}{E} (two energy counters).Whenever Aether Inspector attacks, you may pay {E}{E}. If you do, create a 1/1 colorless Servo artifact creature token.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aether Poisoner', 'Creature — Human Artificer', '{1}{B}', '1', '1', 'Deathtouch (Any amount of damage this deals to a creature is enough to destroy it.)When Aether Poisoner enters the battlefield, you get {E}{E} (two energy counters).Whenever Aether Poisoner attacks, you may pay {E}{E}. If you do, create a 1/1 colorless Servo artifact creature token.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aether Swooper', 'Creature — Vedalken Artificer', '{1}{U}', '1', '2', 'FlyingWhen Aether Swooper enters the battlefield, you get {E}{E} (two energy counters).Whenever Aether Swooper attacks, you may pay {E}{E}. If you do, create a 1/1 colorless Servo artifact creature token.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aethergeode Miner', 'Creature — Dwarf Scout', '{1}{W}', '3', '1', 'Whenever Aethergeode Miner attacks, you get {E}{E} (two energy counters).Pay {E}{E}: Exile Aethergeode Miner, then return it to the battlefield under its owner''s control.', 'Gremlins in the wild feed on nodules of pure aether, which are also prized by miners.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aethersphere Harvester', 'Artifact — Vehicle', '{3}', '3', '5', 'FlyingWhen Aethersphere Harvester enters the battlefield, you get {E}{E} (two energy counters).Pay {E}: Aethersphere Harvester gains lifelink until end of turn.Crew 1 (Tap any number of creatures you control with total power 1 or more: This Vehicle becomes an artifact creature until end of turn.)', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aetherstream Leopard', 'Creature — Cat', '{2}{G}', '2', '3', 'TrampleWhen Aetherstream Leopard enters the battlefield, you get {E} (an energy counter).Whenever Aetherstream Leopard attacks, you may pay {E}. If you do, it gets +2/+0 until end of turn.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aethertide Whale', 'Creature — Whale', '{4}{U}{U}', '6', '4', 'FlyingWhen Aethertide Whale enters the battlefield, you get {E}{E}{E}{E}{E}{E} (six energy counters).Pay {E}{E}{E}{E}: Return Aethertide Whale to its owner''s hand.', '"To survive up here, I''ve learned when to use my harpoon and when to just enjoy the view."—Kadhu, skywhaler');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aetherwind Basker', 'Creature — Lizard', '{4}{G}{G}{G}', '7', '7', 'TrampleWhenever Aetherwind Basker enters the battlefield or attacks, you get {E} (an energy counter) for each creature you control.Pay {E}: Aetherwind Basker gets +1/+1 until end of turn.', 'Its frill inspired the design of efficient aether collectors.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Aid from the Cowl', 'Enchantment', '{3}{G}{G}', NULL, NULL, 'Revolt — At the beginning of your end step, if a permanent you controlled left the battlefield this turn, reveal the top card of your library. If it''s a permanent card, you may put it onto the battlefield. Otherwise, you may put it on the bottom of your library.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Airdrop Aeronauts', 'Creature — Dwarf Scout', '{3}{W}{W}', '4', '3', 'FlyingRevolt — When Airdrop Aeronauts enters the battlefield, if a permanent you controlled left the battlefield this turn, you gain 5 life.', '"Supplies inbound. Keep that pressure on."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ajani Unyielding', 'Legendary Planeswalker — Ajani', '{4}{G}{W}', NULL, NULL, '+2: Reveal the top three cards of your library. Put all nonland permanent cards revealed this way into your hand and the rest on the bottom of your library in any order.?2: Exile target creature. Its controller gains life equal to its power.?9: Put five +1/+1 counters on each creature you control and five loyalty counters on each other planeswalker you control.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ajani, Valiant Protector', 'Legendary Planeswalker — Ajani', '{4}{G}{W}', NULL, NULL, '+2: Put two +1/+1 counters on up to one target creature.+1: Reveal cards from the top of your library until you reveal a creature card. Put that card into your hand and the rest on the bottom of your library in a random order.?11: Put X +1/+1 counters on target creature, where X is your life total. That creature gains trample until end of turn.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ajani''s Aid', 'Enchantment', '{2}{G}{W}', NULL, NULL, 'When Ajani''s Aid enters the battlefield, you may search your library and/or graveyard for a card named Ajani, Valiant Protector, reveal it, and put it into your hand. If you search your library this way, shuffle it.Sacrifice Ajani''s Aid: Prevent all combat damage a creature of your choice would deal this turn.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ajani''s Comrade', 'Creature — Elf Soldier', '{1}{G}', '2', '2', 'TrampleAt the beginning of combat on your turn, if you control an Ajani planeswalker, put a +1/+1 counter on Ajani''s Comrade.', '"I will go where the lion-man leads."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Alley Evasion', 'Instant', '{W}', NULL, NULL, 'Choose one —• Target creature you control gets +1/+2 until end of turn.• Return target creature you control to its owner''s hand.', '"Sure, you know the law. But I know the streets."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Alley Strangler', 'Creature — Aetherborn Rogue', '{2}{B}', '2', '3', 'Menace', '"You never know what day might be your last."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Audacious Infiltrator', 'Creature — Dwarf Rogue', '{1}{W}', '3', '1', 'Audacious Infiltrator can''t be blocked by artifact creatures.', '"This little critter can turn all of you to scrap in under thirty seconds! Come on, who wants to be the first to go? Try and stop me!"');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Augmenting Automaton', 'Artifact Creature — Construct', '{1}', '1', '1', '{1}{B}: Augmenting Automaton gets +1/+1 until end of turn.', 'When you have taught an automaton how to build others of its kind, it is a small step to make it build itself.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Baral, Chief of Compliance', 'Legendary Creature — Human Wizard', '{1}{U}', '1', '3', 'Instant and sorcery spells you cast cost {1} less to cast.Whenever a spell or ability you control counters a spell, you may draw a card. If you do, discard a card.', '"The echo of silence is music to my ears."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Baral''s Expertise', 'Sorcery', '{3}{U}{U}', NULL, NULL, 'Return up to three target artifacts and/or creatures to their owners'' hands.You may cast a card with converted mana cost 4 or less from your hand without paying its mana cost.', '"Get out of my way."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Barricade Breaker', 'Artifact Creature — Juggernaut', '{7}', '7', '5', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Barricade Breaker attacks each combat if able.', '"The Consulate sought to crush us. Let''s give them a taste of their own medicine."—Venkat Dasai, renegade commander');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Bastion Enforcer', 'Creature — Dwarf Soldier', '{2}{W}', '3', '2', NULL, 'Headquartered at the Bastion of the Honorable, the Consulate''s enforcers are charged with the impossible task of keeping the peace.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Bastion Inventor', 'Creature — Vedalken Artificer', '{5}{U}', '4', '4', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Hexproof (This creature can''t be the target of spells or abilities your opponents control.)', '"This armor transcends the limitations of mere flesh and bone."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Battle at the Bridge', 'Sorcery', '{X}{B}', NULL, NULL, 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Target creature gets -X/-X until end of turn. You gain X life.', '"This is bigger than you. All of you."—Tezzeret');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Call for Unity', 'Enchantment', '{3}{W}{W}', NULL, NULL, 'Revolt — At the beginning of your end step, if a permanent you controlled left the battlefield this turn, put a unity counter on Call for Unity.Creatures you control get +1/+1 for each unity counter on Call for Unity.', 'The "leaking spire" stands for liberation from Consulate control.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Caught in the Brights', 'Enchantment — Aura', '{2}{W}', NULL, NULL, 'Enchant creatureEnchanted creature can''t attack or block.When a Vehicle you control attacks, exile enchanted creature.', 'While hunting aether, a gremlin may ignore other stimuli, including threats to its own life.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Chandra''s Revolution', 'Sorcery', '{3}{R}', NULL, NULL, 'Chandra''s Revolution deals 4 damage to target creature. Tap target land. That land doesn''t untap during its controller''s next untap step.', 'Chandra was driven by her anger, directed particularly at the man who had taken her father from her.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Cogwork Assembler', 'Artifact Creature — Assembly-Worker', '{3}', '2', '3', '{7}: Create a token that''s a copy of target artifact. That token gains haste. Exile it at the beginning of the next end step.', 'Duplication is neither thievery nor flattery. It is efficiency.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Consulate Crackdown', 'Enchantment', '{3}{W}{W}', NULL, NULL, 'When Consulate Crackdown enters the battlefield, exile all artifacts your opponents control until Consulate Crackdown leaves the battlefield.', '"The workshops are silent. Our creations have been seized. They have killed what made us alive."—Pia Nalaar');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Consulate Dreadnought', 'Artifact — Vehicle', '{1}', '7', '11', 'Crew 6 (Tap any number of creatures you control with total power 6 or more: This Vehicle becomes an artifact creature until end of turn.)', '"It''s like they planted another Bastion right in the middle of the harbor."—Bes Tavani, Bomat merchant');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Consulate Turret', 'Artifact', '{3}', NULL, NULL, '{T}: You get {E} (an energy counter).{T}, Pay {E}{E}{E}: Consulate Turret deals 2 damage to target player.', '"Our watchtowers are well positioned. Why don''t we arm them?"—Enforcer-Chief Ranaj');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Conviction', 'Enchantment — Aura', '{1}{W}', NULL, NULL, 'Enchant creatureEnchanted creature gets +1/+3.{W}: Return Conviction to its owner''s hand.', '"There is no greater coward than one who believes in nothing."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Countless Gears Renegade', 'Creature — Dwarf Artificer', '{1}{W}', '2', '2', 'Revolt — When Countless Gears Renegade enters the battlefield, if a permanent you controlled left the battlefield this turn, create a 1/1 colorless Servo artifact creature token.', '"Go forth and cause trouble, my little one!"');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Crackdown Construct', 'Artifact Creature — Construct', '{4}', '2', '2', 'Whenever you activate an ability of an artifact or creature that isn''t a mana ability, Crackdown Construct gets +1/+1 until end of turn.', '"All buildings are subject to search. Resistance will be punished."—Enforcer-Chief Ranaj');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Cruel Finality', 'Instant', '{2}{B}', NULL, NULL, 'Target creature gets -2/-2 until end of turn. Scry 1. (Look at the top card of your library. You may put that card on the bottom of your library.)', 'Bitter the bite of a demon''s steel, and deep the abyss it opens.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Daredevil Dragster', 'Artifact — Vehicle', '{3}', '4', '4', 'At end of combat, if Daredevil Dragster attacked or blocked this combat, put a velocity counter on it. Then if it has two or more velocity counters on it, sacrifice it and draw two cards.Crew 2 (Tap any number of creatures you control with total power 2 or more: This Vehicle becomes an artifact creature until end of turn.)', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Daring Demolition', 'Sorcery', '{2}{B}{B}', NULL, NULL, 'Destroy target creature or Vehicle.', 'Living so close to death gives the aetherborn an unusual perspective on risk.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Dark Intimations', 'Sorcery', '{2}{U}{B}{R}', NULL, NULL, 'Each opponent sacrifices a creature or planeswalker, then discards a card. You return a creature or planeswalker card from your graveyard to your hand, then draw a card.When you cast a Bolas planeswalker spell, exile Dark Intimations from your graveyard. That planeswalker enters the battlefield with an additional loyalty counter on it.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Dawnfeather Eagle', 'Creature — Bird', '{4}{W}', '3', '3', 'FlyingWhen Dawnfeather Eagle enters the battlefield, creatures you control get +1/+1 and gain vigilance until end of turn.', '"It came to rest upon the angel''s arm, and then the weight of their gazes fell upon me."—Aeronaut''s journal');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Deadeye Harpooner', 'Creature — Dwarf Warrior', '{2}{W}', '2', '2', 'Revolt — When Deadeye Harpooner enters the battlefield, if a permanent you controlled left the battlefield this turn, destroy target tapped creature an opponent controls.', '"It seems there''s even better hunting down here."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Decommission', 'Instant', '{2}{W}', NULL, NULL, 'Destroy target artifact or enchantment.Revolt — If a permanent you controlled left the battlefield this turn, you gain 3 life.', '"A key weakness in the design is its vulnerability to repeated, forceful blows."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Defiant Salvager', 'Creature — Aetherborn Artificer', '{2}{B}', '2', '2', 'Sacrifice an artifact or creature: Put a +1/+1 counter on Defiant Salvager. Activate this ability only any time you could cast a sorcery.', '"I didn''t survive that crash just so I could fall to the likes of you."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Deft Dismissal', 'Instant', '{3}{W}', NULL, NULL, 'Deft Dismissal deals 3 damage divided as you choose among one, two, or three target attacking or blocking creatures.', '"With spy thopters all around, how can the consuls be so blind to Tezzeret''s manipulations?"—Gideon Jura');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Destructive Tampering', 'Sorcery', '{2}{R}', NULL, NULL, 'Choose one —• Destroy target artifact.• Creatures without flying can''t block this turn.', '"I don''t think they''ll appreciate my . . . adjustments."—Karavin, renegade saboteur');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Disallow', 'Instant', '{1}{U}{U}', NULL, NULL, 'Counter target spell, activated ability, or triggered ability. (Mana abilities can''t be targeted.)', '"How easily your flames are quenched."—Baral, Chief of Compliance');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Dispersal Technician', 'Creature — Vedalken Artificer', '{4}{U}', '3', '2', 'When Dispersal Technician enters the battlefield, you may return target artifact to its owner''s hand.', 'As renegade forces closed in on the Aether Spire, Consulate blockades failed one by one.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Druid of the Cowl', 'Creature — Elf Druid', '{1}{G}', '1', '3', '{T}: Add {G} to your mana pool.', '"The wild tangle of the Cowl provides sanctuary to life that watched the first buildings rise."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Efficient Construction', 'Enchantment', '{3}{U}', NULL, NULL, 'Whenever you cast an artifact spell, create a 1/1 colorless Thopter artifact creature token with flying.', 'For some of Ghirapur''s aerowrights, building thopters is a byproduct of larger construction efforts.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Embraal Gear-Smasher', 'Creature — Human Warrior', '{2}{R}', '2', '3', '{T}, Sacrifice an artifact: Embraal Gear-Smasher deals 2 damage to each opponent.', '"A well-made wrench is a versatile, indispensable tool."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Enraged Giant', 'Creature — Giant', '{5}{R}', '4', '4', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Trample, haste', 'When fighting spilled over into Giant''s Walk, the aether weapons and swooping airships angered the normally placid creatures.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Exquisite Archangel', 'Creature — Angel', '{5}{W}{W}', '5', '5', 'FlyingIf you would lose the game, instead exile Exquisite Archangel and your life total becomes equal to your starting life total.', 'A living invention born of a grand design.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Fatal Push', 'Instant', '{B}', NULL, NULL, 'Destroy target creature if it has converted mana cost 2 or less.Revolt — Destroy that creature if it has converted mana cost 4 or less instead if a permanent you controlled left the battlefield this turn.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Felidar Guardian', 'Creature — Cat Beast', '{3}{W}', '1', '4', 'When Felidar Guardian enters the battlefield, you may exile another target permanent you control, then return that card to the battlefield under its owner''s control.', 'The loyalty of a felidar is hard won but worth the effort.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Fen Hauler', 'Creature — Insect', '{6}{B}', '5', '5', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Fen Hauler can''t be blocked by artifact creatures.', '"Success is found where others fear to look."—Ara, renegade smuggler');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Filigree Crawler', 'Artifact Creature — Insect', '{4}', '2', '2', 'When Filigree Crawler dies, create a 1/1 colorless Thopter artifact creature token with flying.', '"The most harmonious designs are based on relationships found in nature."—Venand Kapur, the Gearherder');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Foundry Assembler', 'Artifact Creature — Assembly-Worker', '{5}', '3', '3', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)', '"They never tire, they never complain, and they never ask questions. Build more."—Ivash, Consulate inventor');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Foundry Hornet', 'Creature — Insect', '{3}{B}', '2', '3', 'FlyingWhen Foundry Hornet enters the battlefield, if you control a creature with a +1/+1 counter on it, creatures your opponents control get -1/-1 until end of turn.', 'Its buzzing is easily mistaken for the hum of a thopter''s wings.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Fourth Bridge Prowler', 'Creature — Human Rogue', '{B}', '1', '1', 'When Fourth Bridge Prowler enters the battlefield, you may have target creature get -1/-1 until end of turn.', 'Renegades run the gamut from lofty sages to petty thieves.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Freejam Regent', 'Creature — Dragon', '{4}{R}{R}', '4', '4', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Flying{1}{R}: Freejam Regent gets +2/+0 until end of turn.', 'The dragons perching in Freejam''s towers symbolize the zone''s fierce independence.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Frontline Rebel', 'Creature — Human Warrior', '{2}{R}', '3', '3', 'Frontline Rebel attacks each combat if able.', '"Will you be strong and stand with me?"');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ghirapur Osprey', 'Creature — Bird', '{2}{W}', '2', '2', 'Flying', 'Many airship captains keep pets that share their love of the sky.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Gifted Aetherborn', 'Creature — Aetherborn Vampire', '{B}{B}', '2', '3', 'Deathtouch, lifelink', 'A few aetherborn have discovered a way to sustain their own existences at the cost of an insatiable hunger for the life essence of other beings.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Glint-Sleeve Siphoner', 'Creature — Human Rogue', '{1}{B}', '2', '1', 'MenaceWhenever Glint-Sleeve Siphoner enters the battlefield or attacks, you get {E} (an energy counter).At the beginning of your upkeep, you may pay {E}{E}. If you do, you draw a card and you lose 1 life.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Gonti''s Aether Heart', 'Legendary Artifact', '{6}', NULL, NULL, 'Whenever Gonti''s Aether Heart or another artifact enters the battlefield under your control, you get {E}{E} (two energy counters).Pay {E}{E}{E}{E}{E}{E}{E}{E}, Exile Gonti''s Aether Heart: Take an extra turn after this one.', 'Despite the magic that sustains Gonti''s life, the crime lord is often described as heartless.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Gonti''s Machinations', 'Enchantment', '{B}', NULL, NULL, 'Whenever you lose life for the first time each turn, you get {E}. (You get an energy counter. Damage causes loss of life.)Pay {E}{E}, Sacrifice Gonti''s Machinations: Each opponent loses 3 life. You gain life equal to the life lost this way.', '"I am confident that all our enterprises can benefit from this little revolution."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Greenbelt Rampager', 'Creature — Elephant', '{G}', '3', '4', 'When Greenbelt Rampager enters the battlefield, pay {E}{E} (two energy counters). If you can''t, return Greenbelt Rampager to its owner''s hand and you get {E}.', 'Subtlety is not a necessary part of sabotage.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Greenwheel Liberator', 'Creature — Elf Warrior', '{1}{G}', '2', '1', 'Revolt — Greenwheel Liberator enters the battlefield with two +1/+1 counters on it if a permanent you controlled left the battlefield this turn.', '"I will not rest until every vestige of the Consulate—every banner, flag, and standard—has fallen."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Gremlin Infestation', 'Enchantment — Aura', '{3}{R}', NULL, NULL, 'Enchant artifactAt the beginning of your end step, Gremlin Infestation deals 2 damage to enchanted artifact''s controller.When enchanted artifact is put into a graveyard, create a 2/2 red Gremlin creature token.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Heart of Kiran', 'Legendary Artifact — Vehicle', '{2}', '4', '4', 'Flying, vigilanceCrew 3 (Tap any number of creatures you control with total power 3 or more: This Vehicle becomes an artifact creature until end of turn.)You may remove a loyalty counter from a planeswalker you control rather than pay Heart of Kiran''s crew cost.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Herald of Anguish', 'Creature — Demon', '{5}{B}{B}', '5', '5', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)FlyingAt the beginning of your end step, each opponent discards a card.{1}{B}, Sacrifice an artifact: Target creature gets -2/-2 until end of turn.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Heroic Intervention', 'Instant', '{1}{G}', NULL, NULL, 'Permanents you control gain hexproof and indestructible until end of turn.', '"Wherever the strong would harm the weak, I will be there."—Ajani Goldmane');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Hidden Herbalists', 'Creature — Human Druid', '{1}{G}', '2', '2', 'Revolt — When Hidden Herbalists enters the battlefield, if a permanent you controlled left the battlefield this turn, add {G}{G} to your mana pool.', 'In the cellars beneath Narnam House, a strange and deadly garden grows.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Hidden Stockpile', 'Enchantment', '{W}{B}', NULL, NULL, 'Revolt — At the beginning of your end step, if a permanent you controlled left the battlefield this turn, create a 1/1 colorless Servo artifact creature token.{1}, Sacrifice a creature: Scry 1.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Highspire Infusion', 'Instant', '{1}{G}', NULL, NULL, 'Target creature gets +3/+3 until end of turn. You get {E}{E} (two energy counters).', '"If nothing else, the Inventors'' Fair taught us that we''re only beginning to discover aether''s true potential."—Kershan Danil, Highspire artisan');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Hinterland Drake', 'Creature — Drake', '{2}{U}', '2', '3', 'FlyingHinterland Drake can''t block artifact creatures.', '"As a kid, I dreamed of flying on those wild drakes. They inspired me to build wings of my own."—Nadja Cloudtoucher, aerowright');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Hope of Ghirapur', 'Legendary Artifact Creature — Thopter', '{1}', '1', '1', 'FlyingSacrifice Hope of Ghirapur: Until your next turn, target player who was dealt combat damage by Hope of Ghirapur this turn can''t cast noncreature spells.', 'The renegades mounted an aether disruptor aboard a lightweight thopter to destroy Tezzeret''s Planar Bridge.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Hungry Flames', 'Instant', '{2}{R}', NULL, NULL, 'Hungry Flames deals 3 damage to target creature and 2 damage to target player.', 'In the hold of the Heart of Kiran, Chandra answered Dovin Baan''s sabotage with an explosive retort.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ice Over', 'Enchantment — Aura', '{1}{U}', NULL, NULL, 'Enchant artifact or creatureEnchanted permanent doesn''t untap during its controller''s untap step.', '"Slow the Consulate with whatever you''ve got!"—Jasi Ganin, master siphoner');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Illusionist''s Stratagem', 'Instant', '{3}{U}', NULL, NULL, 'Exile up to two target creatures you control, then return those cards to the battlefield under their owner''s control.Draw a card.', '"When everything hangs on a single moment, be sure you choose the right moment."—Jace Beleren');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Implement of Combustion', 'Artifact', '{1}', NULL, NULL, '{R}, Sacrifice Implement of Combustion: It deals 1 damage to target player.When Implement of Combustion is put into a graveyard from the battlefield, draw a card.', 'A dream of fire lies coiled inside, waiting for its glorious awakening.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Implement of Examination', 'Artifact', '{3}', NULL, NULL, '{U}, Sacrifice Implement of Examination: Draw a card.When Implement of Examination is put into a graveyard from the battlefield, draw a card.', 'A tool to see the unseen.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Implement of Ferocity', 'Artifact', '{1}', NULL, NULL, '{G}, Sacrifice Implement of Ferocity: Put a +1/+1 counter on target creature. Activate this ability only any time you could cast a sorcery.When Implement of Ferocity is put into a graveyard from the battlefield, draw a card.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Implement of Improvement', 'Artifact', '{1}', NULL, NULL, '{W}, Sacrifice Implement of Improvement: You gain 2 life.When Implement of Improvement is put into a graveyard from the battlefield, draw a card.', 'A mystery in metal.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Implement of Malice', 'Artifact', '{2}', NULL, NULL, '{B}, Sacrifice Implement of Malice: Target player discards a card. Activate this ability only any time you could cast a sorcery.When Implement of Malice is put into a graveyard from the battlefield, draw a card.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Indomitable Creativity', 'Sorcery', '{X}{R}{R}{R}', NULL, NULL, 'Destroy X target artifacts and/or creatures. For each permanent destroyed this way, its controller reveals cards from the top of his or her library until an artifact or creature card is revealed and exiles that card. Those players put the exiled cards onto the battlefield, then shuffle their libraries.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Inspiring Roar', 'Sorcery', '{3}{W}', NULL, NULL, 'Put a +1/+1 counter on each creature you control.', '"This is about more than aether or inventions. Tezzeret''s schemes must be stopped!"—Ajani Goldmane');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Inspiring Statuary', 'Artifact', '{3}', NULL, NULL, 'Nonartifact spells you cast have improvise. (Your artifacts can help cast those spells. Each artifact you tap after you''re done activating mana abilities pays for {1}.)', 'Ghirapur''s most celebrated inventors have been immortalized in clockwork.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Invigorated Rampage', 'Instant', '{1}{R}', NULL, NULL, 'Choose one —• Target creature gets +4/+0 and gains trample until end of turn.• Two target creatures each get +2/+0 and gain trample until end of turn.', 'Gremlins can change from pest to problem to plague in the span of a moment.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ironclad Revolutionary', 'Creature — Aetherborn Artificer', '{4}{B}{B}', '4', '4', 'When Ironclad Revolutionary enters the battlefield, you may sacrifice an artifact. If you do, put two +1/+1 counters on Ironclad Revolutionary and each opponent loses 2 life.', 'As the rebellion spread, renegade ingenuity outpaced the Consulate''s greatest fears.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Irontread Crusher', 'Artifact — Vehicle', '{4}', '6', '6', 'Crew 3 (Tap any number of creatures you control with total power 3 or more: This Vehicle becomes an artifact creature until end of turn.)', '"We''ve been through a lot together."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Kari Zev, Skyship Raider', 'Legendary Creature — Human Pirate', '{1}{R}', '1', '3', 'First strike, menaceWhenever Kari Zev, Skyship Raider attacks, create a legendary 2/1 red Monkey creature token named Ragavan that''s tapped and attacking. Exile that token at end of combat.', 'Aboard her ship, the Dragon''s Smile, Kari follows no one''s rules but her own.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Kari Zev''s Expertise', 'Sorcery', '{1}{R}{R}', NULL, NULL, 'Gain control of target creature or Vehicle until end of turn. Untap it. It gains haste until end of turn.You may cast a card with converted mana cost 2 or less from your hand without paying its mana cost.', '"I was made for this!"');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Lathnu Sailback', 'Creature — Lizard', '{4}{R}', '5', '4', NULL, 'Travelers to Lathnu, high on the Devra Cliffs, need not fear the political strife of Ghirapur . . . but they have other dangers to worry about.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Leave in the Dust', 'Instant', '{3}{U}', NULL, NULL, 'Return target nonland permanent to its owner''s hand.Draw a card.', 'The daredevil racers of the Derby Crows, long at odds with the Consulate, were quick to join the renegades in open revolt.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Lifecraft Awakening', 'Instant', '{X}{G}', NULL, NULL, 'Put X +1/+1 counters on target artifact you control. If it isn''t a creature or Vehicle, it becomes a 0/0 Construct artifact creature.', '"It was made, yes, but that does not mean it cannot grow."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Lifecraft Cavalry', 'Creature — Elf Warrior', '{4}{G}', '4', '4', 'TrampleRevolt — Lifecraft Cavalry enters the battlefield with two +1/+1 counters on it if a permanent you controlled left the battlefield this turn.', '"I do not ask you to be tame. I only ask you to be true."—Rishkar, Peema renegade');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Lifecrafter''s Bestiary', 'Artifact', '{3}', NULL, NULL, 'At the beginning of your upkeep, scry 1.Whenever you cast a creature spell, you may pay {G}. If you do, draw a card.', '"Inspiration is found by looking outward."—Oviya Pashiri, sage lifecrafter');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Lifecrafter''s Gift', 'Instant', '{3}{G}', NULL, NULL, 'Put a +1/+1 counter on target creature, then put a +1/+1 counter on each creature you control with a +1/+1 counter on it.', 'The best engineers recognize when a problem has already been solved.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Lightning Runner', 'Creature — Human Warrior', '{3}{R}{R}', '2', '2', 'Double strike, hasteWhenever Lightning Runner attacks, you get {E}{E} (two energy counters), then you may pay {E}{E}{E}{E}{E}{E}{E}{E}. If you pay, untap all creatures you control, and after this phase, there is an additional combat phase.', '"Catch me if you can."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Maulfist Revolutionary', 'Creature — Human Warrior', '{1}{G}{G}', '3', '3', 'TrampleWhen Maulfist Revolutionary enters the battlefield or dies, for each kind of counter on target permanent or player, give that permanent or player another counter of that kind.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Maverick Thopterist', 'Creature — Human Artificer', '{3}{U}{R}', '2', '2', 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)When Maverick Thopterist enters the battlefield, create two 1/1 colorless Thopter artifact creature tokens with flying.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Mechanized Production', 'Enchantment — Aura', '{2}{U}{U}', NULL, NULL, 'Enchant artifact you controlAt the beginning of your upkeep, create a token that''s a copy of enchanted artifact. Then if you control eight or more artifacts with the same name as one another, you win the game.', '"Give me eight walkers, I''ll give you the city."—Dovin Baan');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Merchant''s Dockhand', 'Artifact Creature — Construct', '{1}', '1', '2', '{3}{U}, {T}, Tap X untapped artifacts you control: Look at the top X cards of your library. Put one of them into your hand and the rest on the bottom of your library in any order.', '"If you can build it, we can move it."—Bes Tavani, Bomat merchant');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Metallic Mimic', 'Artifact Creature — Shapeshifter', '{2}', '2', '1', 'As Metallic Mimic enters the battlefield, choose a creature type.Metallic Mimic is the chosen type in addition to its other types.Each other creature you control of the chosen type enters the battlefield with an additional +1/+1 counter on it.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Metallic Rebuke', 'Instant', '{2}{U}', NULL, NULL, 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Counter target spell unless its controller pays {3}.', '"Too little, too late. The machine is in motion."—Tezzeret');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Midnight Entourage', 'Creature — Aetherborn Rogue', '{2}{B}{B}', '3', '3', 'Other Aetherborn you control get +1/+1.Whenever Midnight Entourage or another Aetherborn you control dies, you draw a card and you lose 1 life.', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Mobile Garrison', 'Artifact — Vehicle', '{3}', '3', '4', 'Whenever Mobile Garrison attacks, untap another target artifact or creature you control.Crew 2 (Tap any number of creatures you control with total power 2 or more: This Vehicle becomes an artifact creature until end of turn.)', NULL);

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Monstrous Onslaught', 'Sorcery', '{3}{G}{G}', NULL, NULL, 'Monstrous Onslaught deals X damage divided as you choose among any number of target creatures, where X is the greatest power among creatures you control as you cast Monstrous Onslaught.', '"Regards from Peema."—Rishkar');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Narnam Renegade', 'Creature — Elf Warrior', '{G}', '1', '2', 'DeathtouchRevolt — Narnam Renegade enters the battlefield with a +1/+1 counter on it if a permanent you controlled left the battlefield this turn.', '"I do not need to pierce your heart to still its beating."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Natural Obsolescence', 'Instant', '{1}{G}', NULL, NULL, 'Put target artifact on the bottom of its owner''s library.', '"It is folly to believe your precious inventions will endure. All things return to the soil."—Nirav, Tirahar elder');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Negate', 'Instant', '{1}{U}', NULL, NULL, 'Counter target noncreature spell.', '"It is fascinating to see how the people of this plane replicate magical techniques without a natural gift. Also frustrating."—Jace Beleren');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Night Market Aeronaut', 'Creature — Aetherborn Warrior', '{3}{B}', '2', '2', 'FlyingRevolt — Night Market Aeronaut enters the battlefield with a +1/+1 counter on it if a permanent you controlled left the battlefield this turn.', '"Death might come tomorrow, but today—today I am alive."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Night Market Guard', 'Artifact Creature — Construct', '{3}', '3', '1', 'Night Market Guard can block an additional creature each combat.', '"One head watches for Consulate enforcers. The other watches for renegade thieves."—Crime Lord Gonti');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Oath of Ajani', 'Legendary Enchantment', '{G}{W}', NULL, NULL, 'When Oath of Ajani enters the battlefield, put a +1/+1 counter on each creature you control.Planeswalker spells you cast cost {1} less to cast.', '"Until all have found their place, I will keep watch."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ornithopter', 'Artifact Creature — Thopter', '{0}', '0', '2', 'Flying', '"You want to know what we are fighting for? Look at the wonder in that child''s eyes."—Pia Nalaar');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Outland Boar', 'Creature — Boar', '{2}{R}{G}', '4', '4', 'Outland Boar can''t be blocked by creatures with power 2 or less.', 'The vibrant forest of Peema is awash with aether. Its animals are stronger, faster, and more aggressive than their counterparts elsewhere.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Pacification Array', 'Artifact', '{1}', NULL, NULL, '{2}, {T}: Tap target artifact or creature.', 'The Consulate had access to thousands of innovative devices displayed at the Inventors'' Fair. A few small changes transformed some of them from marvels of ingenuity to instruments of oppression.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Paradox Engine', 'Legendary Artifact', '{5}', NULL, NULL, 'Whenever you cast a spell, untap all nonland permanents you control.', '"One look at this glorious item convinced me that Kaladesh deserved my full attention. Sure enough, my time here has yielded exquisite fruit."—Tezzeret');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Peacewalker Colossus', 'Artifact — Vehicle', '{3}', '6', '6', '{1}{W}: Another target Vehicle you control becomes an artifact creature until end of turn.Crew 4 (Tap any number of creatures you control with total power 4 or more: This Vehicle becomes an artifact creature until end of turn.)', '"Peace? Its sole purpose is fear."—Saheeli Rai');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Peema Aether-Seer', 'Creature — Elf Druid', '{3}{G}', '3', '2', 'When Peema Aether-Seer enters the battlefield, you get an amount of {E} (energy counters) equal to the greatest power among creatures you control.Pay {E}{E}{E}: Target creature blocks this turn if able.', '"The Great Conduit connects us all."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Pendulum of Patterns', 'Artifact', '{2}', NULL, NULL, 'When Pendulum of Patterns enters the battlefield, you gain 3 life.{5}, {T}, Sacrifice Pendulum of Patterns: Draw a card.', 'Its elaborate designs reveal secrets of aether''s flow.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Perilous Predicament', 'Instant', '{4}{B}', NULL, NULL, 'Each opponent sacrifices an artifact creature and a nonartifact creature.', 'Comrades in life. Comrades in death.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Pia''s Revolution', 'Enchantment', '{2}{R}', NULL, NULL, 'Whenever a nontoken artifact is put into your graveyard from the battlefield, return that card to your hand unless target opponent has Pia''s Revolution deal 3 damage to him or her.', 'Pia''s passion was directed at the big picture—at making real, lasting change.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Planar Bridge', 'Legendary Artifact', '{6}', NULL, NULL, '{8}, {T}: Search your library for a permanent card, put it onto the battlefield, then shuffle your library.', '"It is finished. Now the real work can begin."—Tezzeret');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Precise Strike', 'Instant', '{R}', NULL, NULL, 'Target creature gets +1/+0 and gains first strike until end of turn.', '"Hit where it hurts, and always hit first."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Prey Upon', 'Sorcery', '{G}', NULL, NULL, 'Target creature you control fights target creature you don''t control. (Each deals damage equal to its power to the other.)', 'It is the nature of the strong to survive.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Prizefighter Construct', 'Artifact Creature — Construct', '{5}', '6', '2', NULL, 'The Scrappers, an underground group with a passion for automaton brawls, had renegade leanings even before the Consulate''s crackdown. It didn''t take long for them to lend their best brawlers to the conflict.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Quicksmith Rebel', 'Creature — Human Artificer', '{3}{R}', '3', '2', 'When Quicksmith Rebel enters the battlefield, target artifact you control gains "{T}: This artifact deals 2 damage to target creature or player" for as long as you control Quicksmith Rebel.', '"Let''s add just a bit more stopping power."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Quicksmith Spy', 'Creature — Human Artificer', '{3}{U}', '2', '3', 'When Quicksmith Spy enters the battlefield, target artifact you control gains "{T}: Draw a card" for as long as you control Quicksmith Spy.', '"Let''s just broaden its surveillance lens."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ravenous Intruder', 'Creature — Gremlin', '{1}{R}', '1', '2', 'Sacrifice an artifact: Ravenous Intruder gets +2/+2 until end of turn.', '"I''ve made some fine acquisitions of late, so I''m planning to make commensurate improvements to my security systems. I have a consultant coming tomorrow."—Kurna Majan, Luminary League');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Reckless Racer', 'Creature — Human Pilot', '{2}{R}', '2', '3', 'First strikeWhenever Reckless Racer becomes tapped, you may discard a card. If you do, draw a card.', 'Illegal street races turned out to be perfect practice for avoiding Consulate patrols.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Release the Gremlins', 'Sorcery', '{X}{X}{R}', NULL, NULL, 'Destroy X target artifacts. Create X 2/2 red Gremlin creature tokens.', '"Being an inventor means knowing how to use the tools at hand to make something great—or to bring it down."—Pia Nalaar');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Renegade Map', 'Artifact', '{1}', NULL, NULL, 'Renegade Map enters the battlefield tapped.{T}, Sacrifice Renegade Map: Search your library for a basic land card, reveal it, put it into your hand, then shuffle your library.', '"We have safe houses in every zone, but you''ll never find one without this."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Renegade Rallier', 'Creature — Human Warrior', '{1}{G}{W}', '3', '2', 'Revolt — When Renegade Rallier enters the battlefield, if a permanent you controlled left the battlefield this turn, return target permanent card with converted mana cost 2 or less from your graveyard to the battlefield.', '"This fight belongs to us all."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Renegade Wheelsmith', 'Creature — Dwarf Pilot', '{1}{R}{W}', '3', '2', 'Whenever Renegade Wheelsmith becomes tapped, target creature can''t block this turn.', 'Many veterans of the Ovalchase racetrack turned their talents to the renegade cause.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Renegade''s Getaway', 'Instant', '{2}{B}', NULL, NULL, 'Target permanent gains indestructible until end of turn. Create a 1/1 colorless Servo artifact creature token. (Effects that say "destroy" don''t destroy a permanent with indestructible, and if it''s a creature, it can''t be destroyed by damage.)', 'You can''t fight what you can''t find.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Reservoir Walker', 'Artifact Creature — Construct', '{5}', '3', '3', 'When Reservoir Walker enters the battlefield, you gain 3 life and get {E}{E}{E} (three energy counters).', 'Renegade supply lines are, by necessity, mobile and difficult to disrupt.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Resourceful Return', 'Sorcery', '{1}{B}', NULL, NULL, 'Return target creature card from your graveyard to your hand. If you control an artifact, draw a card.', 'When the salvage team brought in the shattered gearhulk, a wave of excitement swept through the renegade foundry.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Restoration Specialist', 'Creature — Dwarf Artificer', '{1}{W}', '2', '1', '{W}, Sacrifice Restoration Specialist: Return up to one target artifact card and up to one target enchantment card from your graveyard to your hand.', 'Dwarves'' tools are priceless heirlooms handed down through generations.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Reverse Engineer', 'Sorcery', '{3}{U}{U}', NULL, NULL, 'Improvise (Your artifacts can help cast this spell. Each artifact you tap after you''re done activating mana abilities pays for {1}.)Draw three cards.', 'The Hold, an illegal research facility in a derelict merchant ship, became a wellspring of renegade intelligence.');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Ridgescale Tusker', 'Creature — Beast', '{3}{G}{G}', '5', '5', 'When Ridgescale Tusker enters the battlefield, put a +1/+1 counter on each other creature you control.', '"Each creature holds a solution to a problem, a lesson to be learned."—Oviya Pashiri, sage lifecrafter');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Rishkar, Peema Renegade', 'Legendary Creature — Elf Druid', '{2}{G}', '2', '2', 'When Rishkar, Peema Renegade enters the battlefield, put a +1/+1 counter on each of up to two target creatures.Each creature you control with a counter on it has "{T}: Add {G} to your mana pool."', '"Aether is the soul of Kaladesh, and all souls should be free."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Rishkar''s Expertise', 'Sorcery', '{4}{G}{G}', NULL, NULL, 'Draw cards equal to the greatest power among creatures you control.You may cast a card with converted mana cost 5 or less from your hand without paying its mana cost.', '"Control the Great Conduit? You might as well try to divert a river with your hands."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Rogue Refiner', 'Creature — Human Rogue', '{1}{G}{U}', '3', '2', 'When Rogue Refiner enters the battlefield, draw a card and you get {E}{E} (two energy counters).', '"It''s natural, it''s all around us, and it''s there for the taking. Just try and tell me what I''m doing is wrong."');

INSERT INTO CARD (ID, GAME_TYPE_ID, NAME, FIELD1, COST, BATTLE_ATTRIBUTE_1, BATTLE_ATTRIBUTE_2, DESCRIPTION, FIELD2)
VALUES (card_seq.nextval, gameType_seq.currval, 'Salvage Scuttler', 'Creature — Crab', '{4}{U}', '4', '4', 'Whenever Salvage Scuttler attacks, return an artifact you control to its owner''s hand.', 'A hermit crab goes through many shells in its lifetime, and not all are natural in origin.');


COMMIT;


