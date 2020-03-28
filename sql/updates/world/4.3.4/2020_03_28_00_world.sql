DELETE FROM `script_spline_chain_waypoints` WHERE `entry` = 42383;
INSERT INTO `script_spline_chain_waypoints` (`entry`, `chainId`, `splineId`, `wpId`, `x`, `y`, `z`) VALUES 
(42383, 1, 0, 0, -9786.339, 814.03644, 25.98245),
(42383, 1, 0, 1, -9790.656, 821.21704, 27.443325),
(42383, 1, 0, 2, -9804.906, 837.46704, 29.193325),
(42383, 1, 0, 3, -9817.906, 853.21704, 27.193325),
(42383, 1, 0, 4, -9836.156, 879.71704, 27.193325),
(42383, 1, 0, 5, -9841.973, 892.3976, 28.4042),
(42383, 2, 0, 0, -9841.973, 892.3976, 28.4042),
(42383, 2, 0, 1,  -9851.893, 889.75696, 30.017067),
(42383, 2, 0, 2,  -9871.893, 903.75696, 32.267067),
(42383, 2, 0, 3,  -9886.393, 935.00696, 32.767067),
(42383, 2, 0, 4,  -9873.643, 952.25696, 31.517067),
(42383, 2, 0, 5,  -9876.143, 967.25696, 31.267067),
(42383, 2, 0, 6,  -9888.643, 981.50696, 31.267067),
(42383, 2, 0, 7,  -9898.393, 985.75696, 31.267067),
(42383, 2, 0, 8,  -9914.143, 987.00696, 31.517067),
(42383, 2, 0, 9,  -9935.643, 995.75696, 31.767067),
(42383, 2, 0, 10, -9954.893, 1003.50696, 31.517067),
(42383, 2, 0, 11, -9969.143, 1004.25696, 31.517067),
(42383, 2, 0, 12, -9990.893, 995.50696, 32.017067),
(42383, 2, 0, 13, -10009.893, 987.50696, 32.267067),
(42383, 2, 0, 14, -10024.643, 981.50696, 32.767067),
(42383, 2, 0, 15, -10033.643, 982.75696, 33.017067),
(42383, 2, 0, 16, -10041.643, 987.00696, 33.267067),
(42383, 2, 0, 17, -10057.143, 999.50696, 33.017067),
(42383, 2, 0, 18, -10072.393, 1006.75696, 33.517067),
(42383, 2, 0, 19, -10081.393, 1008.50696, 34.017067),
(42383, 2, 0, 20, -10091.893, 1004.75696, 35.267067),
(42383, 2, 0, 21, -10103.143, 996.50696, 38.017067),
(42383, 2, 0, 22, -10116.143, 990.00696, 38.267067),
(42383, 2, 0, 23, -10129.393, 990.75696, 36.767067),
(42383, 2, 0, 24, -10157.143, 988.25696, 34.267067),
(42383, 2, 0, 25, -10173.893, 986.25696, 34.517067),
(42383, 2, 0, 26, -10192.893, 985.50696, 33.517067),
(42383, 2, 0, 27, -10209.393, 992.75696, 32.517067),
(42383, 2, 0, 28, -10222.143, 995.25696, 32.517067),
(42383, 2, 0, 29, -10246.393, 994.25696, 31.267067),
(42383, 2, 0, 30, -10257.893, 992.00696, 31.517067),
(42383, 2, 0, 31, -10266.143, 984.25696, 31.517067),
(42383, 2, 0, 32, -10273.143, 973.25696, 31.267067),
(42383, 2, 0, 33, -10281.893, 965.25696, 31.267067),
(42383, 2, 0, 34, -10290.393, 964.00696, 31.267067),
(42383, 2, 0, 35, -10304.893, 967.00696, 31.267067),
(42383, 2, 0, 36, -10313.393, 969.75696, 31.267067),
(42383, 2, 0, 37, -10323.893, 976.00696, 31.267067),
(42383, 2, 0, 38, -10334.813, 979.11633, 31.129934),
(42383, 3, 0, 0, -10334.813, 979.11633, 31.129934),
(42383, 3, 0, 1, -10324.161, 973.53296, 31.393368),
(42383, 3, 0, 2, -10323.161, 960.53296, 33.393368),
(42383, 3, 0, 3, -10341.161, 942.53296, 32.893368),
(42383, 3, 0, 4, -10362.009, 926.94965, 31.656803);

