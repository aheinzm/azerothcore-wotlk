--
-- Remove all entries, they will be replaced
DELETE FROM `creature` WHERE `id1`=2966;
DELETE FROM `creature` WHERE `id2`=2966;
DELETE FROM `creature` WHERE `id3`=2966;

-- This change will remove two, its likely guids 3110468 and 88400 didn't belong anyway, as I was very thorough while sniffing, most packets are duplicated for redundancy
-- Wander distance was univerally too low before, it still is, but this is the highest possible without looking at each individual spawn
-- 155 was the spawntime set before this fix
SET @GUID :=72707;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+45;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@GUID+0, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2851.3638, -649.8937, 53.914394, 6.123458385467529296, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2851.3638 -649.8937 53.914394
(@GUID+1, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2884.2136, -683.8456, 46.79615, 3.459807872772216796, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2884.2136 -683.8456 46.79615
(@GUID+2, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2917.984, -717.0233, 43.335518, 5.785993099212646484, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2917.984 -717.0233 43.335518
(@GUID+3, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2884.0366, -750.90063, 53.467102, 2.056380271911621093, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2884.0366 -750.90063 53.467102
(@GUID+4, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2915.589, -647.6759, 47.91969, 4.24366617202758789, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2915.589 -647.6759 47.91969
(@GUID+5, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2951.2146, -682.86914, 39.495213, 5.836968421936035156, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2951.2146 -682.86914 39.495213
(@GUID+6, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2917.6929, -782.618, 55.06476, 2.605984926223754882, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2917.6929 -782.618 55.06476
(@GUID+7, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2882.845, -817.10187, 58.7183, 2.412175416946411132, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2882.845 -817.10187 58.7183
(@GUID+8, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2861.923, -782.7811, 53.999676, 0.412639021873474121, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2861.923 -782.7811 53.999676
(@GUID+9, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2950.4053, -817.9989, 57.67622, 0.309921115636825561, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2950.4053 -817.9989 57.67622
(@GUID+10, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2983.5383, -784.1292, 52.083977, 4.240957260131835937, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2983.5383 -784.1292 52.083977
(@GUID+11, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2984.4397, -650.13934, 35.27662, 5.487060070037841796, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2984.4397 -650.13934 35.27662
(@GUID+12, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -2985.073, -717.65845, 42.901005, 0.756035506725311279, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -2985.073 -717.65845 42.901005
(@GUID+13, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3017.079, -685.03986, 41.89431, 1.761704564094543457, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3017.079 -685.03986 41.89431
(@GUID+14, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3049.7031, -716.4813, 40.514637, 3.00354623794555664, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3049.7031 -716.4813 40.514637
(@GUID+15, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3017.6887, -751.1592, 47.001766, 1.408113598823547363, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3017.6887 -751.1592 47.001766
(@GUID+16, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3082.0337, -748.24054, 37.520912, 0.77434009313583374, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3082.0337 -748.24054 37.520912
(@GUID+17, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3052.0728, -781.4096, 53.0886, 2.75778818130493164, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3052.0728 -781.4096 53.0886
(@GUID+18, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3017.803, -816.0252, 58.709106, 2.231416225433349609, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3017.803 -816.0252 58.709106
(@GUID+19, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3050.526, -850.60114, 68.74649, 1.048833727836608886, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3050.526 -850.60114 68.74649
(@GUID+20, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3084.7388, -816.3414, 52.941467, 0.736997187137603759, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3084.7388 -816.3414 52.941467
(@GUID+21, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3149.8315, -749.98535, 29.700714, 5.454426288604736328, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3149.8315 -749.98535 29.700714
(@GUID+22, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3184.107, -783.5667, 33.417763, 5.548884868621826171, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3184.107 -783.5667 33.417763
(@GUID+23, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3150.965, -817.1769, 43.35676, 3.938297510147094726, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3150.965 -817.1769 43.35676
(@GUID+24, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3117.9658, -783.3472, 40.177486, 5.44615030288696289, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3117.9658 -783.3472 40.177486
(@GUID+25, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3117.194, -849.11035, 51.33521, 1.525428533554077148, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3117.194 -849.11035 51.33521
(@GUID+26, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3153.9236, -881.6374, 58.55702, 1.771360039710998535, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3153.9236 -881.6374 58.55702
(@GUID+27, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3183.8862, -849.5151, 47.869152, 2.326549053192138671, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3183.8862 -849.5151 47.869152
(@GUID+28, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3217.4175, -816.2181, 35.22532, 5.507168769836425781, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3217.4175 -816.2181 35.22532
(@GUID+29, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3252.2148, -783.5688, 33.85495, 4.83966827392578125, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3252.2148 -783.5688 33.85495
(@GUID+30, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3251.6145, -850.41724, 47.072662, 0.692641854286193847, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3251.6145 -850.41724 47.072662
(@GUID+31, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3284.0178, -816.90137, 43.638855, 0.980254292488098144, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3284.0178 -816.90137 43.638855
(@GUID+32, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3284.2493, -883.0317, 56.315926, 0.755427181720733642, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3284.2493 -883.0317 56.315926
(@GUID+33, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3316.6729, -850.15063, 52.3021, 3.898949623107910156, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.6729 -850.15063 52.3021
(@GUID+34, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3350.394, -884.326, 69.52456, 0.829686522483825683, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3350.394 -884.326 69.52456
(@GUID+35, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3216.941, -883.50085, 48.438633, 5.492389678955078125, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3216.941 -883.50085 48.438633
(@GUID+36, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3250.1685, -917.3915, 61.51465, 0.880891621112823486, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3250.1685 -917.3915 61.51465
(@GUID+37, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3188.448, -914.93024, 56.30863, 1.776557564735412597, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3188.448 -914.93024 56.30863
(@GUID+38, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3284.5396, -948.75824, 76.21698, 0.731504380702972412, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3284.5396 -948.75824 76.21698
(@GUID+39, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3317.7004, -919.3776, 67.43448, 2.904976367950439453, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3317.7004 -919.3776 67.43448
(@GUID+40, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3351.2864, -950.30005, 82.825516, 4.230966091156005859, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3351.2864 -950.30005 82.825516
(@GUID+41, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3353.6243, -1016.0363, 106.59872, 3.855213403701782226, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3353.6243 -1016.0363 106.59872
(@GUID+42, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3316.0686, -983.5113, 87.986565, 5.103484153747558593, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3316.0686 -983.5113 87.986565
(@GUID+43, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3377.7053, -982.20953, 112.72305, 2.804410457611083984, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3377.7053 -982.20953 112.72305
(@GUID+44, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3283.8728, -1014.4586, 101.551186, 1.942777991294860839, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0), -- .go xyz -3283.8728 -1014.4586 101.551186
(@GUID+45, 2966, 0, 0, 1, 0, 0, 1, 1, 0, -3315.8196, -1042.0697, 113.59084, 6.06816720962524414, 155, 20, 0, 1, 0, 1, 0, 0, 0, '', 0);
