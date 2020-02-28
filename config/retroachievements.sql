-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 28 fév. 2020 à 02:16
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `retroachievements`
--

-- --------------------------------------------------------

--
-- Structure de la table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `game_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `guide` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `game_id`, `achievement_id`, `description`, `icon`, `guide`) VALUES
(1, 'Playing with Balls', 12, 1708, 'Get a Golf Ball', 'https://retroachievements.org/Badge/02020.png', 'Aucun guide pour le moment!'),
(2, 'Money for Life', 12, 1710, 'Collect 99$ ', 'https://retroachievements.org/Badge/02022.png', 'Aucun guide pour le moment!'),
(3, 'Jogging with Ghosts', 12, 1709, 'Get Training Shoes', 'https://retroachievements.org/Badge/02019.png', 'Aucun guide pour le moment!'),
(4, 'Fezi-Copter', 12, 2160, 'Get a Fezi-Copter', 'https://retroachievements.org/Badge/02644.png', 'Aucun guide pour le moment!'),
(5, 'Fencing Lesson', 12, 1711, 'Get a Sword', 'https://retroachievements.org/Badge/02021.png', 'Aucun guide pour le moment!'),
(6, 'Easy Money', 12, 84, 'Earn 10000 Points', 'https://retroachievements.org/Badge/00102.png', 'Aucun guide pour le moment!'),
(7, 'Hard Money', 12, 1753, 'Earn 200000 Points', 'https://retroachievements.org/Badge/02104.png', 'Aucun guide pour le moment!'),
(8, 'Life\'s High', 12, 1712, 'Collect Extra Lifes and Reach the 25 Lifes', 'https://retroachievements.org/Badge/02025.png', 'Aucun guide pour le moment!'),
(9, 'Granny', 12, 1713, 'Rescue Granny', 'https://retroachievements.org/Badge/02068.png', 'Aucun guide pour le moment!'),
(10, 'Wednesday', 12, 1714, 'Rescue Wednesday', 'https://retroachievements.org/Badge/02026.png', 'Aucun guide pour le moment!'),
(11, 'Pugsley', 12, 1715, 'Rescue Pugsley', 'https://retroachievements.org/Badge/02027.png', 'Aucun guide pour le moment!'),
(12, 'Uncle Fester', 12, 1726, 'Rescue Uncle Fester', 'https://retroachievements.org/Badge/02070.png', 'Aucun guide pour le moment!'),
(13, 'Morticia and Gomez', 12, 1751, 'Rescue Morticia and Finish the Game', 'https://retroachievements.org/Badge/02098.png', 'Aucun guide pour le moment!'),
(14, 'Big Heart', 12, 1725, 'Rise Your Maximum Health to 5', 'https://retroachievements.org/Badge/02067.png', 'Aucun guide pour le moment!'),
(15, 'Life\'s Too Short', 12, 1752, 'Finish the game without raising your default health.', 'https://retroachievements.org/Badge/02100.png', 'Aucun guide pour le moment!'),
(16, 'I\'m-a Luigi, Number One!', 10078, 52857, 'As Luigi, get 36 points in any speed Mushroom Cup.', 'https://retroachievements.org/Badge/54409.png', 'Aucun guide pour le moment!'),
(17, 'I\'m The Best!', 10078, 52858, 'As Toad, get 36 points in any speed Flower Cup.', 'https://retroachievements.org/Badge/54410.png', 'Aucun guide pour le moment!'),
(18, 'Yeah, Peach Has Got It!', 10078, 52859, 'As Peach, get 36 points in any speed Star Cup.', 'https://retroachievements.org/Badge/54411.png', 'Aucun guide pour le moment!'),
(19, 'GARBLED CUTE DINOSAUR NOISES', 10078, 52860, 'As Yoshi, get 36 points in any speed Special Cup.', 'https://retroachievements.org/Badge/54412.png', 'Aucun guide pour le moment!'),
(20, 'I\'m-a Wario, I\'m-a Gonna Win!', 10078, 52861, 'As Wario, get 36 points in 100cc or higher Mushroom Cup.', 'https://retroachievements.org/Badge/54413.png', 'Aucun guide pour le moment!'),
(21, 'Hee Hee! I Got It!', 10078, 52862, 'As Mario, get 36 points in 100cc or higher Flower Cup.', 'https://retroachievements.org/Badge/54414.png', 'Aucun guide pour le moment!'),
(22, 'ROAR GWROAR RARGH', 10078, 52863, 'As Bowser, get 36 points in 100cc or higher Star Cup.', 'https://retroachievements.org/Badge/54415.png', 'Aucun guide pour le moment!'),
(23, 'LAUGHING DONKEY NOISES', 10078, 52864, 'As DK, get 36 points in 100cc or higher Special Cup.', 'https://retroachievements.org/Badge/54416.png', 'Aucun guide pour le moment!'),
(24, 'Vacation on Koopa Troopa Beach', 10078, 52865, 'Get a gold trophy in 150cc Mushroom Cup.', 'https://retroachievements.org/Badge/54417.png', 'Aucun guide pour le moment!'),
(25, 'Snowy Mountain Ski Lodge', 10078, 52866, 'Get a gold trophy in 150cc Flower Cup.', 'https://retroachievements.org/Badge/54418.png', 'Aucun guide pour le moment!'),
(26, 'Tropical Lava Castle Resort', 10078, 52867, 'Get a gold trophy in 150cc Star Cup.', 'https://retroachievements.org/Badge/54419.png', 'Aucun guide pour le moment!'),
(27, 'Free Forest Mansion Retreat', 10078, 52868, 'Get a gold trophy in 150cc Special Cup.', 'https://retroachievements.org/Badge/54420.png', 'Aucun guide pour le moment!'),
(28, 'Rewind the Runaway Train', 10078, 52869, 'Get a gold trophy in EXTRA Mushroom Cup.', 'https://retroachievements.org/Badge/54421.png', 'Aucun guide pour le moment!'),
(29, 'Tricky Turnpike Traffic Troubles', 10078, 52870, 'Get a gold trophy in EXTRA Flower Cup.', 'https://retroachievements.org/Badge/54422.png', 'Aucun guide pour le moment!'),
(30, 'Reverse Royal Rochambeau', 10078, 52871, 'Get a gold trophy in EXTRA Star Cup.', 'https://retroachievements.org/Badge/54423.png', 'Aucun guide pour le moment!'),
(31, 'Wrong Way Rainbow Woe\'d', 10078, 52872, 'Get a gold trophy in EXTRA Special Cup.', 'https://retroachievements.org/Badge/54424.png', 'Aucun guide pour le moment!'),
(32, 'The Eternal Six-Feet-Under Study', 10078, 52873, 'Unlock Luigi\'s Time Trial Ghost, less than 1\'52\".', 'https://retroachievements.org/Badge/54425.png', 'Aucun guide pour le moment!'),
(33, 'Ludicrous Speed Luigi', 10078, 52874, 'Beat Luigi\'s Time Trial Ghost!', 'https://retroachievements.org/Badge/54426.png', 'Aucun guide pour le moment!'),
(34, 'Danse Mini-Turbo Macabre', 10078, 52875, 'Unlock Mario\'s Time Trial Ghost, less than 1\'30\".', 'https://retroachievements.org/Badge/54427.png', 'Aucun guide pour le moment!'),
(35, 'Mach Speed Mario', 10078, 52876, 'Beat Mario\'s Time Trial Ghost!', 'https://retroachievements.org/Badge/54428.png', 'Aucun guide pour le moment!'),
(36, 'Back From The Pits Of Peach', 10078, 52877, 'Unlock Peach\'s Time Trial Ghost, less than 2\'40\".', 'https://retroachievements.org/Badge/54429.png', 'Aucun guide pour le moment!'),
(37, 'Gone-to-Plaid Peach', 10078, 52878, 'Beat Peach\'s Time Trial Ghost!', 'https://retroachievements.org/Badge/54430.png', 'Aucun guide pour le moment!'),
(38, 'EEEEat My Orange Dust', 10078, 52879, 'Use a Mini-Turbo Boost during Grand Prix.', 'https://retroachievements.org/Badge/54431.png', 'Aucun guide pour le moment!'),
(39, 'Too Many Turbos', 10078, 52880, 'Use 20 Mini-Turbo boosts and get 1st in a single Grand Prix race.', 'https://retroachievements.org/Badge/54432.png', 'Aucun guide pour le moment!'),
(40, 'Nitrous Oxide Is Illegal You Know', 10078, 52881, 'Finish a race in 150cc without using Mini-Turbos.', 'https://retroachievements.org/Badge/54433.png', 'Aucun guide pour le moment!'),
(41, 'Blue Light Means Go', 10078, 52882, 'Get the starting boost during a Grand Prix race.', 'https://retroachievements.org/Badge/54434.png', 'Aucun guide pour le moment!'),
(42, 'Here\'s Looking At You, Paisano', 10078, 52883, 'While holding A and B, stare into the camera for about a complete second. (No Time Trials)', 'https://retroachievements.org/Badge/54435.png', 'Aucun guide pour le moment!'),
(43, 'The Musical Fruit', 10078, 52884, 'Save yourself from spinning out from a banana or stone.', 'https://retroachievements.org/Badge/54436.png', 'Aucun guide pour le moment!'),
(44, 'Jungle Parkway\'s Coconut Gun', 10078, 52885, '150cc as DK in Jungle Parkway. Win after dodging a spinout, and never spinout.', 'https://retroachievements.org/Badge/54437.png', 'Aucun guide pour le moment!'),
(45, 'Fashionably Early To The Ceremony', 10078, 52886, 'Touch the bridge to Peach\'s Castle, then win first place! (Not in EXTRA Class)', 'https://retroachievements.org/Badge/54438.png', 'Aucun guide pour le moment!'),
(46, 'You Got Learner\'s Permit', 10078, 52887, 'In Toad\'s Turnpike, win first-place, but never hit a car or fake item block.', 'https://retroachievements.org/Badge/54439.png', 'Aucun guide pour le moment!'),
(47, 'Get Equipped With Driver\'s License', 10078, 52888, 'In 150cc or EXTRA Toad\'s Turnpike, get first place, but never hit a car or fake item block.', 'https://retroachievements.org/Badge/54440.png', 'Aucun guide pour le moment!'),
(48, 'Mario Kart 8th', 10078, 52889, 'After the first lap, dip down to 8th place, finish in 1st.  Shortcuts are fine.', 'https://retroachievements.org/Badge/54441.png', 'Aucun guide pour le moment!'),
(49, 'Super Mario Kart 8th Circuit', 10078, 52890, 'After the first lap in 150cc, dip down to 8th place, finish in 1st.', 'https://retroachievements.org/Badge/54441.png', 'Aucun guide pour le moment!'),
(50, 'Hard Drivin\'', 10078, 52891, 'Obtain a perfect 36 points in 150cc or EXTRA.', 'https://retroachievements.org/Badge/54442.png', 'Aucun guide pour le moment!'),
(51, 'Drive Hard', 10078, 52892, 'Obtain a perfect 36 points in EXTRA.', 'https://retroachievements.org/Badge/54443.png', 'Aucun guide pour le moment!'),
(52, 'We\'re Number One, But It\'s Every Cup', 10078, 52893, 'Obtain a gold trophy for every cup in every class.', 'https://retroachievements.org/Badge/54444.png', 'Aucun guide pour le moment!'),
(53, 'See You Next Game!', 10078, 52894, 'Get the hidden 4th Place or worse ending!', 'https://retroachievements.org/Badge/54445.png', 'Aucun guide pour le moment!'),
(54, 'A new species?', 11309, 98525, 'Kill the transformed woman in Cafeteria and get the Metallic Implant.', 'https://retroachievements.org/Badge/106835.png', 'Aucun guide pour le moment!'),
(55, 'I\'m not afraid of you', 11309, 98526, 'Kill the transformed woman in Cafeteria without losing life.', 'https://retroachievements.org/Badge/108348.png', 'Aucun guide pour le moment!'),
(56, 'You owe me one', 11309, 98524, 'Save Rupert in the Chapel.', 'https://retroachievements.org/Badge/108350.png', 'Aucun guide pour le moment!'),
(57, 'A bomb!? [m]', 11309, 98591, 'I don\'t know how to defuse it.', 'https://retroachievements.org/Badge/108331.png', 'Aucun guide pour le moment!'),
(58, 'Black Card [m]', 11309, 98590, 'Find the hidden card.', 'https://retroachievements.org/Badge/107715.png', 'Aucun guide pour le moment!'),
(59, 'Up the bridge [m]', 11309, 98527, 'Up the bridge to avoid fish monsters.', 'https://retroachievements.org/Badge/108347.png', 'Aucun guide pour le moment!'),
(60, 'N. 9', 11309, 98528, 'Defeat N. 9 in the top of Akropolis Tower.', 'https://retroachievements.org/Badge/108346.png', 'Aucun guide pour le moment!'),
(61, 'Are you serious?', 11309, 98529, 'Defeat N. 9 in the top of Akropolis Tower without losing life.', 'https://retroachievements.org/Badge/108345.png', 'Aucun guide pour le moment!'),
(62, 'Welcome to Mojave!', 11309, 98530, 'Kill first monster in Mojave desert.', 'https://retroachievements.org/Badge/108344.png', 'Aucun guide pour le moment!'),
(63, 'Desert Hospitality', 11309, 98531, 'Meet Douglas and get the Motel Key N. 06.', 'https://retroachievements.org/Badge/108343.png', 'Aucun guide pour le moment!'),
(64, 'Mutation', 11309, 98592, 'Kill the mutate woman in bathroom of Dryfield.', 'https://retroachievements.org/Badge/107744.png', 'Aucun guide pour le moment!'),
(65, 'My name is Madigan. Kyle Madigan.', 11309, 98532, 'Meet Kyle Madigan for the first time.', 'https://retroachievements.org/Badge/108342.png', 'Aucun guide pour le moment!'),
(66, 'Man\'s best friend', 11309, 98533, 'Meet Flint for the first time.', 'https://retroachievements.org/Badge/108349.png', 'Aucun guide pour le moment!'),
(67, 'At rock bottom', 11309, 98534, 'Use the wire rope in well to reach the underground.', 'https://retroachievements.org/Badge/108340.png', 'Aucun guide pour le moment!'),
(68, 'Gray Stalker', 11309, 98535, 'Kill Gray Stalker monster in the Dryfield Tunnels.', 'https://retroachievements.org/Badge/108339.png', 'Aucun guide pour le moment!'),
(69, 'Just like a Spider', 11309, 98536, 'Kill Gray Stalker monster in the Dryfield Tunnels without lose life.', 'https://retroachievements.org/Badge/108338.png', 'Aucun guide pour le moment!'),
(70, 'You again?', 11309, 98537, 'Defeat N___. 9 for second time.', 'https://retroachievements.org/Badge/108337.png', 'Aucun guide pour le moment!'),
(71, 'Too easy...', 11309, 98538, 'Defeat N___. 9 for second time without lose life.', 'https://retroachievements.org/Badge/108336.png', 'Aucun guide pour le moment!'),
(72, 'Parasite Energy 1', 11309, 98539, 'Revive your first Parasite Energy power.', 'https://retroachievements.org/Badge/108332.png', 'Aucun guide pour le moment!'),
(73, 'Parasite Energy 2', 11309, 98540, 'Get level 3 on all Parasite Energy of an element. (Excludes Special Parasite Energy)', 'https://retroachievements.org/Badge/108333.png', 'Aucun guide pour le moment!'),
(74, 'Parasite Energy 3', 11309, 98541, 'Revive one Special Parasite Energy of any element.', 'https://retroachievements.org/Badge/108334.png', 'Aucun guide pour le moment!'),
(75, 'Parasite Energy 4', 11309, 98542, 'Get level 3 on all Parasite Energy of an element. (Includes Special Parasite Energy)', 'https://retroachievements.org/Badge/108335.png', 'Aucun guide pour le moment!'),
(76, 'Parasite Energy 5', 11309, 98543, 'Get level 3 on all Parasite Energy of all elements. (Includes Special Parasite Energy)', 'https://retroachievements.org/Badge/108341.png', 'Aucun guide pour le moment!'),
(77, '3033', 11309, 98545, 'Enter the correct code at the lobby cash register and get the Bronco Master Key.', 'https://retroachievements.org/Badge/108318.png', 'Aucun guide pour le moment!'),
(78, 'Full tank', 11309, 98546, 'Give the Gasoline to Mr. Douglas and fill the truck tank.', 'https://retroachievements.org/Badge/108438.png', 'Aucun guide pour le moment!'),
(79, 'It\'s really safe? [m]', 11309, 98547, 'Open the safe in loft on the 2nd floor of Dryfield.', 'https://retroachievements.org/Badge/106941.png', 'Aucun guide pour le moment!'),
(80, 'I don\'t like Coke [m]', 11309, 98548, 'Deny the drink offered by Kyle.', 'https://retroachievements.org/Badge/106946.png', 'Aucun guide pour le moment!'),
(81, 'Enemy without face', 11309, 98550, 'Do considerable damage to Burner.', 'https://retroachievements.org/Badge/106952.png', 'Aucun guide pour le moment!'),
(82, 'Burner', 11309, 98544, 'Defeat Burner.', 'https://retroachievements.org/Badge/106948.png', 'Aucun guide pour le moment!'),
(83, 'BURN!', 11309, 98549, 'Defeat Burner without lose HP.', 'https://retroachievements.org/Badge/106951.png', 'Aucun guide pour le moment!'),
(84, 'He saved us...', 11309, 98551, 'Witness the sad fate of flint.', 'https://retroachievements.org/Badge/106954.png', 'Aucun guide pour le moment!'),
(85, 'For me? ', 11309, 98552, 'Get the present from Mr. Douglas.', 'https://retroachievements.org/Badge/107033.png', 'Aucun guide pour le moment!'),
(86, 'My beautiful car!', 11309, 98593, 'And i just had it restored...', 'https://retroachievements.org/Badge/107807.png', 'Aucun guide pour le moment!'),
(87, 'Disc 2', 11309, 98553, 'Use the Truck Key to go to Abandoned Mine.', 'https://retroachievements.org/Badge/107060.png', 'Aucun guide pour le moment!'),
(88, 'Blizzard Chaser', 11309, 98554, 'Defeat Blizzard Chaser in your first form.', 'https://retroachievements.org/Badge/108359.png', 'Aucun guide pour le moment!'),
(89, 'Zombie Blizzard Chaser', 11309, 98555, 'Defeat Blizzard Chaser in your second form.', 'https://retroachievements.org/Badge/108358.png', 'Aucun guide pour le moment!'),
(90, 'Chaser became chased', 11309, 98556, 'Defeat Blizzard Chaser without lose HP.', 'https://retroachievements.org/Badge/108357.png', 'Aucun guide pour le moment!'),
(91, 'Glutton', 11309, 98557, 'Defeat Glutton in Dumping Hole.', 'https://retroachievements.org/Badge/108356.png', 'Aucun guide pour le moment!'),
(92, 'Glutton (again)', 11309, 98558, 'Defeat Glutton in Garbage Incinerator.', 'https://retroachievements.org/Badge/108355.png', 'Aucun guide pour le moment!'),
(93, 'Recycling garbage', 11309, 98559, 'Defeat Glutton two times without lose HP.', 'https://retroachievements.org/Badge/108354.png', 'Aucun guide pour le moment!'),
(94, 'Full Moon Gate [m]', 11309, 98560, 'Open the Full Moon Gate.', 'https://retroachievements.org/Badge/108353.png', 'Aucun guide pour le moment!'),
(95, 'A good use of that [m]', 11309, 98594, 'Find out where to use the Black Card.', 'https://retroachievements.org/Badge/107848.png', 'Aucun guide pour le moment!'),
(96, 'A friend in need [m]', 11309, 98596, 'Save Pierce in Dryfield.', 'https://retroachievements.org/Badge/107852.png', 'Aucun guide pour le moment!'),
(97, 'Damn it! Its hurts.', 11309, 98595, 'Get attacked by a hidden Brain Stinger.', 'https://retroachievements.org/Badge/107849.png', 'Aucun guide pour le moment!'),
(98, 'My car was better [m]', 11309, 98597, 'Open the Red Suv.', 'https://retroachievements.org/Badge/107941.png', 'Aucun guide pour le moment!'),
(99, 'Damn you!', 11309, 98598, 'Kill the Brain Stinger what attacked you.', 'https://retroachievements.org/Badge/107942.png', 'Aucun guide pour le moment!'),
(100, 'Yoshida\'s PC', 11309, 98561, 'Get access to Yoshida\'s PC in Laboratory.', 'https://retroachievements.org/Badge/108352.png', 'Aucun guide pour le moment!'),
(101, 'Solution: Yellow [m]', 11309, 98562, 'Do the yellow solution in Shrine Puzzle.', 'https://retroachievements.org/Badge/108351.png', 'Aucun guide pour le moment!'),
(102, 'Solution: Blue [m]', 11309, 98563, 'Do the blue solution in Shrine Puzzle and check the stone sarcophagus.', 'https://retroachievements.org/Badge/108329.png', 'Aucun guide pour le moment!'),
(103, 'Solution: Red', 11309, 98564, 'Do the red solution in Shrine Puzzle and open the door to Power Plant.', 'https://retroachievements.org/Badge/108328.png', 'Aucun guide pour le moment!'),
(104, 'Pyramid Puzzle', 11309, 98565, 'Do the Pyramid Puzzle and open the door to Power Generator B.', 'https://retroachievements.org/Badge/108330.png', 'Aucun guide pour le moment!'),
(105, 'What is this for? [m]', 11309, 98566, 'Do the Pyramid Puzzle and makes appear a lever.', 'https://retroachievements.org/Badge/108326.png', 'Aucun guide pour le moment!'),
(106, 'Sea Diver [m]', 11309, 98567, 'Defeat Sea Diver.', 'https://retroachievements.org/Badge/108325.png', 'Aucun guide pour le moment!'),
(107, 'Sea Diver perfectionist', 11309, 98568, 'Defeat Sea Diver without lose HP.', 'https://retroachievements.org/Badge/108324.png', 'Aucun guide pour le moment!'),
(108, 'GOLEMs awakening', 11309, 98569, 'The GOLEMs are on the loose!', 'https://retroachievements.org/Badge/108323.png', 'Aucun guide pour le moment!'),
(109, 'Puppet Stinger', 11309, 98570, 'Defeat Puppet Stinger.', 'https://retroachievements.org/Badge/108322.png', 'Aucun guide pour le moment!'),
(110, 'Sorry for killing your toy, EVE.', 11309, 98571, 'Defeat Puppet Stinger without lose HP.', 'https://retroachievements.org/Badge/108321.png', 'Aucun guide pour le moment!'),
(111, 'Knight GOLEM', 11309, 98572, 'Defeat Knight GOLEM for the first time. (Normal_Replay Mode only)', 'https://retroachievements.org/Badge/108320.png', 'Aucun guide pour le moment!'),
(112, 'Pierce\'s Memo [m]', 11309, 98599, 'Find and read the Pierce\'s Memo.', 'https://retroachievements.org/Badge/108028.png', 'Aucun guide pour le moment!'),
(113, 'Parking Lot Puzzle', 11309, 98573, 'Do the Parking Lot Puzzle and start the red Jeep.', 'https://retroachievements.org/Badge/107531.png', 'Aucun guide pour le moment!'),
(114, 'Thanks Rupert! I certainly will need this. [m]', 11309, 98574, 'Talk to Rupert and get the Mongoose.', 'https://retroachievements.org/Badge/108319.png', 'Aucun guide pour le moment!'),
(115, 'K9', 11309, 98575, 'Give the Teddy Bear to Flint to locate EVE.', 'https://retroachievements.org/Badge/107533.png', 'Aucun guide pour le moment!'),
(116, 'A friend in need 2 [m]', 11309, 98600, 'Save Pierce (again).', 'https://retroachievements.org/Badge/108033.png', 'Aucun guide pour le moment!'),
(117, 'Brahman', 11309, 98576, 'Defeat Brahman.', 'https://retroachievements.org/Badge/107535.png', 'Aucun guide pour le moment!'),
(118, 'Dismembered', 11309, 98577, 'Kill Brahman destroying all your parts.', 'https://retroachievements.org/Badge/107571.png', 'Aucun guide pour le moment!'),
(119, 'The fall of the ultimate ANMC', 11309, 98578, 'Defeat Brahman without lose HP.', 'https://retroachievements.org/Badge/107569.png', 'Aucun guide pour le moment!'),
(120, 'EVE', 11309, 98579, 'Defeat EVE.', 'https://retroachievements.org/Badge/108360.png', 'Aucun guide pour le moment!'),
(121, 'Illusions', 11309, 98581, 'Defeat EVE killing at least two illusions.', 'https://retroachievements.org/Badge/107614.png', 'Aucun guide pour le moment!'),
(122, 'EVE\'s end in great style', 11309, 98580, 'Defeat EVE without lose HP.', 'https://retroachievements.org/Badge/107610.png', 'Aucun guide pour le moment!'),
(123, 'Normal_Replay Mode', 11309, 98582, 'Finish the game in Normal or Replay Mode.', 'https://retroachievements.org/Badge/107676.png', 'Aucun guide pour le moment!'),
(124, 'Bounty Mode', 11309, 98583, 'Finish the game in Bounty Mode.', 'https://retroachievements.org/Badge/107673.png', 'Aucun guide pour le moment!'),
(125, 'Scavenger Mode', 11309, 98584, 'Finish the game in Scavenger Mode.', 'https://retroachievements.org/Badge/107675.png', 'Aucun guide pour le moment!'),
(126, 'Nightmare Mode', 11309, 98585, 'Finish the game in Nigthmare Mode.', 'https://retroachievements.org/Badge/107677.png', 'Aucun guide pour le moment!'),
(127, 'Rank A', 11309, 98586, 'Finish the game and get Rank A.', 'https://retroachievements.org/Badge/107630.png', 'Aucun guide pour le moment!'),
(128, 'Rank S', 11309, 98587, 'Finish the game and get Rank S.', 'https://retroachievements.org/Badge/107631.png', 'Aucun guide pour le moment!'),
(129, 'Rank L', 11309, 98588, 'Finish the game and get Rank L.', 'https://retroachievements.org/Badge/108373.png', 'Aucun guide pour le moment!'),
(130, 'The GOOD end', 11309, 98589, 'Do the real ending.', 'https://retroachievements.org/Badge/108052.png', 'Aucun guide pour le moment!');

-- --------------------------------------------------------

--
-- Structure de la table `consoles`
--

CREATE TABLE `consoles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `console_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `consoles`
--

INSERT INTO `consoles` (`id`, `title`, `console_id`) VALUES
(1, 'Mega Drive', 1),
(2, 'Nintendo 64', 2),
(3, 'SNES', 3),
(4, 'Game Boy', 4),
(5, 'Game Boy Advance', 5),
(6, 'Game Boy Color', 6),
(7, 'NES', 7),
(8, 'PC Engine', 8),
(9, 'Sega CD', 9),
(10, '32X', 10),
(11, 'Master System', 11),
(12, 'PlayStation', 12),
(13, 'Atari Lynx', 13),
(14, 'Neo Geo Pocket', 14),
(15, 'Game Gear', 15),
(16, 'GameCube', 16),
(17, 'Atari Jaguar', 17),
(18, 'Nintendo DS', 18),
(19, 'Wii', 19),
(20, 'Wii U', 20),
(21, 'PlayStation 2', 21),
(22, 'Xbox', 22),
(24, 'Pokemon Mini', 24),
(25, 'Atari 2600', 25),
(26, 'DOS', 26),
(27, 'Arcade', 27),
(28, 'Virtual Boy', 28),
(29, 'MSX', 29),
(30, 'Commodore 64', 30),
(31, 'ZX81', 31),
(32, 'Oric', 32),
(33, 'SG-1000', 33),
(34, 'VIC-20', 34),
(35, 'Amiga', 35),
(36, 'Atari ST', 36),
(37, 'Amstrad CPC', 37),
(38, 'Apple II', 38),
(39, 'Saturn', 39),
(40, 'Dreamcast', 40),
(41, 'PlayStation Portable', 41),
(42, 'Philips CD-i', 42),
(43, '3DO Interactive Multiplayer', 43),
(44, 'ColecoVision', 44),
(45, 'Intellivision', 45),
(46, 'Vectrex', 46),
(47, 'PC-8000/8800', 47),
(48, 'PC-9800', 48),
(49, 'PC-FX', 49),
(50, 'Atari 5200', 50),
(51, 'Atari 7800', 51),
(52, 'X68K', 52),
(53, 'WonderSwan', 53),
(54, 'Cassette Vision', 54),
(55, 'Super Cassette Vision', 55);

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `console` varchar(255) NOT NULL,
  `game_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`id`, `title`, `console`, `game_id`, `icon`) VALUES
(1, 'Addams Family, The', 'Mega Drive', 12, 'https://retroachievements.org/Images/001727.png'),
(4, 'Mario Kart 64', 'Nintendo 64', 10078, 'https://retroachievements.org/Images/023206.png'),
(6, 'Parasite Eve II', 'PlayStation', 11309, 'https://retroachievements.org/Images/018268.png');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin`) VALUES
(1, 'AngelPhenix', '$2y$10$da.Z0tE0sirh/sLRFjf.DOHomNMSuHoXEXsVaSGPKDbVZJMPiwBfq', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `consoles`
--
ALTER TABLE `consoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `consoles`
--
ALTER TABLE `consoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