DELETE FROM `script_spline_chain_meta` WHERE `entry` = 42383;
INSERT INTO `script_spline_chain_meta` (`entry`, `chainId`, `splineId`, `expectedDuration`, `msUntilNext`) VALUES 
(42383, 1, 0, 38802, 0),
(42383, 2, 0, 244285, 0),
(42383, 3, 0, 30748, 0);

UPDATE `creature` SET `ScriptName`='npc_westfall_refugee_bridge_to_sentinelhill' WHERE  `guid`=280420;
UPDATE `creature_template` SET `ScriptName`='npc_westfall_hobo_cart' WHERE  `entry`=42400;

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 42399;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(42399, 42403, 0, 1, 'Hobo Cart - Hobo Goods (Boots)', 8, 0),
(42399, 42401, 1, 1, 'Hobo Cart - Hobo Goods (Bag)', 8, 0),
(42399, 42401, 2, 1, 'Hobo Cart - Hobo Goods (Bag)', 8, 0),
(42399, 42402, 3, 1, 'Hobo Cart - Hobo Goods (Poop)', 8, 0);

DELETE FROM `creature_text` WHERE `CreatureID` = 42383 AND `GroupID` IN (11, 12, 13, 14, 15);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(42383, 11, 0, 'What the hell happened here?', 12, 7, 100, 1, 0, 0, 42318, 'Transient'),
(42383, 12, 0, 'What\'s happened to us? We\'re in worse shape now than when the Defias ran amok!', 12, 7, 100, 6, 0, 0, 42321, 'Transient'),
(42383, 13, 0, 'Let\'s get out of here before they try and pin this on us.', 12, 7, 100, 1, 0, 0, 42323, 'Transient'),
(42383, 14, 0, 'We\'re just trying to get a decent meal and maybe a comfortable night\'s sleep.', 12, 7, 100, 0, 0, 0, 42342, 'Transient to Transient'),
(42383, 15, 0, 'Let\'s get the hell out of here. I hope this place burns to the ground.', 12, 7, 100, 396, 0, 0, 42348, 'Transient to Transient');

DELETE FROM `creature_text` WHERE `CreatureID` = 42400;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(42400, 0, 0, 'Looks like the Furlbrow\'s were murdered...', 12, 7, 100, 396, 0, 0, 42320, 'West Plains Drifter'),
(42400, 1, 0, 'Yep. That King Varian is good for nothin\'.', 12, 7, 100, 396, 0, 0, 42322, 'West Plains Drifter'),
(42400, 2, 0, 'Good call.', 12, 7, 100, 396, 0, 0, 42324, 'West Plains Drifter'),
(42400, 3, 0, 'Dirty, rotten pig-lickers. You\'ll get your come-uppance some day.', 12, 7, 100, 396, 0, 0, 42347, 'West Plains Drifter to Transient');

DELETE FROM `creature_text` WHERE `CreatureID` = 42407;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(42407, 0, 0, 'WHOA THERE, BUDDY!', 12, 7, 100, 3, 0, 0, 42340, 'Sentinel Hill Guard to Transient'),
(42407, 1, 0, 'Where do you think you two are going?', 12, 7, 100, 0, 0, 0, 42341, 'Sentinel Hill Guard to Transient'),
(42407, 2, 0, 'Can\'t you read, pal? Probably not, huh?', 12, 7, 100, 0, 0, 0, 42344, 'Sentinel Hill Guard to Transient'),
(42407, 3, 0, 'The sign here says: \"ABSOLUTELY NO BUMS!\" Now get lost!', 12, 7, 100, 1, 0, 0, 42345, 'Sentinel Hill Guard to Transient');
