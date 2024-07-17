-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.30 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for first_fleet_1788
CREATE DATABASE IF NOT EXISTS `first_fleet_1788` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `first_fleet_1788`;

-- Dumping structure for table first_fleet_1788.criminal_court
CREATE TABLE IF NOT EXISTS `criminal_court` (
  `Court_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Court_Name` varchar(30) DEFAULT NULL,
  `Court_detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Court_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- Dumping data for table first_fleet_1788.criminal_court: ~64 rows (approximately)
REPLACE INTO `criminal_court` (`Court_ID`, `Court_Name`, `Court_detail`) VALUES
	(23, 'Abingdon, Berkshire', NULL),
	(24, 'Bodmin, Cornwall', NULL),
	(25, 'Brecknock, Brecon', NULL),
	(26, 'Bristol, Gloucestershire', NULL),
	(27, 'Bury St Edmunds, Suffolk', NULL),
	(28, 'Chelmsford, Essex', NULL),
	(29, 'Chester, Cheshire', NULL),
	(30, 'Clerkenwell, Middlesex', NULL),
	(31, 'Coventry, Warwickshire', NULL),
	(32, 'Cowbridge, Glamorgan, Wales', NULL),
	(33, 'Croydon, Surrey', NULL),
	(34, 'Deptford, Kent', NULL),
	(35, 'Derby, Derbyshire', NULL),
	(36, 'Devizes, Wiltshire', NULL),
	(37, 'Dochester, Dorset', NULL),
	(38, 'Dorchester, Dorset', NULL),
	(39, 'Durham, County of Durham', NULL),
	(40, 'East Grinstead, Sussex', NULL),
	(42, 'Exeter, Devon', NULL),
	(43, 'Gloucester, Gloucestershire', NULL),
	(44, 'Guildford, Surrey', NULL),
	(45, 'Hertford, Hertfordshire', NULL),
	(46, 'Horsham, Sussex', NULL),
	(47, 'Kingston upon Hull, Yorkshire', NULL),
	(48, 'Kingston upon Thames, Surrey', NULL),
	(49, 'Knutsford, Cheshire', NULL),
	(50, 'Lancaster, Lancashire', NULL),
	(51, 'Launceston, Cornwall', NULL),
	(52, 'Lincoln, Lincolnshire', NULL),
	(53, 'Liverpool, Lancashire', NULL),
	(54, 'Louth, Lincolnshire', NULL),
	(55, 'Maidstone, Kent', NULL),
	(56, 'Manchester, Lancashire', NULL),
	(57, 'Marlborough, Wiltshire', NULL),
	(58, 'Mold, Flintshire, Wales', NULL),
	(59, 'Monmouth, Wales', NULL),
	(60, 'Newcastle, Northumberland', NULL),
	(61, 'Northallerton, Yorkshire', NULL),
	(62, 'Nottingham, Nottinghamshire', NULL),
	(63, 'Old Bailey, London', 'https://en.wikipedia.org/wiki/Old_Bailey'),
	(64, 'Ormskirk, Lancashire', NULL),
	(65, 'Oxford, Oxfordshire', NULL),
	(66, 'Plymouth, Cornwall', NULL),
	(67, 'Pontefract, Yorkshire', NULL),
	(68, 'Poole, Dorset', NULL),
	(69, 'Preston, Lancashire', NULL),
	(70, 'Radnor, Wales', NULL),
	(71, 'Reading, Berkshire', NULL),
	(72, 'Salisbury, Wiltshire', NULL),
	(73, 'Sherborne, Dorset', NULL),
	(74, 'Shrewsbury, Shropshire', NULL),
	(75, 'Southwark, Surrey', NULL),
	(76, 'Spilsby, Lincolnshire', NULL),
	(77, 'Stafford, Staffordshire', NULL),
	(78, 'Taunton, Devon', NULL),
	(79, 'Taunton, Somerset', NULL),
	(80, 'Thetford, Norfolk', NULL),
	(81, 'Warwick, Warwickshire', NULL),
	(83, 'Westminster, London', NULL),
	(84, 'Wigan, Lancashire', NULL),
	(85, 'Wills, Somerset', NULL),
	(86, 'Winchester, Hampshire', NULL),
	(87, 'Worcester, Worcestershire', NULL),
	(88, 'York, Yorkshire', NULL);

-- Dumping structure for table first_fleet_1788.ff_convicts
CREATE TABLE IF NOT EXISTS `ff_convicts` (
  `FF_Convict_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FF_Convict_Family_Name` varchar(100) NOT NULL DEFAULT '0',
  `FF_Convict_Given_Name` varchar(50) NOT NULL DEFAULT '0',
  `FF_Convict_Alternate_Name` varchar(50) DEFAULT '0',
  `FF_Convict_Age` tinyint(4) NOT NULL DEFAULT '0',
  `FF_Convict_Gender` enum('M','F') NOT NULL DEFAULT 'M',
  `FF_Convict_Trade` varchar(100) DEFAULT 'No trade recorded',
  `FF_Convict_Ship` int(11) DEFAULT NULL,
  `FF_Convict_Notes` varchar(255) DEFAULT '0',
  `FF_Trial_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FF_Convict_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=latin1;

-- Dumping data for table first_fleet_1788.ff_convicts: ~777 rows (approximately)
REPLACE INTO `ff_convicts` (`FF_Convict_ID`, `FF_Convict_Family_Name`, `FF_Convict_Given_Name`, `FF_Convict_Alternate_Name`, `FF_Convict_Age`, `FF_Convict_Gender`, `FF_Convict_Trade`, `FF_Convict_Ship`, `FF_Convict_Notes`, `FF_Trial_ID`) VALUES
	(4, 'ABEL/ABLE', 'Robert', 'Able', 15, 'M', 'labourer', 1, 'In December 1789 he received 50 lashes for insolence.Night watch member by 1791.Described as a first class settler in 1812.', 1),
	(5, 'ABEL', 'Mary', 'TILLEY', 30, 'F', 'No trade recorded', 1, NULL, 2),
	(6, 'ABRAHAMS', 'Esther', NULL, 20, 'F', 'No trade recorded', 1, NULL, 3),
	(7, 'ABRAHAMS/ABRAMS', 'Henry', NULL, 28, 'M', 'labourer', 1, NULL, 4),
	(8, 'ADAMS', 'John', NULL, 47, 'M', 'labourer', 1, NULL, 5),
	(9, 'ADAMS', 'Mary', NULL, 29, 'F', 'labourer', 1, 'Sentenced to 300 lashes on 23 January 1789 for buying shirt trousers and shoes from another convict.', 6),
	(10, 'AGNEW/AYNERS', 'John', NULL, 27, 'M', 'baker', 1, 'Considerable confusion exists with the other William Davis.Probably received 25 lashes for lighting a fire in his hut.', 7),
	(11, 'AKERS/ACRES', 'Thomas', NULL, 29, 'M', 'No trade recorded', 1, 'Night watch member. Partner in the original crime was Edward Perrott.', 8),
	(12, 'ALLEN', 'Charles', NULL, 20, 'M', 'No trade recorded', 1, 'Perhaps guilty of return from transport following the Mercury mutiny. Night watch member.Became a Superintendent of convicts.Partner in the original crime was Aaron Davis.', 9),
	(13, 'ALLEN', 'John', NULL, 45, 'M', 'No trade recorded', 1, 'May have been Jewish.Partner in the original crime was Thomas Risdale Crowder.', 10),
	(14, 'ALLEN', 'Tamasin/Jamasin', 'BODDINGTON', 32, 'F', 'No trade recorded', 1, 'Received 150 lashes in July 1789 for buying necessaries from a marine.', 14),
	(15, 'ALLEN', 'William', NULL, 24, 'M', 'No trade recorded', 1, 'Received 25 lashes on 25 February 1789 for neglecting his work, and on 28 November 1789 ordered 50 lashes and repayment of 2 pounds of flour for theft of same.', 15),
	(16, 'ANDERSON', 'Elizabeth', NULL, 32, 'F', 'No trade recorded', 1, 'He escaped in 1788.', 16),
	(17, 'ANDERSON', 'Frances (Fanny)', NULL, 30, 'F', 'No trade recorded', 1, 'Partner in the original crime was William Connelly.', 17),
	(18, 'ANDERSON', 'John', NULL, 26, 'M', 'No trade recorded', 1, NULL, 18),
	(19, 'ANDERSON', 'John', NULL, 24, 'M', 'labourer', 1, NULL, 19),
	(20, 'ARCHER/FORRESTER', 'John', NULL, 31, 'M', 'labourer', 1, NULL, 20),
	(21, 'ARSCOTT', 'John', NULL, 20, 'M', 'labourer', 1, NULL, 21),
	(22, 'ATKINSON/ATKINS', 'George', NULL, 22, 'M', 'labourer', 1, 'Actual value of stolen goods was 100 shillings.Received 25 lashes on 11 February and 11 March 1789 for neglect of work.', 22),
	(23, 'AULT', 'Sarah', NULL, -1, 'F', 'currier', 1, 'On 16 January 1789 sentenced to receive 200 lashes for selling a shirt, and flogged in July 1791 for using corn seed as food.', 23),
	(24, 'AYRES', 'John', NULL, 20, 'M', 'labourer', 1, 'Partner in the original crime was Samuel Bird.On 20 July 1789 sentenced to receive 100 lashes for stealing fish.', 24),
	(25, 'AYRES/EYRES/HARES', 'William', 'Eyres Hares', 24, 'M', 'No trade recorded', 1, 'Partner in the original crime was James Bird. Described as of stout build,  five feet seven inches tall, with dark complexion and dark hair.Escaped with the Bryants, and died after recapture.', 25),
	(26, 'BAILS/BALES', 'Robert', 'Bales', 21, 'M', 'No trade recorded', 1, NULL, 26),
	(27, 'BAKER', 'Martha', NULL, 25, 'F', 'labourer', 1, NULL, 27),
	(28, 'BAKER', 'Thomas', NULL, 23, 'M', 'brickmaker', 1, 'On 3 June 1789 ordered to receive 50 lashes for insolence.', 28),
	(29, 'BALDWIN/BALDING', 'James/William', NULL, 32, 'M', 'servant or labourer', 1, 'Described as a black servant from Madagascar. It was said of him that he gave more trouble than any other convict in the settlement.Caesar absconded for the last time in 1795, and became Australias first bushranger, before being shot, captured and k', 29),
	(30, 'BALDWIN/BOWYER', 'Ruth', NULL, 25, 'F', 'No trade recorded', 1, NULL, 30),
	(31, 'BALL', 'John', NULL, 51, 'M', 'No trade recorded', 1, NULL, 31),
	(32, 'BANNISTER', 'George', NULL, 19, 'M', 'fiddler', 1, 'Sentenced to be put in irons and to receive 200 lashes for attempting to break into a store in March 1791.', 32),
	(33, 'BARBER', 'Elizabeth', NULL, 27, 'F', 'No trade recorded', 1, 'Partners in the original crime were John Stokoe and George Sharp.', 33),
	(34, 'BARFORD/BARFERD', 'John', 'Barferd', 20, 'M', 'No trade recorded', 1, NULL, 34),
	(35, 'BARLAND', 'George', NULL, 20, 'M', 'No trade recorded', 1, NULL, 35),
	(36, 'BARNES', 'Stephen', NULL, -1, 'M', 'No trade recorded', 1, 'One of the few convicts allowed to carry a gun, and was a licenced game killer. Attacked and wounded by Aboriginal leader Pemulwuy on 10 December 1788.', 36),
	(37, 'BARNETT/BARRETT/BARNEY', 'Daniel', 'Barrett Barney', 30, 'M', 'No trade recorded', 1, 'On 20 April 1788, received 36 lashes for theft of rum, on 18 May 1788, 36 lashes for seditious and threatening words, on 7 August 1788 36 lashes for stealing eggs.Received a fractured skull in May 1790 and not expected to live.Sentenced on 15 May 1791', 37),
	(38, 'BARNETT/BARNARD/BURTON', 'Henry', 'Barnard Burton', 43, 'M', 'No trade recorded', 1, 'Partners in the original crime were Richard Clough and John Stockoe.', 38),
	(39, 'BARRETT', 'Thomas', NULL, 29, 'M', 'No trade recorded', 1, NULL, 39),
	(40, 'BARRY/BARRY', 'John', NULL, 19, 'M', 'No trade recorded', 1, 'Partners in the original crime were Richard Clough and George Sharp.', 40),
	(41, 'BARSBY', 'George', NULL, -1, 'M', 'No trade recorded', 1, 'Received 30 lashes on 29 August 1788 for drunkenness and insolence, and 50 lashes on 10 May 1790 for concealing fish.', 41),
	(42, 'BARSBY', 'Samuel', NULL, 23, 'M', 'No trade recorded', 1, NULL, 42),
	(43, 'BARTLETT', 'James', NULL, -1, 'M', 'labourer', 1, NULL, 43),
	(44, 'BASON', 'Elizabeth', NULL, 30, 'F', 'labourer', 1, 'On 24 January 1789 sentenced to receive 25 lashes for neglecting his work, and on 13 October 1789 to 50 lashes for removing oars from Lt Clarks boat.', 44),
	(45, 'BATLEY/BATLY', 'Oten', 'BUCKLEY, John', 23, 'M', 'No trade recorded', 1, 'Killed by Aborigines at Rushcutters Bay.', 45),
	(46, 'BATLEY', 'Walton/Walter', 'ROUS/ROUSE/ROWSE, John', 27, 'M', 'No trade recorded', 1, 'Received 150 lashes for attacking Aborigines in March 1789.Received 200 lashes in February 1792, for working privately during government hours.', 46),
	(47, 'BAYLEY/BAILEY', 'James', 'Bailey', 41, 'M', 'labourer', 1, 'Received several floggings in the early years for telling a lie to Major Ross, neglect of duty, and employing convicts without leave.', 47),
	(48, 'BAYLISS/BUSLEY', 'John', 'Busley', 37, 'M', 'No trade recorded', 1, NULL, 48),
	(49, 'BASELY/BAZLEY', 'John', NULL, -1, 'M', 'No trade recorded', 1, NULL, 49),
	(50, 'BEARDSLEY/BEADLEY/BEAZLEY/BAIZLEY', 'Ann', 'Beazley Baizley', 21, 'F', 'labourer', 1, NULL, 50),
	(51, 'BECKFORD', 'Elizabeth', NULL, 70, 'F', 'No trade recorded', 1, NULL, 51),
	(52, 'BELL', 'William', NULL, 25, 'M', 'No trade recorded', 1, 'Received 12 lashes on 28 January 1789 for being absent from work, and another 100 on 28 October 1789 for lending shoes he had been given to mend.', 52),
	(53, 'BELLAMY', 'Sarah', NULL, 17, 'F', 'labourer', 1, NULL, 53),
	(54, 'BELLETT/BILLET', 'Jacob', 'Billet', 21, 'M', 'No trade recorded', 1, NULL, 54),
	(55, 'BENEAR/BENIER/BENARE/BINES/BINS/BENNER/BENERE/BINNER', 'Samuel', 'Benier Benare Bines Bins Benner Benere Binner', 32, 'M', 'labourer', 1, 'Killed  by Aborigines.', 55),
	(56, 'BENNETT', 'John', NULL, 18, 'M', 'No trade recorded', 1, 'Joined NSW Corps in 1800.  Described in September 1808 as aged 48 years four months, with fair complexion, light brown hair, thin face, blue eyes, and 5ft 6ins tall.', 56),
	(57, 'BEST', 'John', NULL, 27, 'M', 'weaver', 1, NULL, 57),
	(58, 'BINGHAM/MOORING/BIGGINS', 'Elizabeth', 'Biggins', -1, 'F', 'No trade recorded', 1, NULL, 58),
	(59, 'BAUGHAN/BINGHAM', 'John', NULL, 33, 'M', 'No trade recorded', 1, 'Partner in the original crime was brother Richard Smart.', 59),
	(60, 'BIRD', 'Elizabeth/Winifred', NULL, 45, 'F', 'No trade recorded', 1, 'Partner in the original crime was brother Daniel Smart.', 60),
	(61, 'BIRD', 'James', NULL, 39, 'M', 'No trade recorded', 1, 'On 11 February 1788 ordered to receive 25 lashes for neglect of work.', 61),
	(62, 'BIRD', 'Samuel', NULL, 23, 'M', 'No trade recorded', 1, 'On 29 December 1788 charged with being up late and creating a disturbance, and received the punishment of losing 3 weeks flour ration.', 62),
	(63, 'BISHOP', 'Joseph', NULL, 23, 'M', 'labourer', 1, 'Brother of Thomas MacLean, his partner in crime.', 63),
	(64, 'BLACKHALL/BLACKALL', 'William', NULL, 25, 'M', 'labourer', 1, 'Brother of Francis MacLean, his partner in crime.', 64),
	(65, 'BLAKE', 'Francis', NULL, 21, 'M', 'labourer or miller', 1, NULL, 65),
	(66, 'BLANCHET', 'Susannah', NULL, 24, 'F', 'labourer', 1, NULL, 66),
	(67, 'BLATHERHORN/BEANS/FISHER', 'William', NULL, 28, 'M', 'labourer', 1, 'Executed following his attempted escape.', 67),
	(68, 'BLOODWORTH', 'James', NULL, 28, 'M', 'labourer', 1, NULL, 68),
	(69, 'BLUNT', 'William', NULL, 30, 'M', 'labourer', 1, 'Sentenced to death on 27 February 1788 for stealing 15 allowances of flour, and reprieved to become the public hangman.Received 100 lashes and had his grog stopped in December 1789 for being drunk, insolent and out of his hut after hours.', 69),
	(70, 'BOGGIS', 'William', NULL, 20, 'M', 'No trade recorded', 1, NULL, 70),
	(71, 'BOLTON', 'Mary', NULL, 29, 'F', 'No trade recorded', 1, 'Partner in the original crime was Joseph Robinson.On 11 May 1788 he received 36 lashes for being absent without leave, and spent time in irons for starting a fire on the wreck of Sirius in May 1790, and again in May 1791 for the theft of potatoes.', 71),
	(72, 'BOND', 'Peter', NULL, 21, 'M', 'No trade recorded', 1, NULL, 72),
	(73, 'BOND', 'William', NULL, 31, 'M', 'No trade recorded', 1, 'Partner in the original crime was William Dring.On 9 February 1789 sentenced to 12 lashes for being out of his quarters with bad intention.Received 50 lashes on 31 January 1791 for killing pigeons reserved for those in most need.', 73),
	(74, 'BONNER', 'Jane', NULL, 22, 'F', 'labourer', 1, 'Actual value of stolen goods was 135 shillings.', 74),
	(75, 'BOLTON/BOULTON', 'Rebecca', NULL, 26, 'F', 'labourer', 1, 'On 11 August 1788 sentenced to receive 50 lashes for stealing spirits after being found drunk, 50 lashes on 13 October 1789 for stealing the oars from Lt Clarks boat, and 100 lashes in April 1792 for theft. Described as just another scoundrel by Lt Phi', 75),
	(76, 'BOYLE', 'John', NULL, 30, 'M', 'labourer', 1, NULL, 76),
	(77, 'BRADBURY', 'William', NULL, 27, 'M', 'No trade recorded', 1, 'Partners in the original crime were Thomas Smith and William Shore.On 13 April 1789 ordered to receive 100 lashes for theft of a gallon of pease, another 100 on 13 September 1789 for being in anothers hut with intent to steal.', 77),
	(78, 'BRADFORD', 'John', NULL, 28, 'M', 'No trade recorded', 1, 'Partners in the original crime were Samuel Midgley and Thomas Smith (Alexander).', 78),
	(79, 'BRADLEY', 'James', NULL, 23, 'M', 'No trade recorded', 1, 'The watch was stolen from the victims pocket.On 18 December he was ordered to work in a gang, following an assault on two seamen from Supply .', 79),
	(80, 'BRADLEY', 'James', NULL, 24, 'M', 'No trade recorded', 1, NULL, 80),
	(81, 'BRANAGAN/BRANNAGAN/BRANNEGAN/BRANEGAN', 'James', 'Brannagan Brannegan Branegan', 30, 'M', 'No trade recorded', 1, NULL, 81),
	(82, 'BRAND/BRYN', 'Curtis', 'Bryn', 23, 'M', 'No trade recorded', 1, NULL, 82),
	(83, 'BRANHAM', 'Mary', NULL, 17, 'F', 'No trade recorded', 1, NULL, 83),
	(84, 'BRAUND', 'Mary', NULL, 20, 'F', 'No trade recorded', 1, 'Senteced to death and executed for having escaped on 15 December 1788 and later robbing the publick store.', 84),
	(85, 'BREWER', 'William', NULL, 34, 'M', 'No trade recorded', 1, 'Ordered 100 lashes on 22 February 1788 for selling a possum for a bottle of rum, but only received 50, and on 7 March 1789 sentenced to receive 50 lashes for an attack on Aborigines.', 85),
	(86, 'BRICE', 'William', NULL, 16, 'M', 'No trade recorded', 1, NULL, 86),
	(87, 'BRINDLEY', 'John', NULL, 27, 'M', 'No trade recorded', 1, 'Described as the noted swindler by court records.Employed in issuing spirits, on 6 May 1788 he was sentenced to receive 200 lashes after a court of enquiry into a marine having been drunk on duty, and on 12 April 1790 to 100 lashes for stealing a pumpk', 87),
	(88, 'BROUGH', 'William', NULL, 39, 'M', 'No trade recorded', 1, 'This was his sixth offence. Drowned whilst assisting people from an overturned boat', 88),
	(89, 'BROWN', 'James', NULL, 22, 'M', 'No trade recorded', 1, NULL, 89),
	(90, 'BROWN', 'Richard', NULL, 36, 'M', 'labourer', 1, NULL, 90),
	(91, 'BROWN', 'Thomas', NULL, 25, 'M', 'hairdresser or labourer', 1, 'On 29 December 1788 sentenced to receive 50 lashes for using improper expressions about the marines.', 91),
	(92, 'BROWN', 'Thomas/John', NULL, 22, 'M', 'labourer', 1, NULL, 92),
	(93, 'BROWN', 'William', NULL, 26, 'M', 'No trade recorded', 1, 'Death caused by taking intemperately of the American rum.', 93),
	(94, 'BROWN', 'William French', NULL, 29, 'M', 'labourer', 1, NULL, 94),
	(95, 'BRUCE', 'Elizabeth', NULL, 29, 'F', 'labourer', 1, 'Received 50 of 100 lashes for getting lost while looking for greens when he should have been at work. Ordered 200 lashes for stealing several pounds of sugar in June 1790.Became an approved baker.', 95),
	(96, 'BRUCE', 'Robert', NULL, 31, 'M', 'labourer', 1, 'Speared by Aborigines.', 96),
	(97, 'BRYANT', 'John', NULL, 29, 'M', 'labourer', 1, NULL, 97),
	(98, 'BRYANT', 'Michael', NULL, 20, 'M', 'labourer', 1, 'Partner in the original crime was James McDonough.', 98),
	(99, 'BRYANT', 'Thomas', NULL, 21, 'M', 'labourer', 1, 'Partner in the original crime was Thomas Matson.On 26 September 1788 sentenced to receive 200 lashes and to wear an iron collar for 6 months theft of clothing.', 99),
	(100, 'BRYANT', 'William', NULL, 29, 'M', 'labourer', 1, NULL, 100),
	(101, 'BUCKLEY', 'Joseph', NULL, 39, 'M', 'butcher', 1, 'Described as Jewish.Sentenced on 30 April 1788 to 100 lashes for theft, received 100 lashes on 16 January 1789 for being absent from work.', 101),
	(102, 'BUNN/BURN', 'Margaret', 'Burn', 25, 'F', 'labourer', 1, 'The crime netted only 1 penny.Received 50 lashes on 10 May 1790 for not flogging 5 men as he ought to have done.May have joined NSW Corps in 1792.', 102),
	(103, 'BURDO/BORDEAUX', 'Sarah', 'Bordeaux', 23, 'F', 'waterman', 1, NULL, 103),
	(104, 'BURKITT', 'Mary/Martha/Patience/Pacence', 'VALENTINE, Martha', 30, 'F', 'jeweller', 1, 'Actual value of stolen goods was 40 shillings.On 12 May 1790 sentenced to receive 50 lashes for theft.', 104),
	(105, 'BURLEY/BURLEIGH', 'James', NULL, 16, 'M', 'hawker', 1, NULL, 105),
	(106, 'BURN', 'Patrick', NULL, 26, 'M', 'labourer', 1, NULL, 106),
	(107, 'BURN', 'Peter', NULL, 31, 'M', 'labourer', 1, 'Night watch member in 1790.Joined 102nd regiment in NSW in 1794.', 107),
	(108, 'BURN', 'Simon', NULL, 30, 'M', 'labourer', 1, NULL, 108),
	(109, 'BURNE', 'James', NULL, 33, 'M', 'labourer', 1, NULL, 109),
	(110, 'BURRIDGE', 'Samuel', NULL, 61, 'M', 'labourer', 1, 'Joined NSW Corps in 1800. Described as a black from North America, he was aged 44 years, with black complexion, black hair, hazel eyes, and 5ft 9ins tall in September 1808.', 110),
	(111, 'BUTLER', 'William', NULL, 20, 'M', 'calenderer, cloth glazer', 1, 'Pardoned before the fleet sailed, so did not embark.', 111),
	(112, 'CABLE/KABLE/CABELL', 'Henry', 'Cabell', 20, 'M', 'No trade recorded', 1, 'Partners in the original crime were Samuel Midgley and William Shore.', 112),
	(113, 'CAESAR', 'John', 'BLACK CAESAR', 23, 'M', 'labourer', 1, 'He was still alive in 1814.', 113),
	(114, 'CAMPBELL', 'James', NULL, 23, 'M', 'labourer', 1, NULL, 114),
	(115, 'CAMPBELL', 'James/George/John', NULL, 28, 'M', 'silk weaver', 1, 'Joined NSW Corps in 1797. Described in September 1808 as aged 40 years four months, with round face, fair complexion, light brown hair, blue eyes, and 5ft 5ins tall.  Former occupation given as sawyer.', 115),
	(116, 'CAREY', 'Ann', NULL, 21, 'F', 'No trade recorded', 1, NULL, 116),
	(117, 'CARNEY', 'John', NULL, 18, 'M', 'No trade recorded', 1, NULL, 117),
	(118, 'CARROLL', 'Mary', NULL, 36, 'F', 'labourer', 1, 'Received 50 of the 200 lashes he was ordered on 12 January 1789 for assisting the late Thomas Saunderson with Provisions.', 118),
	(119, 'CARTER/CARTWRIGHT', 'Richard', NULL, 44, 'M', 'No trade recorded', 1, NULL, 119),
	(120, 'CARTY', 'Francis', NULL, 31, 'M', 'No trade recorded', 1, NULL, 120),
	(121, 'CARVER', 'Joseph', NULL, 28, 'M', 'No trade recorded', 1, 'On 12 June 1790 sentenced to receive 200 lashes for theft of sugar.', 121),
	(122, 'CASTLE', 'James/John', NULL, 28, 'M', 'No trade recorded', 1, 'Arrested at 16 years of age.On 15 March 1789 received 50 lashes for theft of flour. Partners in the crime were John Nurse and George Robinson.', 122),
	(123, 'CHAAF', 'William', NULL, 24, 'M', 'No trade recorded', 1, 'Actual value of stolen goods was 150 shillings. Partner in the original crime was John Cropper.', 123),
	(124, 'CHADWICK/CHADDICK', 'Thomas', 'Chaddick', 25, 'M', 'No trade recorded', 1, 'Partner in the original crime was William Morgan.', 124),
	(125, 'CHANIN', 'Edward', NULL, 44, 'M', 'No trade recorded', 1, 'Confused with the other James Bradley, at the time the original lists were being prepared.  Died before departure.', 125),
	(126, 'CHILDS/CHIELDS', 'William', 'Chields', 23, 'M', 'No trade recorded', 1, 'Partner in the original crime was George Barland.Received 25 lashes on 26 January 1789 for being out of quarters.', 126),
	(127, 'CHINERY', 'Samuel', NULL, 20, 'M', 'No trade recorded', 1, 'Partner in the original crime was John Barford.', 127),
	(128, 'CHURCH', 'William', NULL, 28, 'M', 'seaman (former midshipman) or clerk', 1, NULL, 128),
	(129, 'CLARK', 'Elizabeth', NULL, 20, 'F', 'No trade recorded', 1, 'Confused by contractors with another of the same name who died in England.Described as a worthless troublesome wretch. Planned a mutiny on Norfolk Island in 1788, and attempted to escape in 1795.', 129),
	(130, 'CLARK/HOSIER', 'James/John/Charles', NULL, 33, 'M', 'No trade recorded', 1, 'Partner in the original crime was Nicholas Greenwell.', 130),
	(131, 'CLARKE', 'John', NULL, 26, 'M', 'No trade recorded', 1, 'Received 50 lashes for impertinance to a supervisor in December 1790.', 131),
	(132, 'CLARKE', 'William', NULL, 23, 'M', 'No trade recorded', 1, 'Partner in the original crime was Robert Freeman. Did not sail as he was pardoned before the Fleet sailed.', 132),
	(133, 'CLAYTON/KAYTON/HAYTON', 'George', NULL, 23, 'M', 'carpenter', 1, 'Did not travel with First Fleet, being pardoned on condition that he served in the navy.', 133),
	(134, 'CLARE/CLEAR', 'George', NULL, 53, 'M', 'No trade recorded', 1, 'On 7 February 1789 ordered to receive 25 lashes for insolence and idleness.', 134),
	(135, 'CLEAVER', 'Mary', NULL, 27, 'F', 'seaman', 1, 'Mistakenly written as Stone in contractors record.', 135),
	(136, 'CLEMENTS', 'Thomas', NULL, 23, 'M', 'master butcher', 1, 'On 14 January 1792 ordered 800 lashes, for stealing flour from the store where he had been working.  They were to be administered on consecutive Saturdays, 25 lashes at a time.He received 150, and then had to work in double irons. he received another 400', 136),
	(137, 'CLEUGH/CLOUGH/CLUGH', 'Richard', 'Clugh', 26, 'M', 'No trade recorded', 1, NULL, 137),
	(138, 'COFFIN', 'John', NULL, 25, 'M', 'watchmaker', 1, NULL, 138),
	(139, 'COLE', 'Elizabeth', 'MARSHALL', 20, 'F', 'No trade recorded', 1, 'Described as a black, and A sober industrious man.On August 30 1788 received 25 lashes for lighting a fire in his hut.Night watch member.', 139),
	(140, 'COLE', 'Elizabeth', NULL, 26, 'F', 'servant', 1, 'Actual value of stolen goods was 16 shillings. Probably killed by Aborigines.', 140),
	(141, 'COLE', 'William', NULL, 23, 'M', 'No trade recorded', 1, 'Described as a black who spoke broken English.', 141),
	(142, 'COLLEY', 'Elizabeth', NULL, 22, 'F', 'No trade recorded', 1, NULL, 142),
	(143, 'COLLIER/CULLY', 'Richard', NULL, 22, 'M', 'law clerk', 1, 'Described by Gillen as a fastidious and educated clerk of the Inner Temple.', 143),
	(144, 'COLLINS/COLLING', 'Joseph', 'Colling', 20, 'M', 'seaman', 1, 'Sentenced on 1 January 1792  to receive 100 lashes for insolence.', 144),
	(145, 'COLMAN', 'Ishmael', NULL, 32, 'M', 'apprentice ivory turner', 1, 'On 30 August 1788 ordered to receive 25 lashes for lighting a fire in his hut.', 145),
	(146, 'COLPITTS', 'Ann', NULL, 28, 'F', 'soldier or servant or tailor', 1, 'Actual value of stolen goods was 1373 shillings.', 146),
	(147, 'CONELLY', 'Cornelius', NULL, 24, 'M', 'stonemason', 1, 'The 21st  child of his parents.On 23 June 1788 received a sentence of death for theft from Lt Furzers tent on the same day.', 147),
	(148, 'CONNELLY', 'William', NULL, 26, 'M', 'No trade recorded', 1, 'Attempted to escape at Teneriffe, while he was working as a seaman.Ringleader of plot with crew members to take over the Alexander.Sentenced to 200 lashes on 1 November 1788 for theft of boards.', 148),
	(149, 'CONNOLLY', 'William', NULL, 26, 'M', 'seaman', 1, NULL, 149),
	(150, 'COOK', 'Charlotte', NULL, 20, 'F', 'No trade recorded', 1, 'Was a teacher in the colony from 1790 to 1810. Married Isabella Rosson.Joined NSW Corps in 1792.  Described in September 1808 as aged 47 years seven months, with thin face, fair complexion, dark brown hair, grey eyes, and 5ft 5ins tall.', 150),
	(151, 'COOMBES', 'Ann', NULL, 27, 'F', 'servant', 1, 'Described as a responsible person.', 151),
	(152, 'COOPER', 'Mary', NULL, 37, 'F', 'No trade recorded', 1, NULL, 152),
	(153, 'COPP', 'James', NULL, 40, 'M', 'No trade recorded', 1, 'Actual value of stolen goods was 41 shillings.', 153),
	(154, 'CORDEN/CORDELL/CALDWALL', 'James', 'Cordell Caldwall', 18, 'M', 'servant', 1, 'Actual value of stolen goods was 95 shillings.', 154),
	(155, 'CORMICK/CORBET', 'Edward', 'Corbet', 24, 'M', 'soldier', 1, 'Sometimes confused with proposed second fleeter Benjamin West, who escaped before embarking.', 155),
	(156, 'COX', 'James', NULL, 27, 'M', 'No trade recorded', 1, 'One of 5 sentenced to receive 50 lashes on 10 May 1789 for concealing fish.', 156),
	(157, 'COX', 'John Mathew/Massy', 'BANBURY JACK', 32, 'M', 'No trade recorded', 1, NULL, 157),
	(158, 'CREAMER', 'John', NULL, 18, 'M', 'labourer', 1, NULL, 158),
	(159, 'CREEK/CREEKE', 'Jane', 'Creeke', 48, 'F', 'labourer', 1, NULL, 159),
	(160, 'CROPPER', 'John', NULL, 31, 'M', 'labourer', 1, 'Does not appear to have actually sailed with the First Fleet.', 160),
	(161, 'CROSS', 'John', NULL, 31, 'M', 'No trade recorded', 1, NULL, 161),
	(162, 'CROSS', 'William', NULL, 23, 'M', 'labourer', 1, 'Partner in the original crime was Thomas Gearing.On 7 March 1789 ordered to receive 100 lashes for theft of turnips.', 162),
	(163, 'CROWDER', 'Thomas Restell', 'RISDALE', 32, 'M', 'No trade recorded', 1, 'The records are confused, showing him tried in Liverpool, Lancashire on 12 January 1786, but that William Smith died in January 1787.', 163),
	(164, 'CUCKOW/COOK/CUCKOO/COOKES', 'William', 'Cuckoo Cookes', 38, 'M', 'labourer', 1, 'Described as having hanged himself in a state of lunacy.', 164),
	(165, 'CUDLIP/NORRIS', 'Jacob', NULL, 39, 'M', 'labourer', 1, 'Partner in the original crime was William Mariner.', 165),
	(166, 'CULLEN/CULLEIN', 'James Bryan', 'Cullein', 33, 'M', 'servant', 1, NULL, 166),
	(167, 'CULLYHORN/CALLAGHAN', 'John', 'Callaghan', 31, 'M', 'No trade recorded', 1, 'Sentenced to 200 lashes on 26 December 1788 for stealing a bag of flour, and received 25 lashes in May 1791 for neglect of duty.', 167),
	(168, 'CUNNINGHAM', 'Edward', NULL, 21, 'M', 'weaver', 1, 'Sentenced on 21 June 1790 to a quarter of a pound of flour a day for 1 month for neglect of duty.Received 21 lashes on 25 January 1791, as the remainder of punishment due for unknown offence.', 168),
	(169, 'CUSS', 'John/Hannaboy', NULL, 42, 'M', 'labourer and former soldier', 1, 'Described as near six feet high, wears his own lank hair, pitted with the smallpox, thick lips and stout made, he had been a soldier. In October 1788 he received 25 lashes for insolence.In 1806 he was listed as a schoolmaster.', 169),
	(170, 'DALEY/DEALEY', 'James', 'Dealey', 24, 'M', 'labourer', 1, NULL, 170),
	(171, 'DALTON/BURLEY/BURLEIGH', 'Elizabeth', 'Burleigh', 20, 'F', 'No trade recorded', 1, NULL, 171),
	(172, 'DALY', 'Ann', 'WARBURTON', -1, 'F', 'labourer', 1, NULL, 172),
	(173, 'DANIELS/DANNIELLS', 'Daniel', 'Danniells', 21, 'M', 'No trade recorded', 1, 'On 29 February 1788 ordered to receive 300 lashes for theft, but punishment was forgiven.', 173),
	(174, 'DARNELL/DARLING/DOWLING', 'Margaret', 'Darling Dowling', 20, 'F', 'No trade recorded', 1, NULL, 174),
	(175, 'DAVISON/DAVIDSON', 'Rebecca', 'Davidson', 28, 'F', 'labourer', 1, NULL, 175),
	(176, 'DAVIES/DAVIS/ASHLEY/DAVIS', 'Sarah', 'Davis', 26, 'F', 'No trade recorded', 1, NULL, 176),
	(177, 'DAVIS', 'Aaron', NULL, 24, 'M', 'No trade recorded', 1, NULL, 177),
	(178, 'DAVIS', 'Ann', 'JONES, Judith', 29, 'F', 'tailor', 1, 'Suicide by drowning.', 178),
	(179, 'DAVIS', 'Edward', NULL, 33, 'M', 'No trade recorded', 1, NULL, 179),
	(180, 'DAVIS', 'Frances', NULL, 22, 'F', 'No trade recorded', 1, NULL, 180),
	(181, 'DAVIS', 'James', NULL, 27, 'M', 'weaver', 1, NULL, 181),
	(182, 'DAVIS/DAVIES', 'Mary', 'BISHOP Davies', 25, 'F', 'No trade recorded', 1, NULL, 182),
	(183, 'DAVIS', 'Richard', NULL, 28, 'M', 'No trade recorded', 1, NULL, 183),
	(184, 'DAVIS', 'Samuel', NULL, 17, 'M', 'waterman', 1, NULL, 184),
	(185, 'DAVIS', 'William', NULL, 57, 'M', 'No trade recorded', 1, 'He received 48 lashes in October 1788 for Mutinous Expressions and daring language.  He ought to have received 150 but could not bear any more wrote Lt Clark.', 185),
	(186, 'DAVIS', 'William', NULL, 23, 'M', 'No trade recorded', 1, 'He was in repeated trouble receiving 500 lashes and having to work in irons for stealing pork in August 1788, 100 lashes for insolence on 24 October 1789, 100 lashes for neglect of duty on 24 May 1791, 100 lashes for neglect of orders on 27 October 1791,', 186),
	(187, 'DAVISON/DAVIDSON', 'John', 'Davidson', 19, 'M', 'wheelwright', 1, NULL, 187),
	(188, 'DAWSON', 'Margaret', NULL, 17, 'F', 'No trade recorded', 1, NULL, 188),
	(189, 'DAY', 'Richard', NULL, 22, 'M', 'No trade recorded', 1, NULL, 189),
	(190, 'DAY', 'Samuel', NULL, 21, 'M', 'labourer', 1, NULL, 190),
	(191, 'DELANY', 'Patrick', NULL, 25, 'M', 'No trade recorded', 1, NULL, 191),
	(192, 'DENNISON/DENISON/DENESON', 'Barnaby', 'Denison Deneson', 28, 'M', 'labourer', 1, NULL, 192),
	(193, 'DENNISON', 'Michael', NULL, 19, 'M', 'labourer', 1, 'Partner in the original crime was Thomas Tilley.', 193),
	(194, 'DICKENSON', 'Mary', NULL, 26, 'F', 'labourer', 1, NULL, 194),
	(195, 'DIXON/DICKSON', 'Thomas', 'RAW, Ralph', 22, 'M', 'No trade recorded', 1, NULL, 195),
	(196, 'DISCALL/DRISCAL', 'Timothy', NULL, 38, 'M', 'labourer', 1, 'Partner in the original crime was Edward Parry.', 196),
	(197, 'DIXON', 'Mary', NULL, 41, 'F', 'No trade recorded', 1, NULL, 197),
	(198, 'DODDING/DODDEN/DORREN', 'James', 'DORING Dodden Dorren', 22, 'M', 'No trade recorded', 1, 'One of three older ex-convicts ordered a passage home by the Lieutenant Governor.', 198),
	(199, 'DOUGLAS', 'William', NULL, 24, 'M', 'No trade recorded', 1, NULL, 199),
	(200, 'DOWLAND/DOLAND/DOOLAN', 'Ferdinand', NULL, 32, 'M', 'No trade recorded', 1, 'Partners in the original crime were Martin Stone and Charles Repeat.', 200),
	(201, 'DRING', 'William', NULL, 17, 'M', 'No trade recorded', 1, NULL, 201),
	(202, 'DUDGEON/DUDGENS', 'Elizabeth', NULL, 23, 'F', 'button stamper', 1, 'Partners in the original crime were James Corden and Martin Stone.', 202),
	(203, 'DUNDAS', 'Jane', NULL, 29, 'F', 'No trade recorded', 1, 'Partners in the original crime were James Corden and Charles Repeat.', 203),
	(204, 'DUNNAGE', 'Joseph', NULL, 30, 'M', 'No trade recorded', 1, 'Escaped by April 1788.', 204),
	(205, 'DUTTON', 'Ann', NULL, 25, 'F', 'No trade recorded', 1, 'On the expiry of his sentence John Wilson lived with Aborigines, on occasion advising and assisting them in their attacks on settlers. He later acted as guide in the exploration  of the area around Port Jackson. He was killed as a result of a tribal dispu', 205),
	(206, 'DYER', 'Leonard', NULL, 27, 'M', 'No trade recorded', 1, 'Pardoned and released before the fleet departed.', 206),
	(207, 'DYKES/DIKES/DIX', 'Mary', NULL, 29, 'F', 'No trade recorded', 1, 'Described as a black.On 12 September 1788, saved Lydia Munro from being raped by a soldier. On 29 February 1789, received a sentence of death, but reprieved, for theft of wine. On 19 August 1789, tried for theft of food, but found to be not in a state', 207),
	(208, 'EARLE/EARL', 'William', 'Earl', 24, 'M', 'No trade recorded', 1, 'Partner in the original crime was William Tyrell.', 208),
	(209, 'EARLEY/HURLEY/EARLY/HARLEY/ARLLY', 'Rachel', 'Hurley Early Harley Arlly', 25, 'F', 'No trade recorded', 1, NULL, 209),
	(210, 'EATON', 'Martha', 'BEDDINGFIELD', 25, 'F', 'No trade recorded', 1, 'On 14 November 1789 sentenced to receive 50 lashes for being drunk and disorderly.', 210),
	(211, 'ECCLES/HECCLES', 'Thomas', 'Heccles', 48, 'M', 'No trade recorded', 1, 'Partner in the original crime was John Handford.', 211),
	(212, 'EDMUNDS/EDMONDS', 'William', 'Edmonds', 29, 'M', 'No trade recorded', 1, NULL, 212),
	(213, 'EDWARDS', 'William', NULL, 34, 'M', 'No trade recorded', 2, 'Sent to Dunkirk hulk.Gave birth to child which died on 17 March 1788, son of John Bingham, whom she later married.Although she returned to England, Mary later came back to Sydney.  She is last known to have sailed for England again in 1819.', 213),
	(214, 'EGGLESTONE', 'George', NULL, 27, 'M', 'No trade recorded', 2, 'She was sentenced on 3 March 1789 to receive 25 lashes for disobedience.', 214),
	(215, 'EGGLETON/EAGLETON', 'William', 'BONES', 31, 'M', 'No trade recorded', 2, NULL, 215),
	(216, 'ELLAM/ELIAS', 'Deborah', NULL, 20, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 216),
	(217, 'ELLAM', 'Peter/Edward', NULL, 19, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 217),
	(218, 'ELLIOTT/TRIMBY', 'Joseph', NULL, 20, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.Sentenced to 300 lashes on 16 February 1789 for stealing flour and a platter.', 218),
	(219, 'ELLIOTT', 'William/Edward', NULL, 26, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.The ships surgeon wrote worn out by low spirits and debility, brought on by long and close confinement, (he) resigned his breath without a pang.', 219),
	(220, 'ENGLISH', 'Nicholas', NULL, 17, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was  tolerably decent and orderly.', 220),
	(221, 'EVANS', 'Elizabeth', 'JONES', 28, 'F', 'shoemaker', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.On 9 January 1789 sentenced to receive 100 lashes for illegally disposing of 2 chickens he did not own.Night watch member.', 221),
	(222, 'EVANS', 'William', NULL, 37, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.On 30 August 1788 ordered to receive 100 lashes for making use of peas and beans he was supposed to sow.', 222),
	(223, 'EVERETT', 'John', NULL, 25, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 223),
	(224, 'EVERINGHAM', 'Matthew James', NULL, 18, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 224),
	(225, 'FARLEY', 'William', NULL, 17, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 225),
	(226, 'FARMER', 'Ann', NULL, 62, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly. Received 25 of 50 lashes on 14 February 1789 for repeated idleness. Stephens had a history of violent behaviour in the colony, receiving repeated convictions for assault.', 226),
	(227, 'FARRELL', 'Phillip', NULL, 24, 'M', 'No trade recorded', 2, 'Partner in the original crime was John Smith (of the Charlotte).  Report from Dunkirkhulk was troublesome at times.', 227),
	(228, 'FENTUM', 'Benjamin', NULL, 27, 'M', 'seaman', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.On 14 December 1789 he received 200 lashes for robbing a garden.Nightwatch member by 1791.', 228),
	(229, 'FERGUSON', 'John', NULL, 28, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was troublesome at times.', 229),
	(230, 'FIELD', 'Jane', NULL, 57, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 230),
	(231, 'FIELD', 'William', NULL, 25, 'M', 'No trade recorded', 2, 'Partner in crime Samuel Pigott.Report from Dunkirk hulk was tolerably decent and orderly.Flogged several times: 11 February 1788 sentenced to receive150 lashes for abuse and striking Marines, 50 lashes for threatening Catherine Prior, and again in Jan', 231),
	(232, 'FINICY/FILLESEY/TILLESBY', 'Thomas', NULL, 29, 'M', 'seaman', 2, 'Report from Dunkirk hulk was troublesome at times. His partnet in crime was Stephen Mullis.', 232),
	(233, 'FENLOW/FINDLOW', 'John', 'HARVEY', 21, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was at times troublesome.On 7 January 1789 he received 150 lashes for being drunk and insolent, and on 13 March 1789 25 lashes for neglecting his task as a baker.', 233),
	(234, 'FINN/PHYN', 'Mary', 'Fenn', 26, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 234),
	(235, 'FITZGERALD', 'Elizabeth', NULL, 26, 'F', 'No trade recorded', 2, 'Partners in the original crime were Mary Haydon and Catherine Fryer. Report from Dunkirk was tolerably decent and orderly. Gave birth to child (d 6 May 1792) fathered by William Bryant  in September 1787. Described in 1792 as middle stature, marked wit', 235),
	(236, 'FITZGERALD', 'Jane', 'PHILLIPS', 30, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 236),
	(237, 'FLARTY', 'Phebe', NULL, 15, 'F', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 237),
	(238, 'FLINN/FLYN', 'Edward', NULL, 27, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was troublesome at times. Married Ann Coombes.Killed by a falling tree.  Lt King wrote I am very unfortunate in ye loss of this Man, As he was one, amongst the very few good men that are here.', 238),
	(239, 'FORBES', 'Ann', NULL, 19, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.Received 150 lashes on 14 May 1789 for stealing a pumpkin.Executed for attempting to steal food from a hut on 14 April 1790.', 239),
	(240, 'FORRESTER', 'Robert', NULL, 28, 'M', 'No trade recorded', 2, NULL, 240),
	(241, 'FOWKES/FOLKES', 'Francis', 'Folkes', -1, 'M', 'No trade recorded', 2, 'Described as a black.Report from Dunkirk hulk was tolerably decent and orderly.', 241),
	(242, 'FOWLES', 'Ann', NULL, 22, 'F', 'No trade recorded', 2, NULL, 242),
	(243, 'FOWNES', 'Margaret', NULL, 45, 'F', 'servant', 2, 'Described as a black.Report from Dunkirk hulk was tolerably decent and orderly.In 1790 described as one of two public delinquents and put in irons for two months. Received 100 lashes for neglecting work in 10 February 1792.', 243),
	(244, 'FOYLE', 'William', NULL, 27, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 244),
	(245, 'FRANCIS', 'William', NULL, 24, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly. Partner in the original crime was James Gould.', 245),
	(246, 'FRANCISCO', 'George', NULL, 22, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was a very troublesome Fellow.Joined NSW Corps in 1797 rising to the rank of sergeant.  Described in September 1808 as aged 39 years three months, with fair complexion, light brown hair, grey eyes, and 6 feet tall.', 246),
	(247, 'FRASER/REDCHESTER/FRAZER', 'Ellen/Eleanor', 'Frazer', 22, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.Received 100 lashes in July 1789 for writing an obscene and scandalous paper.', 247),
	(248, 'FRASER', 'William', NULL, -1, 'M', 'No trade recorded', 2, 'Partner in the original crime was James Copp.Report from Dunkirk hulk was tolerably decent and orderly.', 248),
	(249, 'FREEMAN', 'James', NULL, 19, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.Received 50 lashes in May 1790, for concealing fish he had caught.Described at his death as generall', 249),
	(250, 'FREEMAN', 'Robert', NULL, 29, 'M', 'No trade recorded', 2, 'Described at his trial as Master of the Falcon Inn, regarded as a quiet harmless old man on the Dunkirk.', 250),
	(251, 'FRY', 'George', NULL, 25, 'M', 'No trade recorded', 2, 'Partner in the original crime was Simon Burn. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times. In January 1789 ordered to receive 100 lashes for being absent from work for three days.', 251),
	(252, 'FULLER', 'John', 'SAXBY, William; HUMPHREYS, Robert', 35, 'M', 'No trade recorded', 2, 'Partner in the original crime was John Small.Report from Dunkirk hulk was troublesome at times.', 252),
	(253, 'GABEL/GAMBEL/GABLE/GAMBOL', 'Mary', 'Gambel Gable Gambol', 37, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was that he had behaved very well.', 253),
	(254, 'GARDNER/GARDENER', 'Francis', NULL, 17, 'M', 'No trade recorded', 2, NULL, 254),
	(255, 'GARLAND', 'Francis', NULL, 26, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 255),
	(256, 'GARTH', 'Edward', NULL, 23, 'M', 'No trade recorded', 2, 'Partner in the original crime was Richard Widdicombe.Report from Dunkirk hulk was tolerably decent and orderly.', 256),
	(257, 'GARTH/GOUGH/GRAH/GRATES', 'Susannah', 'Gough Grah Grates', 24, 'F', 'No trade recorded', 2, 'Partner in the original crime was Richard Wilcocks.Report from Dunkirk hulk was tolerably decent and orderly.', 257),
	(258, 'GASCOIGNE/GASKINS/GASKINS/GASCKING', 'Olive/Olivia', 'Gaskins Gascking', 24, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was troublesome at times. Received 546 of 800 lashes for robbing a house, and limited to 5 pounds of flour a week  for a month.Jemmy La Rou, a poor maniac whose death was occasioned by being exposed to the severities of the w', 258),
	(259, 'GEARING', 'Thomas', NULL, 43, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was that he had behaved remarkably well.Returned as a free settler in 1803.', 259),
	(260, 'GEORGE', 'Ann', NULL, 22, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly. With only 1 year to serve escaped with Willam Bryant. Finally released in England in 1793.', 260),
	(261, 'GUEST/GESS', 'George', NULL, 20, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 261),
	(262, 'GLENTON', 'Thomas', NULL, 22, 'M', 'No trade recorded', 2, 'Partners in the original crime were son Noah Mortimer and Edward Westlake.Report from Dunkirk hulk was tolerably decent and orderly.Received 100 lashes on 15 January 1793 for stealing wheat and neglecting his work.', 262),
	(263, 'GLOSTER/GLOCESTER/GLOUCESTER', 'William', 'Glocester Gloucester', 38, 'M', 'No trade recorded', 2, 'Partners in the original crime were father John Mortimer and Edward Westlake.Report from Dunkirk hulk was tolerably decent and orderly. Received 60 lashes on 8 April 1789 for refusing to work, and 24 lashes on 24 October 1789 for not working.', 263),
	(264, 'GOODWIN', 'Andrew', NULL, 20, 'M', 'caulker', 2, 'Partner in the original crime was John Bazley.', 264),
	(265, 'GOODWIN/GOODWINE', 'Edward', 'Goodwine', 22, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was that he had behaved remarkably well.Night watch member.', 265),
	(266, 'GORDON', 'Daniel/Janel', NULL, 47, 'M', 'No trade recorded', 2, 'Partner in the original crime was Samuel Barsby.Report from Dunkirk hulk was tolerably decent and orderly.', 266),
	(267, 'GOULD', 'John', NULL, 45, 'M', 'No trade recorded', 2, 'Partners in the original crime were Mary Braund and Mary Haydon.Report from Dunkirk hulk was tolerably decent and orderly. Gave birth to child on 14 November 1787 (d 18 March 1788) probably the son of John Arscott.', 267),
	(268, 'GRACE', 'James', NULL, 18, 'M', 'rope maker', 2, 'Report from Dunkirk hulk was at times troublesome.Night watch member.', 268),
	(269, 'GRANGER', 'Charles', NULL, 28, 'M', 'No trade recorded', 2, 'Actual value of stolen goods was 60 shillings. Report from Dunkirk hulk was troublesome at times.Received 50 lashes in May 1790 for stealing lentils, and his rations cut from 3 to 2 pounds of flour for a week.A very good Quite man  according to Lt', 269),
	(270, 'GRAY/GREY', 'Charles/Patrick', 'Grey', 36, 'M', 'seaman', 2, 'Report from Dunkirk hulk was troublesome at times.', 270),
	(271, 'GREEN/COWLEY', 'Ann', NULL, 28, 'F', 'No trade recorded', 2, 'Partners in the original crime were Mary Braund and Catherine Prior.Report from Dunkirk hulk was tolerably decent and orderly. Ordered 50 lashes on 14 June 1791 for being drunk and Making a Noise in the Camp, and received 50 lashes in October 1791 f', 271),
	(272, 'GREEN', 'Hannah', NULL, 31, 'F', 'ex marine', 2, 'Partner in the original crime was John Herbert.Report from Dunkirk hulk was troublesome at times. Member of the night watch for 17 years from 1808.', 272),
	(273, 'GREEN', 'John', NULL, 61, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was troublesome at times. May have escaped in 1791.', 273),
	(274, 'GREEN', 'Mary', NULL, -1, 'F', 'No trade recorded', 2, 'Partner in the original crime was Thomas Acres. Report from Dunkirk hulk was troublesome at times. Escaped by 1791.', 274),
	(275, 'GREENWELL', 'Nicholas', NULL, 29, 'M', 'hawker', 2, NULL, 275),
	(276, 'GREENWOOD', 'Mary', NULL, 24, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly. Sentenced to 200 lashes on 25 May 1788 for stealing flour from his tentmate.  He also had to repay the flour.On 23 January 1789 ordered to receive 50 lashes for selling a pair of shoes.', 276),
	(277, 'GRIFFITHS/GREEFIES', 'Samuel', 'BRISCOE/BRISCOW; BUTCHER', 35, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.  May have been the convict Vinry who received 100 lashes on 15 February 1791 for stealing cobs of corn.', 277),
	(278, 'GRIFFITHS', 'Thomas', NULL, 28, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly. Ordered 24 lashes on 19 January 1789 for contemptuaously neglecting work ordered by a marine; on 9 February 1789 36 lashes for leaving his quarters with a bad intention; forgiven the theft of', 278),
	(279, 'GROVES', 'Mary', NULL, 30, 'F', 'No trade recorded', 2, 'Partners in the original crime were John Mortimer and Noah Mortimer.  Westlake was married to an Elizabeth Mortimer. Report from Dunkirk hulk was tolerably decent and orderly. Night watch member.', 279),
	(280, 'GUNTHER/GUNTER', 'William', NULL, 23, 'M', 'No trade recorded', 2, 'Partner in the original crime was Henry Humphreys.Report from Dunkirk hulk was tolerably decent and orderly.', 280),
	(281, 'HAGLEY/AGLEY', 'Richard', NULL, 42, 'M', 'No trade recorded', 2, 'Partner in the original crime was William Jenkins.Report from Dunkirk hulk was tolerably decent and orderly.', 281),
	(282, 'HAINES/HAYNES', 'Joseph', 'Haynes', 18, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.Difficult to distinguish from the others with the same name, as well as later arrivals.', 282),
	(283, 'HALL', 'Elizabeth', NULL, 18, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was at times troublesome.', 283),
	(284, 'HALL', 'John', NULL, 29, 'M', 'No trade recorded', 2, NULL, 284),
	(285, 'HALL', 'Joseph', NULL, 31, 'M', 'bricklayer', 2, NULL, 285),
	(286, 'HALL', 'Margaret', NULL, 22, 'F', 'No trade recorded', 2, 'Received 15 of 350 lashes (the rest when he can bear it) in November 1789 stealing medicines and pepper.Built the first brewery in NSW.Universally respected for his amiable and useful qualities as a member of the lower class of settlers...his name wi', 286),
	(287, 'HALL', 'Samuel', NULL, -1, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was that he had behaved remarkably well.  Married Mary Braund. Received 100 lashes on 4 February 1789 for selling fish caught in government time. Escaped with his wife, two children and seven other convicts.', 287),
	(288, 'HALL/HAMMOND', 'Sarah', NULL, 46, 'F', 'labourer', 2, 'Partner in the original crime was his wife Ellen Fraser.Noted for his surly temper and heavy drinking.On 5 January 1789 he received 100 lashes for insolence, and on 23 June was sentenced to work in irons for a month for drunken insolence.An excellent w', 288),
	(289, 'HAMILTON', 'Maria', NULL, 33, 'F', 'No trade recorded', 2, 'Ringleader of the Mercury mutiny, however he had intervened to save the stewards life and prevented the Captains ear from being cut off.  As a result he was reprieved from a death sentence and only found guilty of return from transport. Report from Du', 289),
	(290, 'HAMLYN/HAMLIN', 'William', 'Hamlin', 59, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutinyReport from Dunkirk hulk was sometimes troublesome.', 290),
	(291, 'HANDFORD/HANFORD', 'John', 'Hanford', 27, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Swift mutiny. Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was troublesome at times.Received 50 lashes on 10 May 1790 for concealing fish.Night watch member by 1', 291),
	(292, 'HANDLAND/GRAY', 'Dorothy', NULL, 61, 'F', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was that he had behaved remarkably well.Escaped with Willliam Bryant but died after recapture.', 292),
	(293, 'HENLEY/HANDY/HANDLEY', 'Cooper', 'Handley', 33, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Swift mutiny and guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that he had behaved tolerably well.Sentenced to death on 27 February 1788 for theft of food, but re', 293),
	(294, 'HARBEN/HARBINE', 'Joseph', NULL, 21, 'M', 'No trade recorded', 2, 'Guilty of return from transport in 1783, having made his way back after being landed in Africa with no food. Guilty of return from transport following the Mercury mutiny.A quiet prisoner on the Dunkirk hulk.', 294),
	(295, 'HARPER/HARPUR', 'Joshua', 'Harpur', 34, 'M', 'weaver', 2, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was sometimes troublesome.On 6 September 1788 ordered to receive 200 lashes for stealing trousers.', 295),
	(296, 'HARRIS', 'John', NULL, 27, 'M', 'seaman', 2, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.Received 50 lashes on 11 June 1791 for neglect of duty.', 296),
	(297, 'HARRIS', 'William', NULL, 32, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Swift mutiny and guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 297),
	(298, 'HARRISON', 'Joseph', NULL, 26, 'M', 'No trade recorded', 2, 'Married James Heatherly, carpenters crew from Sirius . Left for India with husband and three children.', 298),
	(299, 'HARRISON', 'Joseph', NULL, 27, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 299),
	(300, 'HARRISON', 'Mary', NULL, 34, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 300),
	(301, 'HARRISON', 'Mary', NULL, 25, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 301),
	(302, 'HART', 'Catherine', NULL, 19, 'F', 'No trade recorded', 2, NULL, 302),
	(303, 'HART', 'Frances', NULL, 36, 'F', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 303),
	(304, 'HART', 'John', NULL, 28, 'M', 'No trade recorded', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.', 304),
	(305, 'HART', 'John', NULL, 46, 'M', 'shipwight', 2, 'Report from Dunkirk hulk was tolerably decent and orderly.Probably escaped in 1788.', 305),
	(306, 'HARTLEY', 'John', NULL, 50, 'M', 'No trade recorded', 2, 'Died in childbirth, her son surviving her by 2 months.', 306),
	(307, 'HARWOOD/HOWARD', 'Esther', NULL, 36, 'F', 'No trade recorded', 2, NULL, 307),
	(308, 'HATCH', 'John', NULL, 47, 'M', 'No trade recorded', 2, 'In August 1789 she received 50 lashes for obtaining provisions by fraud, and the following day received 100 lashes for stealing two shirts.  Her husband, John Bryant, had been killed by a falling tree on 28 July 1789.', 308),
	(309, 'HATCHER', 'John', NULL, 37, 'M', 'No trade recorded', 2, 'On 4 February 1789 sentenced to 25 lashes for baking her flour on an iron spade over a fire.', 309),
	(310, 'HATFIELD', 'William', NULL, 30, 'M', 'No trade recorded', 2, NULL, 310),
	(311, 'HATHEWAY/HATHAWAY', 'Henry', 'Hathaway', 22, 'M', 'dealer', 2, 'Described in the colony as too fond of spirituous liquors to be very industrious.', 311),
	(312, 'HATTON/HATTOM', 'Joseph', 'Hattom', 39, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was sometimes troublesome.Classified Absconded by December 1791, even though term expired.', 312),
	(313, 'HAWKES', 'Richard', NULL, 36, 'M', 'No trade recorded', 2, 'Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was troublesome at times.Fell overboard in the South Atlantic.', 313),
	(314, 'HAYDON/HADON/HAIDON', 'John', 'Hadon Haidon', 31, 'M', 'No trade recorded', 2, 'Partner in the original crime was James Branegan. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was generally tolerably well behaved but troublesome at times.Classified Absconded  by September 1791, although', 314),
	(315, 'HAYES', 'Dennis', NULL, 20, 'M', 'No trade recorded', 2, 'Partners in the original crime were John Leary, Joseph Morley and Henry Roach. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 315),
	(316, 'HAYES', 'John', NULL, 22, 'M', 'No trade recorded', 2, 'Partners in the original crime were Francis Garland, Joseph Morley and John Leary.Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that he had behaved remarkably well.', 316),
	(317, 'HAYNES/HAINES', 'William', NULL, 32, 'M', 'seaman', 2, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times. In August 1791 received 81 of 100 lashes  for playing cards on Sunday.', 317),
	(318, 'HAYWARD', 'Elizabeth', NULL, 14, 'F', 'No trade recorded', 2, 'On Dunkirk with her daughter (1785-1791), who travelled with her.', 318),
	(319, 'HEADING', 'James', NULL, 30, 'M', 'No trade recorded', 2, 'Partner in the original crime was Daniel Gordon.Received on Dunkirk hulk with a 3 month son (1786-1788), who travelled with her on the First Fleet.', 319),
	(320, 'HEADINGTON/HEDDINGTON/EDDINGTON', 'Thomas', 'Eddington', 29, 'M', 'None', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 320),
	(321, 'HENRY', 'Catherine', NULL, 36, 'F', 'gardener', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.On 25 May 1790 ordered to receive 300 lashes for stealing one and a quarter pounds of potatoes, and in December 1790 he was sentenced to 100 lashes for shirking his work, but could only bear 73.', 321),
	(322, 'HERBERT', 'Jane', 'ROSE; RUSSELL, Jenny', 40, 'F', 'No trade recorded', 3, 'Partner in the original crime was James Neale.Report from Dunkirk hulk was tolerably decent and orderly.', 322),
	(323, 'HERBERT', 'John', NULL, 20, 'M', 'bricklayer', 3, 'Report from Dunkirk hulk was tolerably decent and orderly. Partner in the original crime was Jeremiah Leary.', 323),
	(324, 'HERBERT', 'John', NULL, 26, 'M', 'blacksmith', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 324),
	(325, 'HERVEY/HARVEY', 'Elizabeth', 'Harvey', 30, 'F', 'No trade recorded', 3, 'Partner in the original crime was Thomas Jones.Received the order to run the Gauntlet among the Convicts for theft in March 1790.', 325),
	(326, 'HILL', 'John', NULL, 28, 'M', 'No trade recorded', 3, 'Partner in the original crime was William Farley.Report from Dunkirk hulk was tolerably decent and orderly.On 7 March 1789 sentenced to receive 150 lashes and to wear a leg iron for a year for wandering beyond the limits.', 326),
	(327, 'HILL', 'John', NULL, 34, 'M', 'No trade recorded', 3, 'Spent time on Dunkirk hulk.', 327),
	(328, 'HILL', 'Mary', NULL, 20, 'F', 'No trade recorded', 3, NULL, 328),
	(329, 'HILL', 'Thomas', NULL, 29, 'M', 'None', 3, 'Held on Dunkirk hulk.One of the best behaved on the journey out according to Lt Ralph Clark.', 329),
	(330, 'HILL', 'Thomas', NULL, 28, 'M', 'No trade recorded', 3, NULL, 330),
	(331, 'HILT/HITT', 'William', 'Hitt', 17, 'M', 'leather breeches maker', 3, 'Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.On 12 February 1788 received a sentence of 8 days in irons on bread and water for theft of biscuit from another convict.', 331),
	(332, 'HINDLE/INGLE/ENGLE', 'Ottiwell/Ottawel/Oataway', NULL, -1, 'M', 'baker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 332),
	(333, 'HINDLEY', 'William', 'PLATT', 21, 'M', 'stocking weaver', 3, 'Partner in the original crime was John Haydon.Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.Murdered by an unfriendly neighbour while trying to protect the woman with whom the neighbour', 333),
	(334, 'HIPPSLEY/HIPESLEY', 'Elizabeth', 'Hipesley', 30, 'F', 'shoemaker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 334),
	(335, 'HOGG', 'William', NULL, 39, 'M', 'None', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 335),
	(336, 'HOLLAND', 'William', NULL, 31, 'M', 'None', 3, 'Her year old son died on 29 September 1787.On 29 August 1789 sentenced to receive 25 lashes for making a frivolous complaint.', 336),
	(337, 'HOLLISTER', 'Job', NULL, 21, 'M', 'No trade recorded', 3, 'Travelled with her daughter (1786-1788) having become pregnant whilst in gaol. Spent time in irons whilst on the Friendship for what Lt Clark called Quarling and dirtiness.', 337),
	(338, 'HOLLOGIN/HOLLIGIN', 'Elizabeth', NULL, -1, 'F', 'carpenter', 3, 'Joined NSW Corps in 1800.  Described in September 1808 as aged 50 years seven months, with dark complexion, light brown hair, hazel eyes, and 5ft 6ins tall.', 338),
	(339, 'HOLLOWAY', 'James', NULL, 27, 'M', 'None', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.On 8 January 1790 sentenced to receive 50 lashes for neglect of work, but fainted after 8.  The remainder was forgiven.', 339),
	(340, 'HOLMES', 'Susannah', NULL, 22, 'F', 'None', 3, NULL, 340),
	(341, 'HOLMES', 'William', NULL, 24, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.', 341),
	(342, 'HORNE', 'Henry', NULL, 24, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.', 342),
	(343, 'HORTOPP', 'James', NULL, 34, 'M', 'shipwight', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that he had behaved remarkably well.Ordered a passage home with two other elderly convicts.', 343),
	(344, 'HOWARD', 'John', NULL, 24, 'M', 'None', 3, 'On 15 August 1788 ordered to receive 25 lashes for abusive behaviour.', 344),
	(345, 'HOWARD', 'Thomas', NULL, 32, 'M', 'None', 3, 'Partner in the original crime was brother Thomas Oldfield.', 345),
	(346, 'HOWELL/HAWELL', 'Thomas', NULL, 28, 'M', 'labourer or woollen dresser', 3, 'Partner in the original crime was sister Isabella Oldfield. Night watch member.', 346),
	(347, 'HUBBARD', 'William', NULL, 19, 'M', 'milliner', 3, NULL, 347),
	(348, 'HUBBARD/HUSBAND', 'William', NULL, 24, 'M', 'none', 3, 'Sent to the Dunkirk hulk.Placed in irons a number of times while on the journey.Received 25 lashes on 14 July 1791 for coming in from her settlement without permission.', 348),
	(349, 'HUDSON', 'John', NULL, 13, 'M', 'book stitcher', 3, 'Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was that she was behaving better than formerly. Punished several times with leg irons whilst on Friendship.', 349),
	(350, 'HUFFNELL', 'Susannah', NULL, 22, 'F', 'bricklayer', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.According to documents of the time an industrious quiet man .', 350),
	(351, 'HUGHES', 'Frances Ann', NULL, 32, 'F', 'silversmith', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 351),
	(352, 'HUGHES', 'Hugh', NULL, 26, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 352),
	(353, 'HUGHES', 'John', NULL, 21, 'M', 'fisherman', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 353),
	(354, 'HUGHES', 'Thomas', NULL, 24, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 354),
	(355, 'HUMPHREYS', 'Edward', NULL, 21, 'M', 'shoemaker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.Received 50 lashes in June 1789 for insolence.', 355),
	(356, 'HUMPHREYS', 'Henry', NULL, 21, 'M', 'printer', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 356),
	(357, 'HUMPHRIES/HUMFRIES', 'Mary', 'Humfries', 30, 'F', 'seaman', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 357),
	(358, 'HURLEY', 'Jeremiah', NULL, 23, 'M', 'No trade recorded', 3, 'Partner in the original crime was Susannah Garth. Their drunken victim had staggered to Dugeons bed to sleep it off. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that she was behaving better than formerly.', 358),
	(359, 'HUSSEY', 'Samuel/James', NULL, 33, 'M', 'whitesmith (tinsmith)', 3, 'At his trial a witness reported having frequently seen him picking pockets.Guilty of return from transport following the Mercury mutiny.Executed for the murder of an employee, whom he had found lying with his wife.', 359),
	(360, 'HYLIDS/ILLID/EYLIDD', 'Thomas', 'DRAKE, Charles, Illid Eylidd', 32, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.In 1810 he was convicted of burglary and received a sentence of life transportation within NSW.', 360),
	(361, 'INETT', 'Ann', NULL, 30, 'F', 'No trade recorded', 3, 'Partner in the original crime was Elizabeth Dudgens. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that she was behaving better than formerly.', 361),
	(362, 'INGRAM/INGRAHAM', 'Benjamin', NULL, 18, 'M', 'shoemaker', 3, 'Described at his trial as a boy 11 years old.Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.', 362),
	(363, 'IRVINE/IRVIN', 'John', 'ADERSON; ANDERSON; LAW', 26, 'M', 'None', 3, 'The crime was one involving shoplifting.Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that she was behaving better than formerly.', 363),
	(364, 'JACKSON', 'Jane', 'ROBERTS, Esther', 30, 'F', 'None', 3, 'Her theft included one promissory note of 20 pounds from the Governor and company of the bank of England, commonly called a Bank note. The victim had agreed to go to bed with her being rather too much in liquor.Guilty of return from transport follo', 364),
	(365, 'JACKSON', 'Mary', NULL, 21, 'F', 'mantua maker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was behaving better than formerly.Described as Jewish.', 365),
	(366, 'JACKSON', 'William', NULL, 25, 'M', 'cabinet maker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that he had behaved remarkably well.', 366),
	(367, 'JACKSON', 'Hannah', NULL, 30, 'F', 'chimney sweep', 3, 'A child of nine years old when arrested.Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that he had behaved very well.Received 50 lashes on 15 February 1791 for being out of his hut after 9pm.', 367),
	(368, 'JACOBS', 'David', NULL, 27, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 368),
	(369, 'JACOBS', 'John', NULL, 21, 'M', 'ivory turner', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times. Received a sentenced of death on 27 February 1788 for theft of food, but reprieved.', 369),
	(370, 'JEMMISON/JAMISON/JAMMISON/JAMESON', 'James/John', 'Jammison Jameson', 27, 'M', 'waterman', 3, 'Guilty of return from transport following the Mercury mutiny. On the Dunkirk hulk he was a quiet prisoner. Received 50 lashes on 16 March 1789 for being absent from work.Night watch member in August 1789.', 370),
	(371, 'JEFFRIES', 'John', NULL, 26, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.', 371),
	(372, 'JEFFRIES', 'Robert', NULL, 31, 'M', 'weaver', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times. Joined NSW Corps in 1794. Described in September 1808 as aged 46 years one month, with dark complexio', 372),
	(373, 'JENKINS', 'Robert', 'BROWN, George', 55, 'M', 'shoemaker', 3, 'Partner in the original crime was Robert Forrester. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times. On 16 January 1789 he received 100 lashes for st', 373),
	(374, 'JENKINS', 'William', NULL, 24, 'M', 'None', 3, 'Actual value of stolen goods was 43 shillings. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was  troublesome at times. Described on his death as Edmund McGrass, papist.', 374),
	(375, 'JEPP/JEFF/GEPP', 'John', 'Gepp', 27, 'M', 'seaman', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was a dangerous Fellow, low in cunning.Described as a Catholic.', 375),
	(376, 'JOHNS', 'Stephen', NULL, 19, 'M', 'jeweller', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times. Night watch member.', 376),
	(377, 'JOHNSON', 'Catherine', NULL, 17, 'F', 'labourer', 3, 'Court to prisoner: I am very sorry to say that you have been very frequently tried here before.Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.', 377),
	(378, 'JOHNSON', 'Charles', NULL, 23, 'M', 'seaman', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 378),
	(379, 'JOHNSON', 'Edward', NULL, 29, 'M', 'silk weaver', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times.Accused of theft of food and sentenced on 27 February 1788 to receive 300 lashes, but was forgiven.', 379),
	(380, 'JOHNSON', 'Mary', NULL, 23, 'F', 'watchcase maker', 3, 'Guilty of return from transport following the Mercury mutiny, in which he was wounded.Report from Dunkirk hulk was that he had behaved remarkably well.Described at his death as a true philanthropist and a valuable member of society, in which he was u', 380),
	(381, 'JOHNSON', 'William', NULL, 24, 'M', 'No trade recorded', 3, 'Actual value of stolen goods was 99 shillings. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times. Received 50 lashes in November 1790 for stealing potatoes.', 381),
	(382, 'JONES', 'Edward', NULL, 23, 'M', 'stocking weaver', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 382),
	(383, 'JONES', 'Francis', NULL, -1, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was very quiet.The spelling of his name varies considerably in records.', 383),
	(384, 'JONES', 'John', NULL, 26, 'M', 'plasterer', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 384),
	(385, 'JONES', 'Margaret', NULL, 38, 'F', 'None', 3, 'She had previous convictions for theft. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that she was behaving better than formerly.On the journey, held in irons for 10 days for breaking through the bulkhead t', 385),
	(386, 'JONES', 'Richard', NULL, 34, 'M', 'shoemaker', 3, 'Actual value of stolen goods was 200 shillings. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was Troublesome at times.', 386),
	(387, 'JONES', 'Thomas', NULL, 23, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was that he had behaved remarkably well.Night watch member. Committed suicide, but there was no apparent reason.', 387),
	(388, 'JONES', 'Thomas', NULL, 21, 'M', 'No trade recorded', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was  troublesome at times.', 388),
	(389, 'JONES', 'William', NULL, 21, 'M', 'None', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 389),
	(390, 'JOSEPHS', 'Thomas', NULL, 27, 'M', 'cabinet maker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.At his death he was the overseer of carpenters.', 390),
	(391, 'KEELING/KELLAN', 'John Herbert', NULL, 22, 'M', 'leather breeches maker', 3, NULL, 391),
	(392, 'KELLY', 'Thomas', NULL, 23, 'M', 'labourer or brickmaker', 3, 'Report from Dunkirk hulk was troublesome at times.', 392),
	(393, 'KENNEDY', 'Martha', NULL, 31, 'F', 'labourer or miner', 3, 'Report from Dunkirk hulk was troublesome at times.', 393),
	(394, 'KIDNER/KIDNEY', 'Thomas', NULL, 23, 'M', 'labourer or carpenter', 3, 'Was press ganged into the navy at St Kitts, Leeward Islands in 1785.Report from Dunkirk hulk was tolerably decent and orderly. On 1 November 1788 sentenced to receive 200 lashes for stealing some boards, but later forgiven part of the punishment.', 394),
	(395, 'KILBY', 'William', NULL, 51, 'M', 'No trade recorded', 3, 'Did not embark.', 395),
	(396, 'KILPACK/KILLPACK', 'David', 'Killpack', 27, 'M', 'No trade recorded', 3, 'She spent time in irons on board the Friendship for theft and dirtyness. On 5 April 1791 she was ordered to receive 10 lashes for refusing to obey orders.', 396),
	(397, 'KIMBERLY', 'Edward', NULL, 22, 'M', 'weaver', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was behaves remarkably well.Killed by Aborigines while collecting greens.', 397),
	(398, 'KING', 'John', NULL, 33, 'M', 'No trade', 3, 'Report from Dunkirk hulk was that he behaved remarkably well.Behaviour deteriorated on the journey.  After one flogging Lt Clark wrote a young man But ane old Rogue.Flogged for theft on 15 February 1788.Executed 2 May 1788 for theft.', 398),
	(399, 'KNOWLER/NOWLAND', 'John', NULL, 25, 'M', 'labourer or farmer', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 399),
	(400, 'LA/RUE/LARNE/LU/RIEW/LA/RUE/LARNE/LAREW', 'James', 'Lu Riew La rue Larne Larew', 21, 'M', 'tailor', 3, 'Report from England hulk was tolerably decent and orderly.Considerable confusion exists with other William Davis.', 400),
	(401, 'LAMBETH', 'John', NULL, 24, 'M', 'No trade recorded', 3, NULL, 401),
	(402, 'LANE', 'William', NULL, 33, 'M', 'miller', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 402),
	(403, 'LANGLEY', 'Jane', NULL, 22, 'F', 'stocking weaver', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.On 21 August 1788 sentenced to receive 50 lashes for gambling.', 403),
	(404, 'LANKEY', 'David', NULL, 24, 'M', 'None', 3, 'Report from Dunkirk hulk was that he had behaved very well.A post mortem showed that his stomach was quite empty.', 404),
	(405, 'LARAH/ZARAH', 'Flora/Laura', 'Zarah', -1, 'F', 'labourer or miller', 3, 'Report from Dunkirk hulk was tolerably decent and orderly. Sentenced to receive 100 lashes for idleness in February 1789', 405),
	(406, 'LAVELL/LOVELL', 'Henry', 'Lovell', 23, 'M', 'labourer', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 406),
	(407, 'LAWRELL', 'John', NULL, 27, 'M', 'labourer', 3, 'Report from Dunkirk hulk was tolerably decent and orderly.', 407),
	(408, 'LAWRENCE/LAURENCE', 'Mary', 'Laurence', 30, 'F', 'labourer', 3, 'Married Susannah Holmes whom he had met on Dunkirk.An early entrepeneur. Night watch member.', 408),
	(409, 'LAYCOCK/HAYCOCK/HAYLOCK', 'Caroline', NULL, 22, 'F', 'None', 3, 'Married Henry Kable on 10 February 1788.  They had met in gaol and she had born his child there in 1786.', 409),
	(410, 'LE/GROVE', 'Stephen', NULL, 29, 'M', 'No trade recorded', 3, 'She had a previous conviction for theft.', 410),
	(411, 'LEARY', 'Jeremiah', NULL, 22, 'M', 'brickmaker', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.In June 1789 his rations were reduced to two thirds for three months after an attempt to defraud stores of 34 pounds of meat. On 15 August 1', 411),
	(412, 'LEARY', 'John', NULL, 24, 'M', 'saddler', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was in general tolerably well behaved but troublesome at times. Name Hares was contractors spelling.On 2 February 1789 sentenced to 50 lashes for falsehood, an', 412),
	(413, 'LEE/LEES', 'Elizabeth', 'Lees', 24, 'F', 'waterman', 3, 'Guilty of return from transport following the Mercury mutiny. Report from Dunkirk hulk was troublesome at times.', 413),
	(414, 'LEGG/LEGGE', 'George', 'Legge', 24, 'M', 'No trade recorded', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 414),
	(415, 'LEMON', 'Isaac', NULL, 25, 'M', 'silk dyer', 3, 'Partners in the original crime were John Leary, Francis Garland, and Henry Roach. Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.On 20 July 1789 sentenced to receive 100 lashes for buyi', 415),
	(416, 'LEONARD/LEONELL', 'Elizabeth', NULL, 33, 'F', 'soldier', 3, 'Guilty of return from transport following the Mercury mutiny.Report from Dunkirk hulk was troublesome at times.', 416),
	(417, 'LEVY', 'Amelia/Mary', 'Mary', 19, 'F', 'servant', 4, 'By the time she died, she was said to have returned to England at least three times.', 417),
	(418, 'LEVY', 'Joseph', NULL, 21, 'M', 'servant', 4, NULL, 418),
	(419, 'LEWIS', 'Sophia', NULL, 29, 'F', 'servant', 4, NULL, 419),
	(420, 'LIGHTFOOT', 'Samuel', NULL, 23, 'M', 'servant', 4, 'Had a child by Lt Poulden. She and her son probably returned to England with Lt Poulden.', 420),
	(421, 'LIMEBURNER', 'John', NULL, 32, 'M', 'servant', 4, NULL, 421),
	(422, 'LIMPUS', 'Thomas', NULL, 26, 'M', 'servant', 4, 'Partner in the original crime was Elizabeth/Winifred Bird.', 422),
	(423, 'LISK/LIST/LISKE', 'George', 'Liske', 28, 'M', 'servant', 4, 'Described as 4ft 4 inches tall, healthy and strong.She died at the Liverpool Lunatic Asylum, NSW, having been a patient since at least 1822.', 423),
	(424, 'LLOYD/LOYD/LYDE', 'John', NULL, 22, 'M', 'servant', 4, NULL, 424),
	(425, 'LOCK', 'Elizabeth', NULL, 23, 'F', 'hawker', 4, NULL, 425),
	(426, 'LOCKLEY/LOCKLY/LOCKEY', 'John', 'Lockly Lockey', 22, 'M', 'a poor unhappy woman of the town or servant', 4, 'Her victim, Hugh Harding was the same as that of Tamasin Allen.  One witness said of him I never see him sober.', 426),
	(427, 'LONG', 'Joseph', NULL, 27, 'M', 'servant', 4, 'Her victim, Hugh Harding was the same as that of Mary Allen.   One witness said of him I never see him sober.  Tam was described as a lustyish woman with black hair at her trial.', 427),
	(428, 'LONG', 'Mary', NULL, -1, 'F', 'servant', 4, 'Partner in the original crime was Elizabeth Bruce.', 428),
	(429, 'LONGSTREET', 'Joseph', NULL, 32, 'M', 'servant', 4, NULL, 429),
	(430, 'LOVE', 'Mary', NULL, 60, 'F', 'servant', 4, 'Described at her death as being aged 82, but Bowes was not a reliable estimater of age.', 430),
	(431, 'LUCAS', 'Nathaniel', NULL, 23, 'M', 'servant', 4, 'Gave birth to a child by a seaman on 20 July 1788, and later had a daughter, Alicia, by Lt Ralph Clark on 23 July 1791.  Alicia was the name of Clarks wife in England.', 431),
	(432, 'LYNCH', 'Ann', NULL, 40, 'F', 'servant', 4, 'Partner in the original crime was Elizabeth Anderson.', 432),
	(433, 'LYNCH', 'Humphrey', NULL, 24, 'M', 'servant', 4, 'She invited her victim to sleep with her.', 433),
	(434, 'LYNE/LANE', 'Richard', NULL, 26, 'M', 'mantua maker (dressmaker)', 4, 'Partner in the original crime was Rebecca Davidson. They invited their victim to a glass of gin, then he said she asked me to lay with her.', 434),
	(435, 'MacCORMACK/McCORMACK/McCORMICK', 'Sarah', 'CORNWALL McCormack McCormick', 20, 'F', 'servant', 4, 'She was caught with her hand in her victims pocket.', 435),
	(436, 'MacENTIRE/MacINTIRE/McINTIRE', 'John', 'McIntire', 32, 'M', 'mantua maker (dressmaker)', 4, NULL, 436),
	(437, 'MACKEY/MACKIE/MACKRIE', 'James', 'Mackrie', 25, 'M', 'milliner', 4, 'Partner in the original crime was Mary Johnson.', 437),
	(438, 'MacCLEAN', 'Edward', NULL, 43, 'M', 'servant', 4, 'Gave birth to stillborn child on 4 July 1787.', 438),
	(439, 'MacLEAN/McLEAN', 'Francis', 'McLean', 19, 'M', 'tambour worker', 4, 'Tambour work was embroidery done on a frame.', 439),
	(440, 'MacLEAN', 'Thomas', NULL, 18, 'M', 'charwoman or servant', 4, 'Age is an estimate.', 440),
	(441, 'MANSFIELD', 'John', NULL, 17, 'M', 'servant', 4, 'The crime was one involving shoplifting.Gave birth to child on 5 April 1788 (father a seaman).Became partner of, and eventually married Assistant Surgeon Arndell, by whom she had 6 children.', 441),
	(442, 'MARINER', 'William', NULL, 24, 'M', 'needleworker', 4, 'Partner in the original crime was Sarah Burdo. Their victim wanted to have connection with Burdo.', 442),
	(443, 'MARNEY/MARRINER/MARINER', 'William', 'Mariner', 28, 'M', 'servant', 4, 'Executed having been found guilty of theft of clothing. Captain Collins wrote She died generally reviled and unpitied by the people of her own description.', 443),
	(444, 'MARRIOTT/MERRIT//MARRIOT', 'Jane', 'Merrit  Marriot', -1, 'F', 'servant', 4, 'Had three children by Surgeon William Balmain, and accompanied him back to England.', 444),
	(445, 'MARROTT/MERRITT/MARRIOTT', 'John', 'Merritt Marriott', 35, 'M', 'servant', 4, 'She received 48 lashes on 14 June 1791 for being drunk and noisy.', 445),
	(446, 'MARSHALL', 'Joseph', NULL, 33, 'M', 'staymaker', 4, 'She persuaded her victim to go home with her.  He said I cannot say I was sober, but  I was not very much in liquor.', 446),
	(447, 'MARSHALL(1)', 'Mary', NULL, 29, 'F', 'servant', 4, 'On her death the Sydney Gazette wrote always much esteemed as an honest and industrious woman.', 447),
	(448, 'MARSHALL(2)', 'Mary', NULL, 19, 'F', 'servant', 4, 'The theft occured from a shop.', 448),
	(449, 'MARTIN', 'Abraham', NULL, 42, 'M', 'servant', 4, 'Partner in the original crime was Jane Langley.', 449),
	(450, 'MARTIN', 'Ann', NULL, 17, 'F', 'servant', 4, 'Described at her trial as a widow, she had stolen a gown after pretending to faint in a shop.', 450),
	(451, 'MARTIN/MARTYN', 'James', NULL, 26, 'M', 'hawker', 4, 'She was transported with her four year old daughter.On 13 February 1789 she received 25 lashes for abusing a sentinel; on 25 June, for stealing clothing it was 50 lashes on three successive Thursdays , her head shaved and a cap with the word THIEF on it;', 451),
	(452, 'MARTIN', 'John', NULL, 29, 'M', 'shoe binder', 4, 'Partner in the original crime was Eleanor McCabe.Had a son by a seaman, born on 10 December 1788 who died on 22 December 1788, then cared for and bore children to surveyor Augustus Alt until his death in 1814.', 452),
	(453, 'MARTIN/MATHER', 'Mary', NULL, -1, 'F', 'mantua maker', 4, 'She said at her trial I have not a friend in the world, her husband having died three months before the birth of their child.  Transported with her child, who died on 8 February 1787. She had a daughter by the captain of her ship, and then became partn', 453),
	(454, 'MARTIN/MARTYN', 'Stephen', 'Martyn', 38, 'M', 'servant', 4, 'The victim was robbed when he went with two women to a house, the lights were doused and he felt hands removing his money.', 454),
	(455, 'MARTIN', 'Thomas', NULL, 22, 'M', 'hawker', 4, NULL, 455),
	(456, 'MASON', 'Betty/Elizabeth', NULL, 22, 'F', 'lace weaver', 4, 'Received 25 lashes on 29 August 1788 for drunkenness and insolence.', 456),
	(457, 'MASON/GIBBS', 'Susannah', NULL, 49, 'F', 'old clothes woman, dealer', 4, 'Bowes gave her age as 82.', 457),
	(458, 'MATHER/MATTHEWS', 'Ann', 'Matthews', 14, 'F', 'silk winder', 4, 'One of a pair of abandoned characters who threw some kind of acid on a woman saying there are so many sly whores now it is impossible for a public whore to get her living. Partner in the original crime was Charlotte Springmore.', 458),
	(459, 'MATSON', 'Thomas', NULL, 27, 'M', 'servant', 4, 'Her victim stated My lord I value them [the items of clothing] at 30 shillings in order to save her life. Gave birth to child on 7 September 1787 (father was a seaman).Possibly returned with Lt Kellow, by whom she had two children.', 459),
	(460, 'MAY', 'Richard', NULL, 24, 'M', 'oyster seller or servant', 4, 'A witness saw her take the watch from the victims pocket.', 460),
	(461, 'McCABE', 'Eleanor', NULL, 24, 'F', 'apprentice clog [cloak?] maker', 4, 'On 9 February 1788 ordered to receive 30 lashes for insolence.', 461),
	(462, 'McCORMACK/McCORMICK', 'Mary', 'McCormick', 33, 'F', 'hawker', 4, 'The crime was one involving shoplifting.', 462),
	(463, 'McDALE/McDEED/DADE/DEANE', 'Richard', NULL, 33, 'M', 'servant', 4, 'She suggested her victim go with her, but he declined.  She asked for money, and he then felt her feeling his pockets.', 463),
	(464, 'McDONALD', 'Alexander', NULL, 29, 'M', 'needleworker', 4, 'Persuaded her victim up to her room.  When he woke he found his watch and cash missing.', 464),
	(465, 'McDONAUGH', 'James', NULL, 35, 'M', 'servant', 4, 'Known in Londonas Hell-fire Moll.', 465),
	(466, 'McGRAH/McGRATH', 'Redman/Redmond', NULL, 30, 'M', 'servant', 4, 'Her victim had been sleeping with her.', 466),
	(467, 'McLAUGHLIN/McLELLAN/McLENNAN/MacLAULIN', 'Charles', 'McLennan MacLaulin', 15, 'M', 'hawker', 4, 'Her victim had been sleeping with her.', 467),
	(468, 'M cNAMARA', 'William', NULL, 24, 'M', 'No trade recorded', 4, 'Partner in the original crime was Mary Finn.Their victim accompanied them to Marys home, when he felt a womans hand take money from his pocket.She was described as a tall with very curly hair, quite a black complexioned woman, and her hair grows ov', 468),
	(469, 'MEECH/MEACH', 'Jane', 'Meach', 29, 'F', 'servant', 4, NULL, 469),
	(470, 'MESSIAH/MASSIAS', 'Jacob', NULL, 16, 'M', 'servant cook', 4, NULL, 470),
	(471, 'MIDDLETON', 'Richard', NULL, 27, 'M', 'servant', 4, 'Described as a veteran in infamy by David Collins in 1805.', 471),
	(472, 'MIDGLEY', 'Samuel', NULL, 21, 'M', 'servant', 4, 'Actual value of stolen goods was 99 shillings.Her victim had gone to bed with her before being robbed.Death was by suicide, which she had also attempted some months earlier.', 472),
	(473, 'MILES/MOYLE', 'Edward', NULL, 25, 'M', 'servant', 4, 'She is readily distinguished from the other Mary Marshall, by her behaviour and the fact that she was able to sign her name.', 473),
	(474, 'MILLS/HILL', 'Mathew/John', NULL, 24, 'M', 'servant', 4, 'Ordered  to 25 lashes on 9 February 1789 for infamous expressions and another 50 on 18 March 1789 for possessing soldiers property. On 29 August 1791 she received 50 lashes for leaving the farm without permission and being very impertinent to Major Ro', 474),
	(475, 'MILTON', 'Charles', NULL, 34, 'M', 'hawker', 4, 'Together with Ann George she persuaded their victim to go to her room where they robbed him.Gave birth to stillborn child on 24 November 1787.', 475),
	(476, 'MITCHCRAFT/BEACHCROFT', 'Mary', NULL, 16, 'F', 'servant', 4, 'The crime was one involving shoplifting.Gave birth to child on 16 November 1789 (d 14 February 1790) whose father was a seaman. This childs mother is not identified very clearly in the sources, but Mary Morton is most probably the mother.', 476),
	(477, 'MITCHELL', 'Mary', NULL, 19, 'F', 'servant', 4, 'Travelled with her 3 year old daughter.', 477),
	(478, 'MITCHELL', 'Nathaniel', NULL, 36, 'M', 'servant or needle worker', 4, 'On 9 February 1788 was assaulted by a soldier for refusing to go into the woods.A very successful businesswoman in Sydney.', 478),
	(479, 'MOBBS', 'Samuel', NULL, 23, 'M', 'servant', 4, NULL, 479),
	(480, 'MOLLANDS/MULLINS', 'John', 'Mullins', 21, 'M', 'servant', 4, NULL, 480),
	(481, 'MOOD', 'Charles', 'MILLER', 25, 'M', 'servant', 4, NULL, 481),
	(482, 'MOORE/RANSMORE', 'William', NULL, 29, 'M', 'milliner', 4, NULL, 482),
	(483, 'MORAN/MOORIN/MOREING/MOSEING/MORIN', 'John', 'Moreing Moseing Morin', 32, 'M', 'mantua maker', 4, 'The crime was one involving shoplifting.Lived with Lt Ball in Sydney.', 483),
	(484, 'MORGAN', 'Richard', NULL, 25, 'M', 'servant', 4, 'Described as the female highwayman.', 484),
	(485, 'MORGAN', 'Robert', NULL, 24, 'M', 'servant or charwoman or washerwoman', 4, NULL, 485),
	(486, 'MORGAN', 'William', NULL, 19, 'M', 'fishmonger or servant', 4, NULL, 486),
	(487, 'MORLEY/MAWLEY', 'Joseph', 'Mawley', 26, 'M', 'laundress, mantua maker', 4, 'Gave birth  on 31 May 1787 to a child which died on 8 June 1787.A teacher in the colony from 1790-1810 with her husband William Richardson.', 487),
	(488, 'MORRIS', 'Peter', NULL, 28, 'M', 'needleworker', 4, 'Took her 2 year old son who died on 24 April 1797.', 488),
	(489, 'MORRISBY', 'James/John', NULL, 30, 'M', 'watch chain maker', 4, 'The crime was one involving shoplifting.On 5 March 1789 ordered to receive 25 lashes for  supplying the liquor which caused the drunkenness of another.', 489),
	(490, 'MORTIMER', 'John', NULL, 54, 'M', 'nurse', 4, 'Smith had been before the courts several times.  Escaped (and probably died) 14 February 1788.', 490),
	(491, 'MORTIMER', 'Noah', NULL, 26, 'M', 'hawker', 4, 'May have received 25 lashes on 18 March 1789 for being in possession of a soldiers property. Married George Clare.', 491),
	(492, 'MORTON/MOULTON', 'Mary', 'Moulton', 20, 'F', 'mantua maker', 4, 'The crime involved shoplifting.', 492),
	(493, 'MOSELEY/MORLEY', 'John', 'SHORE Morley', 29, 'M', 'hawker', 4, NULL, 493),
	(494, 'MOULD', 'William', NULL, 28, 'M', 'silk winder', 4, 'One of a pair of abandoned characters i.e. prostitutes according to court records. Partner in the original crime was Mary Harrison (Lady Penrhyn).  They threw acid over another woman saying, there are so many sly whores now it is impossible for a publi', 494),
	(495, 'MOWBRAY/MOUBREY', 'John', 'Moubrey', 25, 'M', 'servant', 4, NULL, 495),
	(496, 'MULCOCK/MOCOCK/MULLOCK/MOLOCK/MULCOCK', 'Jesse', 'Mulcock', 25, 'M', 'artificial flower maker', 4, NULL, 496),
	(497, 'MULLENS', 'Hannah/Hanna', 'Hanna', 27, 'F', 'second hand dealer', 4, 'On 12 September 1788 and again on 21 September 1788 sentenced to receive 25 lashes for drunkenness.', 497),
	(498, 'MULLIS/MULLOT', 'Stephen', NULL, 25, 'M', 'servant', 4, NULL, 498),
	(499, 'MUNRO', 'Lydia/Letitia', NULL, 17, 'F', 'needleworker', 4, NULL, 499),
	(500, 'MURPHY', 'James', NULL, 44, 'M', 'lace maker', 4, 'Both in liquor, she and her victim returned to her dwelling, where the theft occurred.', 500),
	(501, 'MURPHY', 'William', NULL, -1, 'M', 'servant', 4, 'The court was told the devil was very busy in her, she was in liquor.She had been on board 3 months when she died while the fleet was still at anchor.', 501),
	(502, 'NEAL', 'James', NULL, 18, 'M', 'servant', 4, 'Doubt as to her identity in later records because of inconsistent use of her name.', 502),
	(503, 'NEALE/NEAL', 'John', 'Neal', 33, 'M', 'servant', 4, NULL, 503),
	(504, 'NEEDHAM', 'Elizabeth', NULL, 25, 'F', 'servant', 4, 'Described as a widow', 504),
	(505, 'NETTLETON', 'Robert', NULL, 29, 'M', 'servant', 4, NULL, 505),
	(506, 'NICHOLLS', 'John', NULL, 27, 'M', 'barrow woman', 4, NULL, 506),
	(507, 'NORTON', 'Phebe', NULL, 31, 'F', 'servant', 4, 'In June 1789 she received 36 lashes for theft.', 507),
	(508, 'NOWLAND/NEWLAND', 'John', 'Newland', 32, 'M', 'furrier', 4, 'Partner in the original crime was Ann Martin.Received 50 lashes over 3 Saturdays in January 1789 for stealing a shift, and another 50 lashes for abusive language in November 1789.Described as Jewish.', 508),
	(509, 'NUNN', 'Robert', NULL, 28, 'M', 'servant', 4, 'Partner in the original crime was Amelia Levy.On 23 August 1788 she was charged with being so drunk she could hardly stand, throwing things and shouting abuse, and ordered to make pegs for a month.  A night disturbance on 30 March 1789 led to her being', 509),
	(510, 'NURSE', 'John', 'MUNROE', 17, 'M', 'servant', 4, 'Gave birth to a child on 13 April 1787 (d 19 May 1788) and married his father Thomas Tilley on 4 May 1788.', 510),
	(511, 'OCRAFT/OAKRAFT', 'John', NULL, 38, 'M', 'servant or weaver', 4, 'Gave birth to child (son of a seaman) who died 29 February 1788.', 511),
	(512, 'OGDEN', 'James', NULL, 19, 'M', 'charwoman', 4, 'Partner in the original crime was Susannah Huffnell.', 512),
	(513, 'OKEY', 'William', NULL, 19, 'M', 'glove maker', 4, NULL, 513),
	(514, 'OLDFIELD', 'Isabella', NULL, 25, 'F', 'servant', 4, NULL, 514),
	(515, 'OLDFIELD', 'Thomas', NULL, 24, 'M', 'servant', 4, 'Partner in the original crime was Mary Cooper.', 515),
	(516, 'OPLEY/HOPLEY', 'Peter', 'Hopley', 19, 'M', 'mantua maker', 4, 'Had two children by Lt P G King, before he returned home in 1796.  These boys were educated in England by their father.', 516),
	(517, 'ORFORD/AWEFORD/ALFORD/HARTFORD/OXFORD', 'Thomas', 'Aweford Alford Hartford Oxford', 25, 'M', 'servant', 4, 'On 5 March 1789 she was sentenced to receive 50 lashes (25 then and 25 on the next provision day) for stealing cabbages.', 517),
	(518, 'OSBORNE/JONES', 'Elizabeth', NULL, 30, 'F', 'milliner', 4, 'Had a child baptised on 9 March 1788.Bore a daughter and son by Capt David Collins and returned to England with him in 1796.  She returned to NSW with the children in 1799.', 518),
	(519, 'OSBORNE/OSBORN/HOSBURN', 'Thomas', 'Osborn Hosburn', 23, 'M', 'No trade recorded', 5, 'On 5 December 1788 she brought a complaint against her husband after a dispute. It was considered trivial and she received 25 lashes.She died universally respected by her numerous friends and acquaintances.', 519),
	(520, 'OWEN', 'John', NULL, 18, 'M', 'No trade recorded', 5, NULL, 520),
	(521, 'OWEN', 'Joseph', NULL, 67, 'M', 'servant', 5, NULL, 521),
	(522, 'OWLES', 'John', NULL, 35, 'M', 'No trade recorded', 5, 'Partner in the original crime was Lydia Munro.', 522),
	(523, 'PAGE', 'Paul', NULL, -1, 'M', 'pinheader', 5, 'Partners in the original crime were Mary Mitchcraft and Sarah Taylor.', 523),
	(524, 'PAGET', 'Joseph', NULL, 26, 'M', 'servant', 5, 'Partners in the original crime were Martha Kennedy and Sarah Taylor.', 524),
	(525, 'PALMER', 'John Henry', NULL, 22, 'M', 'No trade recorded', 5, 'Partner in the original crime was Ann Forbes.Victim of an attempted rape on July 1788 by William Boggis.', 525),
	(526, 'PARE/PANE', 'William', NULL, 47, 'M', 'servant', 5, 'Partners in the original crime were Mary Mitchcraft and Martha Kennedy.', 526),
	(527, 'PARISH', 'William', 'POTTER', -1, 'M', 'No trade recorded', 5, 'Described at her trial as a widow.', 527),
	(528, 'PARKER', 'Elizabeth', NULL, 23, 'F', 'No trade recorded', 5, NULL, 528),
	(529, 'PARKER', 'John', NULL, 25, 'M', 'laundress', 5, 'Partner in the original crime was George Youngson - relationship not known.', 529),
	(530, 'PARKER', 'Mary', NULL, 28, 'F', 'No trade recorded', 5, 'Partner in the original crime was Elizabeth Youngson - relationship not known.', 530),
	(531, 'PARKINSON/PARTINGTON', 'Jane', 'MARSDEN, Ann Partington', 22, 'F', 'No trade recorded', 5, NULL, 531),
	(532, 'PARR', 'William', NULL, -1, 'M', 'servant', 5, 'Possibly taken back to England with Lt Long, her daughter (b November 1791) by him and an older daughter (b March 1789) by a seaman.', 532),
	(533, 'PARRIS', 'Peter', NULL, 27, 'M', 'No trade recorded', 5, NULL, 533),
	(534, 'PARRY', 'Edward', NULL, 57, 'M', 'No trade recorded', 5, 'Partner in the original crime was her husband William Fraser.', 534),
	(535, 'PARRY', 'Sarah', NULL, 28, 'F', 'No trade recorded', 5, NULL, 535),
	(536, 'PARSLEY', 'Ann', NULL, 15, 'F', 'No trade recorded', 5, 'Partner in the original crime, which involved shoplifting, was Elizabeth Cole.Lived with Capt Meredith, giving birth to their child, who returned to England with his father leaving behind Mary, pregnant with Merediths daughter.', 536),
	(537, 'PARTRIDGE/RICE', 'Richard', 'Rice', 30, 'M', 'milliner', 5, 'Jewish. Travelled with daughter (1787-1837).De facto and later legal wife of Lt George Johnston of the Marines.Described by her grandson as always a stirring industrious woman.', 537),
	(538, 'PARTRIDGE', 'Sarah', 'ROBERTS', 22, 'F', 'No trade recorded', 5, 'Died while giving birth to a child by Marine private John Brown.', 538),
	(539, 'PEAT/PEET', 'Charles', NULL, 28, 'M', 'No trade recorded', 5, 'Partner in the original crime was Elizabeth Scott.', 539),
	(540, 'PEAULET/PEALLET/POWLETT/PULET/POWLETT', 'James', 'Peallet Powlett Pulet Powlett', -1, 'M', 'servant', 5, NULL, 540),
	(541, 'PECK', 'Joshua', NULL, 31, 'M', 'No trade recorded', 5, NULL, 541),
	(542, 'PENNY/PINNEY/PINKEY', 'John', 'Pinney Pinkey', 32, 'M', 'No trade recorded', 5, 'Victim of an accident while waiting on board in Portsmouth.', 542),
	(543, 'PERCIVAL/PERCIVALL', 'Richard', 'Percivall', 23, 'M', 'No trade recorded', 5, 'Context of crime was shoplifting.', 543),
	(544, 'PERKINS', 'Edward', NULL, 57, 'M', 'No trade recorded', 5, 'Received 25 lashes in March 1789 for supplying liquor to Elizabeth Leonard, making her drunk and insolent.', 544),
	(545, 'PERROTT/PARRETT/BEARCROFT/PARKINS', 'Edward', 'Parkins', -1, 'M', 'servant', 5, 'This quiet sober girl remained as a servant in Lt Governor Philip Kings household for 15 years.', 545),
	(546, 'PETHERICK/PEDERICK/PATRICK/PEDRICK', 'John', 'Pederick Patrick Pedrick', 39, 'M', 'No trade recorded', 5, 'Partner in the original crime was Ann Parsley.In April 1790 she received 25 lashes for allowing pigs into her garden, and in October received 26 of 50 lashes ordered for repeatedly coming into town without permission.', 546),
	(547, 'PETRIE', 'John', NULL, 22, 'M', 'No trade recorded', 5, NULL, 547),
	(548, 'PETTITT/PETIT', 'John', NULL, 29, 'M', 'servant', 5, 'At her trial the court said it is a horrid thing that servants will behave so.', 548),
	(549, 'PEYTON', 'Samuel', NULL, 19, 'M', 'No trade recorded', 5, 'The crime was one involving shoplifting.On 14 July 1791 she received 25 lashes for leaving her settlement without permission.', 549),
	(550, 'PHILLIMORE', 'Richard/William', NULL, 33, 'M', 'No trade recorded', 5, 'Partner in the original crime involving shoplifting was Ann Smith (Prince of Wales).', 550),
	(551, 'PHILLIPS', 'Mary', NULL, 33, 'F', 'No trade recorded', 5, 'Was included on contractors list by error, and did not sail with First Fleet.', 551),
	(552, 'PHILLIPS', 'Richard', NULL, 22, 'M', 'servant', 5, NULL, 552),
	(553, 'PIGOTT/PICKETT', 'Samuel', NULL, 26, 'M', 'No trade recorded', 5, 'She described herself as an unfortunate. On 7 October 1789 sentenced to receive 25 lashes for stealing some pork.', 553),
	(554, 'PILES', 'Mary', NULL, 20, 'F', 'No trade recorded', 5, 'Partner in the original crime, one of shoplifting, was Phebe Flarty. The pair were known prostitutes.Had a child by Lt Furzer, whom he took home with him to England in 1792 as his heir.', 554),
	(555, 'PINDER', 'Mary', NULL, 21, 'F', 'No trade recorded', 5, 'May have returned to England as servant to Lt Governor P G Kings wife.', 555),
	(556, 'PIPKIN', 'Elizabeth', NULL, -1, 'F', 'No trade recorded', 5, 'Partner in the original crime was Sarah Ault.She died by overloading her stomach with flour and greens, her hunger being caused by the reduction in rations.', 556),
	(557, 'PONTIE', 'John', NULL, 27, 'M', 'nurse', 5, 'Partner in the original crime was Catherine Johnson.The crime was one involving shoplifting.', 557),
	(558, 'POOLE', 'Jane', NULL, 19, 'F', 'No trade recorded', 5, 'The victim awoke in Smiths room to find the watch missing. I was not drunk, nor can I say I was sober.May have received 25 lashes on 18 March 1789 for being in possession of a soldiers property.', 558),
	(559, 'POORE/POWER/POWER/POOR', 'William', 'Power Poor', 21, 'M', 'No trade recorded', 5, NULL, 559),
	(560, 'POPE', 'David', NULL, 34, 'M', 'No trade recorded', 5, NULL, 560),
	(561, 'POWELL', 'Ann', NULL, 35, 'F', 'No trade recorded', 5, NULL, 561),
	(562, 'POWER', 'John', NULL, 24, 'M', 'servant', 5, 'Asked permission to take her daughter to NSW.  The child (1786-1788) died shortly after her mother.', 562),
	(563, 'PRICE', 'James', NULL, 26, 'M', 'No trade recorded', 5, 'Described in court records as an evil disposed person.Probably Jewish.', 563),
	(564, 'PRICE', 'John', NULL, 22, 'M', 'No trade recorded', 5, 'Described at her trial as an unfortunate old woman and a very sober and industrious woman.', 564),
	(565, 'PRIOR/FRYER', 'Catherine', NULL, 24, 'F', 'No trade recorded', 5, 'On 25 July 1789 received a sentence of 50 lashes for helping to steal a shirt.', 565),
	(566, 'PRIOR', 'Thomas', NULL, 31, 'M', 'No trade recorded', 5, NULL, 566),
	(567, 'PRITCHARD', 'Thomas', NULL, 22, 'M', 'No trade recorded', 5, NULL, 567),
	(568, 'PUGH', 'Edward', NULL, 22, 'M', 'No trade recorded', 5, 'Described as an abandoned woman [who] is in figure a fine woman and has got a handsome face by Lt Clark. On 9 May 1789 ordered to receive 36 lashes for infamous behaviour. Sentenced to receive 25 lashes on 6 June 1791 for coming into town without per', 568),
	(569, 'PULLEY/POWLEY/POOLEY', 'Elizabeth', 'Pooley', 24, 'F', 'No trade recorded', 5, 'The 5 year term was a clerical error in Mary Spencers favour. It should have been 7 years. Gave birth to a child  - a daughter (d 5 April 1788) - on 1 July 1787.', 569),
	(570, 'RADFORD/REDFORD/RATFORD', 'William', 'MEYNELL, John Redford Ratford', 25, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was that he had behaved tolerably well. Transferred from the Charlotte to Scarborough at Portsmouth.', 570),
	(571, 'RAMSAY', 'John', NULL, 25, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.May have fallen overboard in 1787.', 571),
	(572, 'RANDALL/REYNOLDS', 'John', NULL, 22, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 572),
	(573, 'RAYMOND/REYMOND', 'George', NULL, 31, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 573),
	(574, 'READ/REED', 'Ann', NULL, 22, 'F', 'No trade recorded', 6, 'Partner in the original crime was William Smith.Report from Dunkirk hulk was tolerably decent and orderly.', 574),
	(575, 'READ/REED', 'William', NULL, 31, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was sometimes troublesome. In August 1789 could only bear 61 of 100 lashes ordered for gambling on Sunday.  He received remaining 39 lashes on 5 September 1789.', 575),
	(576, 'REARDON/BARTLETT', 'Bartholomew', 'Bartlett', 62, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 576),
	(577, 'REPEAT', 'Charles', NULL, 20, 'M', 'farmer', 6, 'His gravestone reads My mother reread me tenderley. With me she took much paines And when I arived in this coelney I sowd the forst grain and now with my hevnly father I hope for ever to remain.', 577),
	(578, 'RICE', 'John', NULL, 27, 'M', 'No trade recorded', 6, 'Partner in the original crime was Timothy Discall.Report from Dunkirk hulk was tolerably decent and orderly.', 578),
	(579, 'RICHARDS', 'David', NULL, 23, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly. On 23 Februay 1789 sentenced to receive 25 lashes for insolence.', 579),
	(580, 'RICHARDS', 'James', NULL, 23, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was sometimes troublesome.Probably the John Williams who drowned at Norfolk Island.', 580),
	(581, 'RICHARDS', 'James', NULL, 20, 'M', 'labourer', 6, 'Died on hulk and did not embark.', 581),
	(582, 'RICHARDS', 'John', 'WILLIAMS', 56, 'M', 'labourer', 6, NULL, 582),
	(583, 'RICHARDSON', 'Hardwicke', NULL, -1, 'M', 'labourer', 6, 'Received 2000 lashes in April 1789 for stealing 13 pounds of biscuit. He saw a broken lock and hunger prompted him to take the biscuit.', 583),
	(584, 'RICHARDSON', 'James', NULL, 20, 'M', 'labourer', 6, 'Actual value of stolen goods was 10 shillings.', 584),
	(585, 'RICHARDSON/MANN', 'John', NULL, 27, 'M', 'No trade recorded', 6, 'Although technically free he received the sentence of wearing an iron collar for a year for stealing corn and greens.', 585),
	(586, 'RICHARDSON/RICHARDS', 'Samuel', 'Richards', 21, 'M', 'No trade recorded', 6, 'Night watch member in 1805.He considered the convicts of Norfolk island no better than heathens and that women were born for the convenience of men.  Described  by convicts in his charge as sadistic.', 586),
	(587, 'RICHARDSON', 'William', NULL, 25, 'M', 'No trade recorded', 6, 'Partner in the original crime was William Read.An early sheep grazer, he was regarded as one of the success stories of the colony.', 587),
	(588, 'RICKSON', 'William', NULL, 21, 'M', 'No trade recorded', 6, 'Partner in the original crime was William Elliott.', 588),
	(589, 'RISBY', 'Edward', NULL, 29, 'M', 'No trade recorded', 6, 'Partner in the original crime was John Cullyhorn/Callaghan.Needed and received medication during 1783.', 589),
	(590, 'ROACH', 'Henry', NULL, 26, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 590),
	(591, 'ROBERTS', 'John', NULL, -1, 'M', 'seaman', 6, 'Partner in the original crime was John Carney.Required medication while awaiting transfer to a hulk.Found guilty of insulting Major Robert Ross, and received 600 lashes, and six months work in irons, even though his term had expired.', 591),
	(592, 'ROBERTS', 'William', NULL, 31, 'M', 'No trade recorded', 6, NULL, 592),
	(593, 'ROBINS', 'John', 'MAJORS', 27, 'M', 'No trade recorded', 6, 'Ordered 100 lashes on 13 June 1788 for leaving work for 2 days to gather greens, but received only 50.  Ordered 150 lashes and to wear a leg iron for a year for an attack on Aborigines.', 593),
	(594, 'ROBINSON', 'George', NULL, 17, 'M', 'seaman', 6, 'Report from Dunkirk hulk was troublesome at times.', 594),
	(595, 'ROBINSON', 'George', NULL, 38, 'M', 'No trade recorded', 6, NULL, 595),
	(596, 'ROBINSON', 'Joseph/Thomas', NULL, 24, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.Charged with 3 of his sons in 1821, with stealing government sheep and received a sentence of colonial transportation to Newcastle for 14 years.', 596),
	(597, 'ROBINSON', 'William', NULL, 24, 'M', 'No trade recorded', 6, 'Became a schoolmaster on Norfolk Island.', 597),
	(598, 'ROGERS', 'Daniel', NULL, 33, 'M', 'blacksmith', 6, NULL, 598),
	(599, 'ROGERS', 'Isaac', NULL, 25, 'M', 'labourer', 6, NULL, 599),
	(600, 'ROLT', 'Mary', NULL, 29, 'F', 'labourer', 6, 'Received 50 lashes on 11 August 1789 for infamous behaviour to Margaret Dawson.', 600),
	(601, 'ROMAINE/ROMAIN', 'John', 'Romain', 21, 'M', 'ships carpenter', 6, 'Received 50 lashes on 28 March 1791 for theft of timber.', 601),
	(602, 'ROMAN/KNOWLAND/RONAN/ROWLAND', 'Andrew', NULL, 32, 'M', 'brazier', 6, 'Actual value of stolen goods was 40 shillings.', 602),
	(603, 'ROPE', 'Anthony', NULL, 28, 'M', 'fisherman', 6, 'Partner in original crime was William Hubbard.  On 2 August 1788 received 50 lashes for gambling for a knife, sentenced to 100 lashes in September 1788 for attempting to rape Lydia Munro, and in July 1789 received 200 lashes for stealing a shirt from a', 603),
	(604, 'ROSSON', 'Isabella', NULL, 33, 'F', 'staymaker', 6, NULL, 604),
	(605, 'ROWE', 'John', NULL, 30, 'M', 'No trade recorded', 6, NULL, 605),
	(606, 'ROWE', 'William', NULL, 32, 'M', 'plasterer', 6, 'Partner in the original crime was William Boggis.Obvious problem of confusion with the other William Hubbard in NSW records - they are differentiated by their literacy.Night watch member.', 606),
	(607, 'RUFFLER', 'John', NULL, 27, 'M', 'labourer', 6, 'Partner in the original crime was John Ramsay.No record of his death on the voyage, nor does he appear in the victualling list for 1788.', 607),
	(608, 'RUGLASS/RUGGLES', 'John', 'Ruggles', 22, 'M', 'seaman or labourer', 6, 'Partner in the original crime was William Johnson.Described by Watkin Tench as a civil sober industrious man.', 608),
	(609, 'RUSE/RUCE', 'James', 'Ruce', 28, 'M', 'seaman', 6, NULL, 609),
	(610, 'RUSSELL/RUSSEL', 'John', 'Russel', 64, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 610),
	(611, 'RUTH', 'Robert', NULL, 22, 'M', 'No trade recorded', 6, 'Partner in the original crime was John Rowe.Report from Dunkirk hulk was tolerably decent and orderly.', 611),
	(612, 'RYAN', 'John', 'BRYANT', 23, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was that he had behaved very well.', 612),
	(613, 'SALTMARSH', 'William', NULL, 17, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 613),
	(614, 'SAMPSON', 'Peter', NULL, -1, 'M', 'No trade recorded', 6, 'Brother of William Rowe. Partner in the original crime was Edward Moyle.Report from Dunkirk hulk was tolerably decent and orderly.', 614),
	(615, 'SANDLIN/LINES/SANDLAND/SANDILON/LYNES', 'Ann', 'PATTEN Sandland Sandilon Lynes', 30, 'F', 'No trade recorded', 6, 'Brother of John Rowe.Report from Dunkirk hulk was tolerably decent and orderly.', 615),
	(616, 'SANDS', 'William', NULL, 27, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was  tolerably decent and orderly. Sentenced to receive 150 lashes (at 50 a week) in March 1789 for playing cards.', 616),
	(617, 'SAUNDERSON', 'Thomas', NULL, 22, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 617),
	(618, 'SCATTERGOOD', 'Robert', NULL, 35, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was that he had behaved remarkaby well.', 618),
	(619, 'SCOTT', 'Elizabeth', NULL, -1, 'F', 'surgeon', 6, 'The first convict to be emancipated, and considered to be the best of all the surgeons in NSW.', 619),
	(620, 'SELSHIRE', 'Samuel', NULL, 23, 'M', 'labourer', 6, NULL, 620),
	(621, 'SEYMOUR', 'John', NULL, 26, 'M', 'No trade recorded', 6, NULL, 621),
	(622, 'SHARP', 'George', NULL, 39, 'M', 'No trade recorded', 6, 'Such a good carpenter that he was offered an incentive to stay on as a free man.', 622),
	(623, 'SHAW', 'Joseph', NULL, 35, 'M', 'labourer', 6, NULL, 623),
	(624, 'SHEERS/SHIERS', 'James', NULL, 40, 'M', 'labourer', 6, NULL, 624),
	(625, 'SHEPHARD/HAYDON/EATON/SHEPPARD/HAYDEN', 'Mary', 'Sheppard Hayden', 22, 'F', 'No trade recorded', 6, NULL, 625),
	(626, 'SHEPHERD/SHEPPARD', 'Robert', 'Sheppard', 32, 'M', 'No trade recorded', 6, NULL, 626),
	(627, 'SHERMAN/SHEARMAN', 'William', NULL, 25, 'M', 'labourer', 6, NULL, 627),
	(628, 'SHORE', 'John', NULL, 37, 'M', 'labourer', 6, 'Described as an ignorant black youth. On 29 February 1788 received a sentence of death for stealing wine, but it was commuted to banishment, which was soon cancelled.', 628),
	(629, 'SHORE', 'William', NULL, 19, 'M', 'No trade recorded', 6, 'On 29 December 1790 charged with being up late and creating a disturbance. Received a punishment of being fined 2 pounds of flour from the next weeks rations.', 629),
	(630, 'SIDAWAY/SIDEWAY', 'Robert', 'Sideway', 29, 'M', 'No trade recorded', 6, 'Partner in the original crime was John Ayners.', 630),
	(631, 'SILVERTHORN', 'John', NULL, 24, 'M', 'No trade recorded', 6, 'Partner in the original crime was John Adams.', 631),
	(632, 'SLATER', 'Sarah', NULL, 30, 'F', 'No trade recorded', 6, 'Partners in the original crime were Peter Sampson and Joseph Collins.On 13 February 1792 he received 200 lashes for refusing to work.', 632),
	(633, 'SMALL', 'John', NULL, 26, 'M', 'No trade recorded', 6, 'Murdered by his wife.', 633),
	(634, 'SMART', 'Daniel', NULL, 32, 'M', 'No trade recorded', 6, 'Night watch member.', 634),
	(635, 'SMART', 'Richard', NULL, 23, 'M', 'No trade recorded', 6, 'Night watch member.', 635),
	(636, 'SMITH', 'Ann', NULL, 30, 'F', 'shoemaker', 6, 'Probably absconded soon after landing. Partner in the original crime was John Pettitt.', 636),
	(637, 'SMITH', 'Ann', NULL, -1, 'F', 'chimney sweep', 6, 'Partner in the original crime was Thomas Till.', 637),
	(638, 'SMITH', 'Ann', NULL, -1, 'F', 'No trade recorded', 6, 'Actual value of stolen goods was 20 shillings. Partner in the original crime was James Burley.', 638),
	(639, 'SMITH', 'Catherine', NULL, 35, 'F', 'soldier', 6, 'Received 50 lashes on 21 July 1788 for making a riot.Joined NSW Corps in 1793.Described in September 1808 as aged 50 years four months, with dark complexion, dark brown hair, hazel eyes, and 5ft 6ins tall. Former occupation given as mason.', 639),
	(640, 'SMITH', 'Catherine', NULL, -1, 'F', 'silk weaver', 6, 'Night watch member.', 640),
	(641, 'SMITH', 'Edward', NULL, 30, 'M', 'No trade recorded', 6, NULL, 641),
	(642, 'SMITH', 'Edward', NULL, 30, 'M', 'servant', 6, NULL, 642),
	(643, 'SMITH', 'Hannah', NULL, 29, 'F', 'coachman', 6, 'Reported by a witness to have always been well behaved and to have held many respectable posts.On 2 February 1789 received  50 lashes for theft.Night watch member by 1805.', 643),
	(644, 'SMITH', 'James', NULL, 20, 'M', 'seaman', 6, 'On 2 November 1789 he received 100 lashes for beating his wife, on 22 February 1790 he received 25 lashes for being absent from work, and on 18 May 1790 he received 50 more for fighting.', 644),
	(645, 'SMITH', 'John', NULL, 35, 'M', 'No trade recorded', 6, 'Guilty of return from transport following the Swift mutiny. Night watch member. Escaped 1791.', 645),
	(646, 'SMITH', 'John', NULL, 23, 'M', 'No trade recorded', 6, 'Confused with the other James Bradley, at the time the original lists were being prepared.On 23 February 1789 received 25 lashes for insolence.', 646),
	(647, 'SMITH', 'Mary', NULL, 25, 'F', 'nurseryman', 6, 'Confusion exists about given name.', 647),
	(648, 'SMITH', 'Thomas', NULL, 24, 'M', 'No trade recorded', 6, 'Died as a result of an attack by Aborigines.', 648),
	(649, 'SMITH', 'William', NULL, 29, 'M', 'No trade recorded', 6, NULL, 649),
	(650, 'SMITH', 'William', NULL, -1, 'M', 'seaman', 6, 'Partner in the original crime was Andrew Goodwin.', 650),
	(651, 'SMITH', 'William', NULL, 21, 'M', 'No trade recorded', 6, NULL, 651),
	(652, 'SMITH', 'William', NULL, 31, 'M', 'No trade recorded', 6, 'Described by Captain Collins as an industrious and thriving settler.', 652),
	(653, 'SMITH', 'Thomas', 'HAINES/HAYNES Haynes Harries', 30, 'M', 'No trade recorded', 6, 'Born in the West Indies.', 653),
	(654, 'SNAILHAM/SNALEHAM/SNAILAM/STRACHAN', 'William', 'Snaleham Snailam Strachan', 21, 'M', 'butcher or seaman', 6, 'Probably a pick pocket theft.', 654),
	(655, 'SPARKES', 'Henry/Thomas', NULL, 29, 'M', 'No trade recorded', 6, 'He was caught when, having broken into a public house, he was found lying in the cellar very much in liquor.He died a very infirm old man as a result of excessive drinking of spirits.', 655),
	(656, 'SPENCE', 'John', 'PEARCE', 28, 'M', 'shoemaker', 6, 'Partner in the original crime was Nicholas Todd.  Together they stole the clothes from a clothesline.', 656),
	(657, 'SPENCER', 'Daniel', NULL, 24, 'M', 'No trade recorded', 6, NULL, 657),
	(658, 'SPENCER/SPENCE', 'Mary', 'Spence', 19, 'F', 'No trade recorded', 6, 'The context of the crime indicates it was a pickpocket crime.', 658),
	(659, 'SPRINGHAM', 'Mary', NULL, 21, 'F', 'No trade recorded', 6, 'Partners in the original crime were Charles Allan and Peter Sampson.', 659),
	(660, 'SPRINGMORE', 'Charlotte', NULL, 30, 'F', 'seaman', 6, 'Partner in the original crime was John Pontie.Night watch member.', 660),
	(661, 'SQUIRES/SQUIRE', 'James', 'Squire', 33, 'M', 'jockey', 6, 'Actual value of stolen goods was 2600 or 52600 shillings.Sentenced to receive 25 lashes for improper words on 22 May 1788.Night watch member by 1794.', 661),
	(662, 'STANLEY', 'William', NULL, 47, 'M', 'No trade recorded', 6, NULL, 662),
	(663, 'STANTON/EBDEN/IBDEN/ABDIN/ELDON', 'Thomas', 'Ibden Abdin Eldon', 27, 'M', 'No trade recorded', 6, 'In August 1788 received 50 lashes for absconding for a day, and another 100 for faking a specimen of gold.  Executed for robbing huts.', 663),
	(664, 'STEPHENS/MORRIS', 'John', NULL, 22, 'M', 'No trade recorded', 6, 'May have been Jewish.In May 1791 received 32 lashes for attempted theft of flour.', 664),
	(665, 'STEWART/STUART', 'James', 'Stuart', 30, 'M', 'No trade recorded', 6, 'Received 24 lashes for contempuously throwing away fish.', 665),
	(666, 'STEWART/STUART', 'Margaret', 'Stuart', 25, 'F', 'No trade recorded', 6, NULL, 666),
	(667, 'STOGDELL/STOCKDALE', 'John', NULL, 25, 'M', 'dustman', 6, 'Partner in the original crime was James Smith.', 667),
	(668, 'STOKOE', 'John', NULL, 34, 'M', 'seaman', 6, 'Guilty of return from transport following the Swift mutiny.He received 50 lashes for repeated disobedience and neglect of duty on 3 October 1791.', 668),
	(669, 'STONE', 'Charles', NULL, 20, 'M', 'No trade recorded', 6, 'On 14 November 1791 he received 200 lashes for disobedience and mutinous behaviour.', 669),
	(670, 'STONE', 'Martin', NULL, 23, 'M', 'law clerk', 6, 'On 7 February 1789 he received 25 lashes for drunkenness and falshood.Night watch member by 1800.', 670),
	(671, 'STOW/STOWE', 'James', 'Stowe', 25, 'M', 'seaman', 6, 'He had picked his victims pocket.', 671),
	(672, 'STRETCH', 'Thomas', NULL, 33, 'M', 'No trade recorded', 6, NULL, 672),
	(673, 'STRONG', 'James', NULL, 34, 'M', 'No trade recorded', 6, 'Partner in the original crime was Richard McDale.On 29 December 1790 he was ordered to work in a gang  because of insolence.', 673),
	(674, 'SUMMERS/SUMMER', 'John', 'Summer', 34, 'M', 'No trade recorded', 6, 'Described as a black.', 674),
	(675, 'TAYLOR', 'Henry', NULL, 33, 'M', 'No trade recorded', 6, NULL, 675),
	(676, 'TAYLOR', 'Joshua', NULL, 19, 'M', 'No trade recorded', 6, 'On 6 July 1789 he was ordered to receive100 lashes for the theft of three quarts of wheat.Night watch member by the end of December 1791.', 676),
	(677, 'TAYLOR', 'Sarah', NULL, 32, 'F', 'No trade recorded', 6, 'Partner in the original crime was William Butler.', 677),
	(678, 'TEAGUE', 'Cornelius', NULL, 41, 'M', 'No trade recorded', 6, 'On 24 October 1789 sentenced to receive 50 lashes for playing cards at 2am.Night watch member by 1800.', 678),
	(679, 'TENHEL/TENCHALL/TENNYHILL/TENIHILE/TENNINGHILL/HILL/DANIEL', 'John', 'Tenchall Tennyhill Tenihile Hill Daniel', 19, 'M', 'seaman', 6, NULL, 679),
	(680, 'TENNANT', 'Thomas Hilton', 'DIVINE, Phillip', 27, 'M', 'No trade recorded', 6, 'Actual value of stolen goods was 265 shillings.', 680),
	(681, 'THACKERY', 'Elizabeth', NULL, 20, 'F', 'wax chandler', 6, 'Guilty of return from transport following the Mercury mutiny. Founder of the night watch. Described as Jewish because he swore on the Old Testament when giving evidence.', 681),
	(682, 'THODIE/IVES/THOUDY/THODY', 'James', 'Thoudy Thody', 28, 'M', 'No trade recorded', 6, NULL, 682),
	(683, 'THOMAS', 'Elizabeth', NULL, 20, 'F', 'porter, ex-sergeant', 6, 'Married Flora Larah.May have been Jewish.', 683),
	(684, 'THOMAS', 'James', NULL, 23, 'M', 'No trade recorded', 6, 'Had been observed picking pockets before he was caught.Night watch member.', 684),
	(685, 'THOMAS', 'James/Richard', NULL, 22, 'M', 'No trade recorded', 6, 'His accuser felt his pocket being picked.', 685),
	(686, 'THOMAS', 'John', NULL, 23, 'M', 'No trade recorded', 6, NULL, 686),
	(687, 'THOMPSON', 'James', NULL, 40, 'M', 'silversmith', 6, 'Committed suicide.', 687),
	(688, 'THOMPSON', 'William', NULL, 31, 'M', 'No trade recorded', 6, 'Yet another young pickpocket.Sentenced to receive 150 lashes, and to wear a leg iron  for a year when as part of a group he attacked Aborigines in March 1789.', 688),
	(689, 'THOMPSON', 'William/Jeremy', NULL, 33, 'M', 'No trade recorded', 6, 'Received 36 lashes in June 1789 for being from absent from his task, and another 24 on 9 October 1789 for loitering at work, and 100 lashes were ordered in May 1790 for disobedience.', 689),
	(690, 'THORNTON', 'Ann', NULL, 32, 'F', 'No trade recorded', 6, 'Received 50 lashes on 18 November 1790 for theft of potatoes.Described in 1813 as a labourer and a seaman, aged 50, five feet tall, fair and ruddy complexion, brown hair going grey, blue eyes, stout and healthy.', 690),
	(691, 'TILL/TILLEY', 'Thomas', 'Tilley', 23, 'M', 'No trade recorded', 6, 'Actual value of stolen goods was 134 shillings.', 691),
	(692, 'TILLEY', 'Thomas', NULL, 41, 'M', 'No trade recorded', 6, 'Contractor called him Husband. Obvious problem of confusion with the other William Hubbard in NSW records - they are differentiated by their literacy.Probably charged with theft of meat and wine on 30 April 1788, and ordered to repay it.', 692),
	(693, 'TIMMINS/TUNMINS', 'Thomas', NULL, 19, 'M', 'dustman', 6, NULL, 693),
	(694, 'TODD', 'Nicholas', NULL, -1, 'M', 'No trade recorded', 6, 'Another young pickpocket.Sentenced to 100 lashes (50 now and 50 when he can) for stealing 2 pounds of flour, and absconding in November 1789.He escaped again in June 1790, for which he received 300 lashes. On 3 September 1792 he was caught stealing a', 694),
	(695, 'TRACE', 'John', NULL, 33, 'M', 'No trade recorded', 6, 'Probably Jewish.', 695),
	(696, 'TRIPPETT', 'Susannah', NULL, 21, 'F', 'No trade recorded', 6, 'Partner in the original crime was Samuel Selshire.Probably Jewish.', 696),
	(697, 'TROTTER', 'Joseph', NULL, 25, 'M', 'No trade recorded', 6, 'On 18 October 1788 sentenced to receive 50 lashes for disobedience.', 697),
	(698, 'TUCKER', 'Moses', NULL, 35, 'M', 'seaman', 6, 'Guilty of return from transport following the Swift mutiny of which he was a ringleader.A man of education and ability according to Major Ross. Night watch member in Sydney in 1789. On Norfolk Island on 31 July 1791 given 50 lashes for contempt of Ross', 698),
	(699, 'TURNER', 'John', NULL, 28, 'M', 'sawyer', 6, 'Guilty of return from transport following the Swift mutiny. Described on his headstone as a loving husband, and affectionate father and a sincere Friend.', 699),
	(700, 'TURNER', 'John', NULL, 47, 'M', 'brickmaker', 6, NULL, 700),
	(701, 'TURNER', 'Ralph', NULL, 38, 'M', 'tailor', 6, 'On 10 June 1790 sentenced to receive 300 lashes for absconding.', 701),
	(702, 'TURNER', 'Thomas', NULL, 47, 'M', 'No trade recorded', 6, 'Described as the first Jew to be buried in Australia.', 702),
	(703, 'TURNER/WILKES', 'Mary', NULL, 21, 'F', 'watchmaker', 6, NULL, 703),
	(704, 'TUSO/TUZO/TOOZO', 'Joseph', 'Toozo', 17, 'M', 'carpenter', 6, 'Became increasingly addicted to alcohol before his death by suicide.', 704),
	(705, 'TWINEHAM/TWYMAN/TWYNEHAM', 'William', 'Twyneham', 24, 'M', 'No trade recorded', 6, NULL, 705),
	(706, 'TWYFIELD/DAWLEY', 'Ann', NULL, 29, 'F', 'No trade recorded', 6, NULL, 706),
	(707, 'TWYFIELD/PHYFIELD/FYFIELD', 'Roger', NULL, 27, 'M', 'No trade recorded', 6, 'Described as an American sailor.', 707),
	(708, 'TYRRELL', 'William', NULL, 28, 'M', 'No trade recorded', 6, NULL, 708),
	(709, 'UNDERWOOD', 'James', NULL, 44, 'M', 'plasterer', 6, NULL, 709),
	(710, 'USHER', 'John', NULL, 18, 'M', 'No trade recorded', 6, 'Actual value of stolen goods was 54 shillings.Ordered to receive 100 lashes in December 1789 for allowing captured Aborigine Bennelong to escape.', 710),
	(711, 'VARNDELL', 'Edward', NULL, 28, 'M', 'No trade recorded', 6, NULL, 711),
	(712, 'VICKERY', 'William', NULL, 25, 'M', 'plasterers assistant', 6, 'Partner in the original crime was Benjamin Wright.Sentenced to receive 25 lashes on 26 January 1789 for being out of quarters after hours.', 712),
	(713, 'VINCENT', 'Henry', NULL, 27, 'M', 'bricklayers labourer', 6, 'Partner in the original crime was Peter Bond.', 713),
	(714, 'WADE/COCKRAN/COCLIN/CACKLANE', 'Mary', 'Coclin', 32, 'F', 'blacksmith or soldier', 6, NULL, 714),
	(715, 'WAGER', 'Benjamin', NULL, 21, 'M', 'No trade recorded', 6, 'Described as a black  from North America he was 5ft 7inches tall, black complexion with white balding hair according to a description in 1825.', 715),
	(716, 'WAINWRIGHT/ECCLES/MAINWRIGHT', 'Ellen/Esther', 'Mainwright', 18, 'F', 'No trade recorded', 6, 'Night watch member.', 716),
	(717, 'WALBOURNE/WALBURN/WALDBOURN', 'James', 'Waldbourn', 22, 'M', 'servant', 6, NULL, 717),
	(718, 'WALKER', 'John', NULL, 22, 'M', 'shoemaker', 6, NULL, 718),
	(719, 'WALL', 'William', 'HARDING', 23, 'M', 'No trade recorded', 6, 'On 3 December 1789 sentenced to receive 100 lashes for disobeying orders and neglecting his work.', 719),
	(720, 'WALSH', 'William', NULL, 34, 'M', 'No trade recorded', 6, 'Partners in the original crime were George Bannister and George Robinson. Probably died in the bush after his escape.', 720),
	(721, 'WARD', 'Ann', NULL, 20, 'F', 'No trade recorded', 6, 'On 16 January 1789 sentenced to receive 100 lashes for a three day absence from camp.', 721),
	(722, 'WARD', 'John', NULL, 17, 'M', 'No trade recorded', 6, 'Guilty of return from transport following the Swift mutiny. Night watch member. Known in NSW as Rice - the left handed flogger.', 722),
	(723, 'WARE/WEAR', 'Charlotte', NULL, 25, 'F', 'No trade recorded', 6, 'Guilty of return from transport following the Mercury mutiny (detailed court transcript extracts reprinted in Cobley).One of the founders of the Night watch.', 723),
	(724, 'WATERHOUSE', 'William', NULL, 34, 'M', 'No trade recorded', 6, 'Partner in the original crime was Peter Woodcock. Actual value of stolen goods was 91 shillings.Sentenced to receive 150 lashes in March 1789 for attacking Aborigines.', 724),
	(725, 'WATKINS', 'Mary', NULL, 21, 'F', 'No trade recorded', 6, 'His theft was discovered when his house was searched as part of the hunt for Mercury escapees.', 725),
	(726, 'WATSON', 'John', NULL, 33, 'M', 'shoemaker', 6, 'Partner in the original crime was John Ayres.', 726),
	(727, 'WATSON', 'Thomas', NULL, 18, 'M', 'No trade recorded', 6, NULL, 727),
	(728, 'WELCH', 'John', NULL, 57, 'M', 'No trade recorded', 6, NULL, 728),
	(729, 'WELCH', 'John', NULL, 24, 'M', 'No trade recorded', 6, 'Partner in the original crime was Jonathon Matthew Cox.', 729),
	(730, 'WELCH', 'John Coen', NULL, 27, 'M', 'No trade recorded', 6, 'Actual value of stolen goods was 120 shillings.', 730),
	(731, 'WELSH/WELCH', 'James', 'Welch', 28, 'M', 'ivory turner', 6, NULL, 731),
	(732, 'WEST', 'George', NULL, 19, 'M', 'No trade recorded', 6, 'Actual value of stolen goods was 77 shillings.', 732),
	(733, 'WESTLAKE', 'Edward', NULL, -1, 'M', 'seaman', 6, NULL, 733),
	(734, 'WESTWOOD', 'John', NULL, 35, 'M', 'No trade recorded', 6, 'Partners in the original crime were George Bannister and John Nurse.', 734),
	(735, 'WHEELER', 'Samuel', NULL, 28, 'M', 'No trade recorded', 6, 'Received 50 lashes on 18 August 1791 for Riotous behaviour after hours.', 735),
	(736, 'WHITAKER', 'George', NULL, 27, 'M', 'No trade recorded', 6, 'Received 300 lashes on 21 January 1788 for stealing beans from the governors farm.', 736),
	(737, 'WHITE/WIGHT', 'James', 'Wight', -1, 'M', 'No trade recorded', 6, 'Partner in the original crime was Samuel Woodham. Guilty of return from transport having made his way back after being landed in Africa with no food in 1783.On 10 January 1789 received half of the 700 lashes ordered for stabbing the woman with whom he w', 737),
	(738, 'WHITING/WHITEING', 'William', 'Whiteing', 25, 'M', 'seaman', 6, 'Sentenced to 300 lashes on 12 January 1789 for violently beating Mary Love and Elizabeth Lock.', 738),
	(739, 'WHITTON/WHITTEN', 'Edward', 'Whitten', 36, 'M', 'No trade recorded', 6, 'Partners in the original crime were Charles Allen and Joseph Collins.', 739),
	(740, 'WICKHAM', 'Mary', NULL, 35, 'F', 'No trade recorded', 6, 'Partner in the original crime was John Jacobs.', 740),
	(741, 'WIDDICOMBE/WEDDICOMB', 'Richard', 'Weddicomb', 23, 'M', 'No trade recorded', 6, 'The watch was taken with a considerable degree of force from the victims pocket.', 741),
	(742, 'WILCOCKS/WILCOX', 'Samuel', NULL, 25, 'M', 'No trade recorded', 6, NULL, 742),
	(743, 'WILDING/WARREN', 'John', NULL, 37, 'M', 'dustman', 6, 'Partner in the original crime was Ferdinand Dowland.On 24 April 1789 ordered to receive 25 lashes for neglect of work.', 743),
	(744, 'WILLCOCKS/WILCOCKS', 'Richard', 'Wilcocks', 25, 'M', 'No trade recorded', 6, 'Difficult to distinguish from others of same name in later years.', 744),
	(745, 'WILLIAMS', 'Charles', 'MAGEE, Christopher', 25, 'M', 'No trade recorded', 6, NULL, 745),
	(746, 'WILLIAMS', 'Daniel', NULL, 48, 'M', 'No trade recorded', 6, 'Actual value of stolen goods was 24 shillings.', 746),
	(747, 'WILLIAMS', 'Frances', NULL, -1, 'F', 'No trade recorded', 6, NULL, 747),
	(748, 'WILLIAMS', 'James', 'BLACK JEMMY', 20, 'M', 'No trade recorded', 6, NULL, 748),
	(749, 'WILLIAMS', 'John', NULL, 43, 'M', 'No trade recorded', 6, 'Sentenced to 500 lashes on 1 November 1788 for theft of soap, and on 19 June 1790 ordered to receive 100 lashes for insolence.', 749),
	(750, 'WILLIAMS', 'John', 'BLACK JACK', 18, 'M', 'haymaker', 6, NULL, 750),
	(751, 'WILLIAMS', 'Mary', NULL, 39, 'F', 'No trade recorded', 6, 'Received 50 lashes for stealing corn from a garden in January 1789.', 751),
	(752, 'WILLIAMS', 'Robert', NULL, 24, 'M', 'chimney sweep', 6, 'Partner in the original crime was James Baldwin.', 752),
	(753, 'WILLIAMS/CREAMER', 'Peter', 'FLAGGETT', 23, 'M', 'No trade recorded', 6, 'Partner in the original crime was George Clayton.', 753),
	(754, 'WILLIAMS/FLOYD', 'John', NULL, 32, 'M', 'No trade recorded', 6, 'Aged 14 at the date of his trial.Family tradition describes him as possibly having been black, but this has not been confirmed.Sentenced to 500 lashes on 11 June 1790 for neglect of duty, and on 3 July 1790 sentenced to 300 lashes for leaving work. On 2', 754),
	(755, 'WILSON', 'Charles', NULL, 26, 'M', 'No trade recorded', 6, NULL, 755),
	(756, 'WILSON', 'John', NULL, -1, 'M', 'No trade recorded', 6, 'Night watch member.Joined NSW Corps in 1800.  Described in September 1808 as aged 41 years nine months, with thin face, fair complexion, light brown hair, hazel eyes, and 5ft 8ins tall.  Transferred to 73rd regiment in 1815.', 756),
	(757, 'WILSON', 'Mary', NULL, 47, 'F', 'carpenter', 6, NULL, 757),
	(758, 'WILSON', 'Peter', NULL, 20, 'M', 'waiter', 6, NULL, 758),
	(759, 'WILTON/WHILTON/WILSON', 'William', 'Whilton Wilson', 43, 'M', 'servant', 6, 'Actual value of stolen goods was 49 shillings.Probably the John Welch reported as speared by Aborigines on 16 March 1791.', 759),
	(760, 'WISEHAMMER', 'John', NULL, 18, 'M', 'No trade recorded', 6, 'Guilty of return from transport following the Swift mutiny. Night watch member.', 760),
	(761, 'WOOD', 'George', NULL, 23, 'M', 'servant', 6, 'Actual value of stolen goods was 160 shillings. Evidence of past mental illness was given at his trial.', 761),
	(762, 'WOOD', 'Mark', NULL, 24, 'M', 'No trade recorded', 6, NULL, 762),
	(763, 'WOOD/BRAND', 'Lucy', NULL, 33, 'F', 'No trade recorded', 6, 'As he was from the West Indies he could probably be described as being black.Ordered 500 lashes on 29 April 1789 for stealing tobacco from a marine, and on 12 April 1790 another 500 for stealing a quantity of biscuit.  After an attempt to stow away he re', 763),
	(764, 'WOODCOCK', 'Francis', NULL, 48, 'M', 'No trade recorded', 6, 'Guilty of return from transport following the Swift mutiny. Died through want of nourishment because he sold his rations to save for a return ticket.', 764),
	(765, 'WOODCOCK', 'Peter', NULL, 24, 'M', 'No trade recorded', 6, 'Partner in the original crime was James Peaulet. Actual value of stolen goods was 91 shillings. Night watch member.', 765),
	(766, 'WOODHAM', 'Samuel', NULL, 20, 'M', 'No trade recorded', 6, 'Partner in the original crime was John Ruglass. Guilty of return from transport having made his way back after being landed in Africa with no food.', 766),
	(767, 'WOOLCOTT/WOOLCOT', 'John', 'Woolcot', 47, 'M', 'No trade recorded', 6, 'Partner in the original crime was Robert Morgan.  They were seen following a man and taking his handkerchief.', 767),
	(768, 'WORSDELL/WORDALE', 'William', 'Wordale', 58, 'M', 'No trade recorded', 6, NULL, 768),
	(769, 'WRIGHT', 'Ann', NULL, 33, 'F', 'No trade recorded', 6, NULL, 769),
	(770, 'WRIGHT', 'Benjamin', NULL, 18, 'M', 'seaman', 6, 'Absconded soon after landing.', 770),
	(771, 'WRIGHT', 'James', NULL, 25, 'M', 'No trade recorded', 6, 'Report from Dunkirk hulk was  tolerably decent and orderly.', 771),
	(772, 'WRIGHT', 'Joseph', NULL, 22, 'M', 'gardener', 6, 'Report from Dunkirk hulk was tolerably decent and orderly.', 772),
	(773, 'WRIGHT', 'Thomas', NULL, 22, 'M', 'No trade recorded', 6, 'Died in Portsmouth before departure.', 773),
	(774, 'WRIGHT', 'William', NULL, -1, 'M', 'No trade recorded', 6, 'May have in fact been 27 when transported.', 774),
	(775, 'YARDSLEY/YASLEY', 'Thomas', 'Yasley', 28, 'M', 'No trade recorded', 6, 'Partners in the original crime were Joseph Morley, Francis Garland and Henry Roach.', 775),
	(776, 'YEATS/YATES', 'Nancy', NULL, 19, 'F', 'No trade recorded', 6, NULL, 776),
	(777, 'YOUNG', 'John', NULL, 25, 'M', 'No trade recorded', 6, NULL, 777),
	(778, 'YOUNG', 'Simon', NULL, 25, 'M', 'stonecutter', 6, 'Died of intoxication.', 778),
	(779, 'YOUNGSON/YOUNGSTER', 'Elizabeth', 'Youngster', 15, 'F', 'hawker and peddlar', 6, 'Sentenced to 800 lashes in July 1791 for receiving stolen goods.  Stabbed by his wife in June 1795, but he did not press charges.', 779),
	(780, 'YOUNGSON', 'George', NULL, 20, 'M', 'No trade recorded', 6, 'Probably the John Turner who received 150 lashes on 7 March 1789 for attacking Aborigines.', 780);

-- Dumping structure for table first_fleet_1788.ff_ships
CREATE TABLE IF NOT EXISTS `ff_ships` (
  `FF_Ship_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FF_Ship_Name` varchar(20) NOT NULL DEFAULT '0',
  `FF_Ship_Captain` varchar(30) NOT NULL DEFAULT '0',
  `FF_Ship_Type` set('Barque','Transport','Brig') NOT NULL,
  PRIMARY KEY (`FF_Ship_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table first_fleet_1788.ff_ships: ~6 rows (approximately)
REPLACE INTO `ff_ships` (`FF_Ship_ID`, `FF_Ship_Name`, `FF_Ship_Captain`, `FF_Ship_Type`) VALUES
	(1, 'Alexander', 'Duncan Sinclair ', 'Barque'),
	(2, 'Charlotte', 't 	Thomas Gilbert', 'Transport'),
	(3, 'Friendship', ' 	Francis Walton', 'Brig'),
	(4, 'Lady Penrhyn', 'William Cropton Server ', 'Transport'),
	(5, 'Prince of Wales', 'John Mason', 'Barque'),
	(6, 'Scarborough', 'John Marshall', 'Transport');

-- Dumping structure for table first_fleet_1788.ff_trial
CREATE TABLE IF NOT EXISTS `ff_trial` (
  `FF_Trial_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FF_Trial_Location` int(11) NOT NULL,
  `FF_Trial_Date` int(11) NOT NULL,
  `FF_Trial_Crime` varchar(67) NOT NULL,
  `FF_Trial_Crime_Value` decimal(5,1) NOT NULL,
  `FF_Trial_Sentence` varchar(14) NOT NULL,
  `FF_Trial_Sentence_Length` int(11) NOT NULL,
  PRIMARY KEY (`FF_Trial_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=latin1;

-- Dumping data for table first_fleet_1788.ff_trial: ~780 rows (approximately)
REPLACE INTO `ff_trial` (`FF_Trial_ID`, `FF_Trial_Location`, `FF_Trial_Date`, `FF_Trial_Crime`, `FF_Trial_Crime_Value`, `FF_Trial_Sentence`, `FF_Trial_Sentence_Length`) VALUES
	(2, 23, 1777, 'stealing lead from roof', 28.0, 'transportation', 7),
	(3, 23, 1761, 'stealing sheep skins', -1.0, 'transportation', 7),
	(4, 23, 1768, 'stealing livestock (a donkey)', -1.0, 'transportation', 7),
	(5, 23, 1772, 'robbery', 133.0, 'transportation', 7),
	(6, 23, 1767, 'stealing livestock (poultry)', 1.0, 'death', 99),
	(7, 23, 1767, 'stealing livestock (poultry)', 1.0, 'transportation', 7),
	(8, 25, 1766, 'unknown', 0.0, 'transportation', 99),
	(9, 26, 1780, 'stealing clothing', -1.0, 'transportation', 7),
	(10, 26, 1753, 'burglary', -1.0, 'death', 99),
	(11, 26, 1753, 'stealing jewellery', -1.0, 'transportation', 7),
	(12, 26, 1749, 'Intent to rob', 0.0, 'transportation', 7),
	(13, 26, 1750, 'stealing shoe buckles', -1.0, 'transportation', 7),
	(14, 26, 1771, 'not recorded', -1.0, 'transportation', 7),
	(15, 26, 1742, 'stealing Irish linen', 120.0, 'transportation', 7),
	(16, 26, 1751, 'stealing boots and spurs', -1.0, 'transportation', 7),
	(17, 26, 1765, 'stealing clothing', -1.0, 'transportation', 7),
	(18, 26, 1780, 'stealing clothing', -1.0, 'transportation', 7),
	(19, 26, 1765, 'stealing livestock (18 turkeys)', 0.0, 'transportation', 7),
	(20, 28, 1773, 'stealing livestock (four horses)', 820.0, 'death', 99),
	(21, 28, 1772, 'stealing livestock (a horse)', 200.0, 'death', 7),
	(22, 28, 1775, 'stealing livestock (8 pigs)', 90.0, 'transportation', 7),
	(23, 28, 1772, 'stealing clothing', 35.0, 'transportation', 7),
	(24, 28, 1775, 'stealing', 17.0, 'transportation', 7),
	(25, 33, 1758, 'stealing bags of saltpetre', 65.0, 'transportation', 7),
	(26, 33, 1758, 'stealing bags of saltpetre', 65.0, 'transportation', 7),
	(27, 33, 1758, 'aiding a prison escape', 0.0, 'transportation', 7),
	(28, 33, 1758, 'stealing clothing', 32.0, 'transportation', 7),
	(29, 33, 1758, 'stealing household goods', 81.0, 'transportation', 7),
	(30, 34, 1766, 'stealing cash', 240.0, 'transportation', 7),
	(31, 36, 1776, 'stealing livestock (8 ducks, 9 hens)', 0.0, 'transportation', 7),
	(32, 37, 1771, 'stealing clothing and other goods', 61.0, 'transportation', 7),
	(33, 38, 1771, 'stealing bedding', 75.0, 'transportation', 7),
	(34, 39, 1759, 'stealing cash', 470.0, 'death', 7),
	(35, 39, 1757, 'stealing livestock (a horse)', 40.0, 'death', 7),
	(36, 39, 1757, 'burglary', 4.0, 'transportation', 7),
	(37, 39, 1758, 'assault and robbery', 5.0, 'death', 7),
	(38, 39, 1757, '“pettit” stealing of a purse and cash', 1.0, 'transportation', 7),
	(39, 39, 1759, 'stealing cash', 470.0, 'death', 7),
	(40, 39, 1759, 'stealing sacks of flour', 50.0, 'transportation', 7),
	(41, 39, 1759, 'stealing cash', 470.0, 'death', 7),
	(42, 39, 1756, 'stealing livestock (a horse - a mare)', 160.0, 'death', 7),
	(43, 39, 1758, 'stealing cash', 215.0, 'death', 7),
	(44, 40, 1758, 'stealing livestock (two horses - mares)', 200.0, 'death', 7),
	(45, 40, 1758, 'stealing spirits and livestock (a horse - a mare)', 200.0, 'death', 7),
	(46, 43, 1765, 'stealing a silver watch', 60.0, 'transportation', 7),
	(47, 43, 1759, 'burglary', 2.0, 'death', 14),
	(48, 43, 1757, 'stealing livestock (10 pigs 1 horse)', 140.0, 'death', 7),
	(49, 43, 1757, 'stealing livestock (a sheep)', 10.0, 'death', 7),
	(50, 43, 1765, 'receiving stolen goods', 2.0, 'transportation', 14),
	(51, 43, 1757, 'assault and highway robbery', 30.0, 'death', 7),
	(52, 43, 1773, 'stealing tobacco', -1.0, 'transportation', 7),
	(53, 43, 1759, 'stealing a silver watch', 40.0, 'death', 7),
	(54, 43, 1757, 'burglary', 142.0, 'death', 7),
	(55, 43, 1759, 'assault and stealing a metal watch', 163.0, 'transportation', 7),
	(56, 43, 1757, 'burglary', 61.0, 'death', 7),
	(57, 43, 1765, 'burglary', 149.0, 'transportation', 7),
	(58, 43, 1757, 'robbery', 32.0, 'transportation', 7),
	(59, 43, 1759, 'assault and highway robbery', 200.0, 'death', 14),
	(60, 43, 1775, 'stealing wool', -1.0, 'transportation', 7),
	(61, 43, 1775, 'stealing wool', -1.0, 'transportation', 7),
	(62, 43, 1764, 'stealing a knapsack', -1.0, 'transportation', 7),
	(63, 43, 1759, 'stealing livestock (a sheep)', 10.0, 'death', 7),
	(64, 44, 1763, 'burglary', 63.0, 'death', 7),
	(65, 44, 1763, 'burglary', 63.0, 'death', 7),
	(66, 45, 1780, 'stealing  bedding', 200.0, 'transportation', 7),
	(67, 45, 1780, 'stealing livestock (a horse)', 300.0, 'transportation', 7),
	(68, 45, 1781, 'stealing (two charges) a “scarlet cloth cardinal” and sack of wheat', 8.0, 'transportation', 7),
	(69, 45, 1779, 'stealing livestock (turkeys)', 25.0, 'transportation', 7),
	(70, 45, 1777, 'highway robbery', 12.0, 'death', 7),
	(71, 46, 1773, 'stealing', -1.0, 'transportation', 7),
	(72, 47, 1767, 'stealing brandy and clothing', -1.0, 'transportation', 7),
	(73, 47, 1762, 'stealing a silk handkerchief, scissors, snuffers', 1.0, 'transportation', 7),
	(74, 47, 1767, 'stealing brandy and clothing', -1.0, 'death', 7),
	(75, 48, 1760, 'stealing clothing', 39.0, 'transportation', 7),
	(76, 48, 1753, 'robbery', 12.0, 'transportation', 7),
	(77, 48, 1752, 'robbery', 13.0, 'transportation', 7),
	(78, 50, 1760, 'burglary', -1.0, 'death', 7),
	(79, 50, 1760, 'burglary', -1.0, 'death', 7),
	(80, 52, 1769, 'stealing a silver watch', -1.0, 'transportation', 7),
	(81, 52, 1777, 'stealing  silver watch', -1.0, 'death', 7),
	(82, 52, 1772, 'burglary', 800.0, 'death', 7),
	(83, 52, 1769, 'stealing a purse and cash', 42.0, 'death', 7),
	(84, 52, 1769, 'stealing livestock (a horse - a mare)', -1.0, 'transportation', 7),
	(85, 52, 1769, 'burglary', -1.0, 'transportation', 7),
	(86, 52, 1769, 'stealing clothing', -1.0, 'transportation', 7),
	(87, 53, 1773, 'assault', 0.0, 'transportation', 7),
	(88, 53, 1757, 'fraud (cheating a shopkeeper)', 0.0, 'transportation', 7),
	(89, 53, 1773, 'stealing a japanned hand-board', -1.0, 'transportation', 7),
	(90, 54, 1768, 'not recorded', -1.0, 'transportation', 7),
	(91, 55, 1764, 'stealing silk material', 43.0, 'transportation', 7),
	(92, 55, 1767, 'stealing', 9.0, 'transportation', 7),
	(93, 55, 1765, 'stealing clothing', 81.0, 'transportation', 7),
	(94, 55, 1764, 'assault with intent to rob', 0.0, 'transportation', 7),
	(95, 55, 1765, 'burglary', 120.0, 'death', 99),
	(96, 55, 1767, 'stealing a silver watch, steel chain, brass key', 40.0, 'transportation', 7),
	(97, 55, 1766, 'stealing clothing', 80.0, 'transportation', 7),
	(98, 55, 1766, 'robbery', 9.0, 'transportation', 7),
	(99, 55, 1765, 'stealing a lead pump', 40.0, 'transportation', 7),
	(100, 55, 1765, 'stealing a lead pump', 40.0, 'transportation', 7),
	(101, 55, 1767, 'stealing copper', 11.0, 'transportation', 7),
	(102, 55, 1769, 'stealing clothing', 9.0, 'transportation', 7),
	(103, 55, 1764, 'assault and highway robbery', 1.0, 'transportation', 7),
	(104, 55, 1768, 'stealing copper stills', 50.0, 'transportation', 7),
	(105, 55, 1765, 'stealing linen material', 39.0, 'transportation', 7),
	(106, 55, 1766, 'stealing', 30.0, 'transportation', 7),
	(107, 55, 1766, 'stealing livestock (a sheep)', 25.0, 'death', 7),
	(108, 55, 1765, 'assault and highway robbery (4 charges)', 12.0, 'death', 7),
	(109, 56, 1767, 'stealing a linen handkerchief and piece of ribbon', 0.0, 'transportation', 7),
	(110, 56, 1764, 'stealing a purse, pieces of gold and silver', -1.0, 'transportation', 7),
	(111, 56, 1767, 'stealing  a steel watch chain', -1.0, 'transportation', 7),
	(112, 56, 1764, 'stealing material', -1.0, 'transportation', 7),
	(113, 56, 1760, 'stealing assorted goods', -1.0, 'death', 7),
	(114, 56, 1760, 'stealing a handkerchief', 1.0, 'transportation', 7),
	(115, 56, 1767, 'stealing material', -1.0, 'transportation', 7),
	(116, 56, 1764, 'stealing cash', 0.0, 'transportation', 7),
	(117, 57, 1769, 'stealing wool', 0.0, 'transportation', 7),
	(118, 59, 1761, 'stealing livestock (a heifer)', 80.0, 'death', 7),
	(119, 61, 1776, 'stealing clothing', 3.0, 'transportation', 7),
	(120, 62, 1772, 'burglary', 40.0, 'death', 7),
	(121, 62, 1772, 'stealing', 40.0, 'death', 7),
	(122, 63, 1760, 'assault and highway robbery', 5.0, 'death', 7),
	(123, 63, 1759, 'burglary', 13.0, 'transportation', 7),
	(124, 63, 1759, 'stealing a trunk of clothing', 39.0, 'transportation', 7),
	(125, 63, 1760, 'stealing household goods', 10.0, 'transportation', 7),
	(126, 63, 1753, 'stealing a handkerchief', 2.0, 'transportation', 7),
	(127, 63, 1770, 'stealing a coat', 10.0, 'transportation', 7),
	(128, 63, 1759, 'stealing a trunk of clothing', -1.0, 'transportation', 7),
	(129, 63, 1761, 'stealing clothing', 22.0, 'transportation', 7),
	(130, 63, 1760, 'highway robbery', 2.0, 'transportation', 7),
	(131, 63, 1764, 'attempted highway robbery', 0.0, 'transportation', 7),
	(132, 63, 1750, 'stealing coach glasses', 39.0, 'transportation', 7),
	(133, 63, 1764, 'attempted highway robbery', 0.0, 'transportation', 7),
	(134, 63, 1759, 'burglary', 0.0, 'death', 7),
	(135, 63, 1764, 'assault and attempted robbery', 0.0, 'transportation', 7),
	(136, 63, 1761, 'assault and robbery', 335.0, 'transportation', 7),
	(137, 63, 1764, 'robbery', 2.0, 'transportation', 7),
	(138, 63, 1760, 'stealing watch pieces', 168.0, 'transportation', 7),
	(139, 63, 1762, 'assault and highway robbery', 100.0, 'death', 7),
	(140, 63, 1772, 'stealing clothing', 39.0, 'transportation', 7),
	(141, 63, 1764, 'stealing clothing', 39.0, 'transportation', 7),
	(142, 63, 1770, 'stealing clothing', 39.0, 'transportation', 7),
	(143, 63, 1759, 'stealing clothing', 7.0, 'transportation', 7),
	(144, 63, 1775, 'fraud (forgery)', 0.0, 'death', 99),
	(145, 63, 1754, 'assault and attempted highway robbery', 22.0, 'transportation', 7),
	(146, 63, 1769, 'assault and highway robbery', 8.0, 'death', 7),
	(147, 63, 1769, 'stealing clothing', 39.0, 'transportation', 7),
	(148, 63, 1753, 'stealing', 200.0, 'transportation', 7),
	(149, 63, 1759, 'stealing timber', 280.0, 'transportation', 7),
	(150, 63, 1751, 'stealing clothing', 60.0, 'transportation', 7),
	(151, 63, 1761, 'assault and highway robbery', 27.0, 'death', 7),
	(152, 63, 1754, 'receiving stolen goods', 0.0, 'transportation', 14),
	(153, 63, 1764, 'stealing clothing', 30.0, 'transportation', 7),
	(154, 63, 1764, 'stealing copper', 39.0, 'transportation', 7),
	(155, 63, 1754, 'stealing clothing', 39.0, 'transportation', 7),
	(156, 63, 1764, 'assault and robbery', -1.0, 'transportation', 7),
	(157, 63, 1754, 'stealing clothing', 51.0, 'transportation', 7),
	(158, 63, 1754, 'stealing clothing', 8.0, 'transportation', 7),
	(159, 64, 1770, 'assault and robbery', 30.0, 'transportation', 7),
	(160, 64, 1760, 'stealing clothing', -1.0, 'transportation', 7),
	(161, 64, 1760, 'stealing clothing', -1.0, 'transportation', 7),
	(162, 65, 1780, 'stealing livestock (poultry)', 12.0, 'transportation', 7),
	(163, 65, 1775, 'burglary and sacriledge', 500.0, 'death', 7),
	(164, 65, 1758, 'not recorded', -1.0, 'transportation', 7),
	(165, 65, 1775, 'stealing clothing', 7.0, 'transportation', 7),
	(166, 65, 1775, 'burglary, sacriledge', 500.0, 'death', 99),
	(167, 67, 1771, 'stealing a silver mug and spoons', 15.0, 'transportation', 7),
	(168, 68, 1766, 'stealing', -1.0, 'transportation', 7),
	(169, 69, 1759, 'stealing a silver watch', -1.0, 'transportation', 7),
	(170, 71, 1755, 'assault and highway robbery', 2.0, 'death', 14),
	(171, 71, 1755, 'burglary', 65.0, 'transportation', 7),
	(172, 71, 1775, 'stealing wheat', 1.0, 'transportation', 7),
	(173, 71, 1780, 'stealing hemp yarn', 1.0, 'transportation', 7),
	(174, 71, 1768, 'stealing livestock (turkeys)', -1.0, 'transportation', 7),
	(175, 71, 1775, 'stealing clothing', 1.0, 'transportation', 7),
	(176, 71, 1755, 'stealing livestock (3 pigs)', 57.0, 'transportation', 7),
	(177, 72, 1777, 'stealing livestock (a sheep)', 20.0, 'death', 7),
	(178, 72, 1777, 'burglary', 71.0, 'death', 7),
	(179, 72, 1777, 'assault and highway robbery', 0.0, 'death', 7),
	(180, 72, 1777, 'burglary', 174.0, 'death', 7),
	(181, 72, 1777, 'stealing livestock (a horse)', 100.0, 'death', 7),
	(182, 72, 1775, 'assault and highway robbery', 150.0, 'death', 7),
	(183, 72, 1777, 'stealing livestock (killing a sheep)', 20.0, 'death', 7),
	(184, 75, 1775, 'stealing cheese', -1.0, 'transportation', 7),
	(185, 75, 1775, 'stealing lace', -1.0, 'transportation', 7),
	(186, 75, 1775, 'intent to rob', 0.0, 'transportation', 7),
	(187, 75, 1767, 'not recorded', -1.0, 'transportation', 7),
	(188, 75, 1767, 'stealing lead from a building', -1.0, 'transportation', 7),
	(189, 75, 1767, 'stealing lead from roof', -1.0, 'transportation', 7),
	(190, 75, 1767, 'stealing livestock (a goose)', -1.0, 'transportation', 7),
	(191, 77, 1773, 'burglary', 120.0, 'transportation', 7),
	(192, 77, 1751, 'stealing a silver cup', 60.0, 'transportation', 7),
	(193, 77, 1770, 'stealing livestock (four hens)', 1.0, 'transportation', 7),
	(194, 77, 1751, 'robbery of cord and bag', 21.0, 'transportation', 7),
	(195, 77, 1769, 'stealing livestock (two geese)', 1.0, 'transportation', 7),
	(196, 77, 1751, 'stealing linen material', 30.0, 'death', 7),
	(197, 77, 1751, 'robbery of cloth and bag', 21.0, 'transportation', 7),
	(198, 77, 1751, 'burglary', 13.0, 'death', 7),
	(199, 81, 1761, 'stealing a parcel', 0.0, 'death', 7),
	(200, 81, 1761, 'assault and robbery', -1.0, 'death', 7),
	(201, 81, 1761, 'burglary', -1.0, 'death', 7),
	(202, 81, 1761, 'stealing a silver tankard', 7.0, 'transportation', 7),
	(203, 81, 1761, 'burglary', 0.0, 'death', 7),
	(204, 81, 1761, 'burglary', -1.0, 'death', 7),
	(205, 81, 1761, 'stealing livestock (a horse - a mare)', -1.0, 'death', 7),
	(206, 84, 1765, 'stealing material', 1.0, 'transportation', 7),
	(207, 86, 1781, 'stealing rope yarn', 160.0, 'death', 7),
	(208, 86, 1776, 'stealing clothing', 7.0, 'transportation', 7),
	(209, 86, 1781, 'stealing an iron bar', 6.0, 'transportation', 7),
	(210, 86, 1781, 'burglary', 19.0, 'transportation', 7),
	(211, 86, 1766, 'stealing clothing', 6.0, 'transportation', 7),
	(212, 86, 1781, 'stealing an iron bar', 6.0, 'transportation', 7),
	(213, 88, 1769, 'stealing clothing', 39.0, 'transportation', 7),
	(214, 26, 1777, 'burglary', -1.0, 'transportation', 7),
	(215, 26, 1778, 'not recorded', -1.0, 'transportation', 7),
	(216, 26, 1763, 'receiving stolen goods', 0.0, 'transportation', 14),
	(217, 38, 1767, 'stealing cash', 42.0, 'transportation', 7),
	(218, 38, 1775, 'burglary', 3.0, 'transportation', 7),
	(219, 38, 1767, 'stealing livestock (three cows)', 140.0, 'death', 7),
	(220, 38, 1767, 'stealing woollen blankets', 14.0, 'transportation', 7),
	(221, 38, 1767, 'stealing silver', 4.0, 'transportation', 7),
	(222, 38, 1767, 'stealing a gold watch and other goods', 140.0, 'transportation', 7),
	(223, 38, 1775, 'stealing cheese and other goods', 2.0, 'transportation', 7),
	(224, 38, 1767, 'stealing livestock (26 hens)', 26.0, 'transportation', 7),
	(225, 38, 1767, 'burglary', 14.0, 'death', 7),
	(226, 38, 1775, 'receiving stolen goods', 0.0, 'transportation', 14),
	(227, 38, 1767, 'stealing clothing', 59.0, 'transportation', 7),
	(228, 42, 1768, 'assault and highway robbery', 10.0, 'death', 7),
	(229, 42, 1763, 'stealing linen', 146.0, 'transportation', 7),
	(230, 42, 1775, 'unknown', -1.0, 'transportation', 7),
	(231, 42, 1763, 'stealing livestock (a sheep)', 10.0, 'death', 7),
	(232, 42, 1763, 'stealing material', 40.0, 'death', 7),
	(233, 42, 1772, 'robbery of clothing', 15.0, 'transportation', 7),
	(234, 42, 1760, 'stealing household goods', 164.0, 'death', 7),
	(235, 42, 1776, 'stealing tallow', -1.0, 'transportation', 7),
	(236, 42, 1763, 'highway robbery', 32.0, 'death', 7),
	(237, 42, 1763, 'stealing livestock (a sheep)', 20.0, 'death', 7),
	(238, 42, 1744, 'stealing silverware', 0.0, 'transportation', 7),
	(239, 42, 1768, 'highway robbery', 136.0, 'transportation', 7),
	(240, 42, 1763, 'burglary', 225.0, 'death', 7),
	(241, 42, 1771, 'burglary', 21.0, 'death', 7),
	(242, 42, 1771, 'stealing', 10.0, 'transportation', 7),
	(243, 42, 1771, 'stealing livestock (two lambs) and mutton', 14.0, 'death', 7),
	(244, 42, 1776, 'stealing household goods', -1.0, 'transportation', 7),
	(245, 42, 1763, 'burglary', 4.0, 'transportation', 7),
	(246, 42, 1763, 'stealing 11 barrels and other goods', 65.0, 'transportation', 7),
	(247, 42, 1772, 'not recorded', -1.0, 'transportation', 7),
	(248, 42, 1763, 'stealing material', 49.0, 'transportation', 7),
	(249, 42, 1763, 'stealing wooden barrels', 65.0, 'transportation', 7),
	(250, 42, 1756, 'stealing butter', -1.0, 'transportation', 7),
	(251, 42, 1771, 'assault and attempted highway robbery', 0.0, 'transportation', 7),
	(252, 42, 1764, 'highway robbery', 39.0, 'death', 7),
	(253, 42, 1768, 'assault and highway robbery', 36.0, 'death', 7),
	(254, 42, 1760, 'housebreaking', 189.0, 'death', 99),
	(255, 42, 1771, 'stealing silver teaspoons and other goods', 59.0, 'transportation', 7),
	(256, 42, 1763, 'burglary', 7.0, 'death', 7),
	(257, 42, 1763, 'stealing a winch and other goods', 86.0, 'transportation', 7),
	(258, 42, 1763, 'assault with intent to rob', 0.0, 'transportation', 7),
	(259, 42, 1766, 'unknown', 0.0, 'transportation', 7),
	(260, 42, 1768, 'stealing clothing', 81.0, 'transportation', 7),
	(261, 42, 1763, 'stealing iron bolts', 4.0, 'transportation', 7),
	(262, 42, 1763, 'stealing iron chains', 30.0, 'transportation', 7),
	(263, 42, 1763, 'stealing mutton', 10.0, 'transportation', 7),
	(264, 42, 1763, 'stealing mutton', 10.0, 'transportation', 7),
	(265, 42, 1772, 'robbery', 15.0, 'transportation', 7),
	(266, 42, 1763, 'stealing clothing and money', 80.0, 'transportation', 7),
	(267, 42, 1763, 'stealing material', 40.0, 'death', 7),
	(268, 42, 1763, 'highway robbery', 32.0, 'death', 7),
	(269, 42, 1760, 'burglary', 19.0, 'death', 7),
	(270, 42, 1760, 'stealing a silver watch', 25.0, 'transportation', 7),
	(271, 42, 1768, 'assault and highway robbery', 17.0, 'death', 7),
	(272, 42, 1763, 'highway robbery', 32.0, 'death', 7),
	(273, 42, 1768, 'assault and highway robbery', 36.0, 'death', 7),
	(274, 42, 1768, 'burglary', 570.0, 'death', 7),
	(275, 42, 1768, 'assault and highway robbery', 10.0, 'death', 7),
	(276, 42, 1750, 'stealing (shoplifting from several shops)', -1.0, 'transportation', 7),
	(277, 42, 1763, 'stealing mutton', 7.0, 'transportation', 7),
	(278, 42, 1763, 'stealing cash', 120.0, 'transportation', 7),
	(279, 42, 1763, 'stealing', 62.0, 'death', 7),
	(280, 42, 1763, 'stealing mutton', 10.0, 'transportation', 7),
	(281, 42, 1763, 'stealing a winch and other goods', 86.0, 'transportation', 7),
	(282, 42, 1763, 'assault with intent to rob', 0.0, 'transportation', 7),
	(283, 42, 1771, 'stealing steel', 19.0, 'transportation', 7),
	(284, 42, 1760, 'burglary', 427.0, 'death', 99),
	(285, 43, 1751, 'stealing material', -1.0, 'transportation', 7),
	(286, 48, 1771, 'not recorded', -1.0, 'transportation', 7),
	(287, 48, 1770, 'stealing livestock (four cocks five hens) and other goods', 0.0, 'transportation', 7),
	(288, 51, 1761, 'fraud (impersonation)', 0.0, 'death', 7),
	(289, 56, 1786, 'stealing material', -1.0, 'transportation', 7),
	(290, 63, 1762, 'stealing household goods', 73.0, 'transportation', 99),
	(291, 63, 1764, 'stealing a watch, seal and chain', 42.0, 'transportation', 7),
	(292, 63, 1764, 'stealing material and handkerchiefs', 50.0, 'death', 99),
	(293, 63, 1762, 'burglary', 84.0, 'death', 99),
	(294, 63, 1772, 'assault and highway robbery', 12.0, 'death', 14),
	(295, 63, 1764, 'stealing a cambric handkerchief', 1.0, 'transportation', 7),
	(296, 63, 1761, 'stealing linen and clothing', 30.0, 'transportation', 7),
	(297, 63, 1764, 'assault and highway robbery', 61.0, 'death', 7),
	(298, 63, 1753, 'stealing (details not clear because of confusion with names)', -1.0, 'transportation', 14),
	(299, 72, 1753, 'stealing material', 16.0, 'death', 7),
	(300, 72, 1772, 'burglary', 46.0, 'transportation', 7),
	(301, 72, 1772, 'burglary', 20.0, 'death', 7),
	(302, 72, 1769, 'burglary', 77.0, 'death', 7),
	(303, 72, 1772, 'receiving stolen goods', 0.0, 'transportation', 7),
	(304, 72, 1769, 'housebreaking', 20.0, 'death', 7),
	(305, 72, 1772, 'stealing an iron gate and fence', 70.0, 'transportation', 7),
	(306, 72, 1772, 'stealing livestock (five sheep)', 100.0, 'death', 14),
	(307, 72, 1773, 'receiving stolen goods', 0.0, 'transportation', 14),
	(308, 78, 1753, 'burglary', 11.0, 'transportation', 7),
	(309, 79, 1753, 'stealing clothing and household goods', 122.0, 'transportation', 7),
	(310, 79, 1763, 'burglary', 18.0, 'death', 7),
	(311, 85, 1759, 'burglary', 55.0, 'death', 7),
	(312, 86, 1776, 'stealing clothing and money', 13.0, 'transportation', 7),
	(313, 86, 1755, 'assault and highway robbery', 160.0, 'transportation', 7),
	(314, 86, 1747, 'assault and highway robbery', 60.0, 'death', 7),
	(315, 86, 1755, 'assault and highway robbery', 160.0, 'death', 7),
	(316, 86, 1777, 'assault and highway robbery', 133.0, 'death', 7),
	(317, 86, 1777, 'assault and highway robbery', 133.0, 'death', 7),
	(318, 86, 1777, 'assault and highway robbery', 92.0, 'death', 7),
	(319, 86, 1781, 'stealing', 320.0, 'transportation', 7),
	(320, 86, 1776, 'stealing clothing', 7.0, 'transportation', 7),
	(321, 26, 1751, 'stealing stockings', -1.0, 'transportation', 7),
	(322, 26, 1749, 'stealing a tobacco pouch', -1.0, 'transportation', 7),
	(323, 26, 1773, 'stealing sugar', -1.0, 'transportation', 7),
	(324, 26, 1751, 'burglary', 0.0, 'death', 14),
	(325, 26, 1753, 'stealing cash', 172.0, 'death', 7),
	(326, 26, 1751, 'housebreaking', 0.0, 'death', 14),
	(327, 26, 1773, 'stealing sugar', -1.0, 'transportation', 7),
	(328, 27, 1758, 'burglary', 91.0, 'death', 14),
	(329, 32, 1757, 'robbery', 1.0, 'transportation', 7),
	(330, 35, 1773, 'stealing clothing', 0.0, 'transportation', 5),
	(331, 35, 1773, 'stealing clothing', 6.0, 'transportation', 7),
	(332, 38, 1767, 'stealing a silver watch', 20.0, 'transportation', 7),
	(333, 42, 1764, 'highway robbery', 49.0, 'death', 7),
	(334, 42, 1764, 'highway robbery', 39.0, 'death', 7),
	(335, 42, 1764, 'assault and highway robbery', 41.0, 'death', 7),
	(336, 43, 1772, 'stealing a looking glass', -1.0, 'transportation', 7),
	(337, 43, 1759, 'stealing a purse and gold coins', 315.0, 'death', 14),
	(338, 43, 1759, 'burglary', 6.0, 'transportation', 7),
	(339, 43, 1769, 'stealing clothing', -1.0, 'transportation', 7),
	(340, 43, 1773, 'stealing snuff', 0.0, 'transportation', 7),
	(341, 53, 1764, 'receiving stolen goods', 0.0, 'transportation', 7),
	(342, 55, 1777, 'stealing livestock (two game cocks)', 0.0, 'transportation', 7),
	(343, 55, 1762, 'stealing clothing', 42.0, 'transportation', 7),
	(344, 55, 1763, 'stealing a cask of beer', 18.0, 'transportation', 7),
	(345, 56, 1777, 'stealing pieces of gold', 1.0, 'transportation', 7),
	(346, 56, 1759, 'stealing pieces of material', 1.0, 'transportation', 7),
	(347, 56, 1759, 'stealing three pieces of material', 1.0, 'transportation', 7),
	(348, 56, 1754, 'stealing material', -1.0, 'transportation', 7),
	(349, 56, 1777, 'stealing handkerchiefs', 1.0, 'transportation', 7),
	(350, 63, 1756, 'assault and robbery', 46.0, 'death', 7),
	(351, 63, 1744, 'stealing clothing', 87.0, 'transportation', 7),
	(352, 63, 1757, 'stealing silver', -1.0, 'transportation', 7),
	(353, 63, 1744, 'burglary', 39.0, 'transportation', 7),
	(354, 63, 1761, 'stealing handkerchiefs', 15.0, 'transportation', 7),
	(355, 63, 1761, 'receiving stolen goods', 0.0, 'transportation', 14),
	(356, 63, 1755, 'stealing material', 100.0, 'death', 7),
	(357, 63, 1764, 'stealing clothing', 249.0, 'transportation', 7),
	(358, 63, 1757, 'stealing linen', 18.0, 'transportation', 7),
	(359, 63, 1764, 'stealing cash', 199.0, 'transportation', 7),
	(360, 63, 1761, 'highway robbery', 33.0, 'transportation', 7),
	(361, 63, 1769, 'stealing clothing', 39.0, 'transportation', 7),
	(362, 63, 1764, 'stealing cash', 199.0, 'transportation', 7),
	(363, 63, 1769, 'stealing clothing', 9.0, 'transportation', 7),
	(364, 63, 1764, 'stealing clothing', 4.0, 'transportation', 7),
	(365, 63, 1766, 'stealing jewellery and cash', 845.0, 'death', 7),
	(366, 63, 1764, 'receiving stolen clothing', 41.0, 'transportation', 7),
	(367, 63, 1761, 'assault and highway robbery', 2.0, 'death', 7),
	(368, 63, 1761, 'stealing', 22.0, 'transportation', 7),
	(369, 63, 1761, 'stealing livestock (a horse)', 120.0, 'death', 7),
	(370, 63, 1762, 'forgery', 210.0, 'death', 99),
	(371, 63, 1769, 'stealing timber', 200.0, 'death', 7),
	(372, 63, 1757, 'stealing cash', 36.0, 'transportation', 7),
	(373, 63, 1764, 'stealing clothing', 5.0, 'transportation', 7),
	(374, 63, 1749, 'stealing gold coins', 126.0, 'death', 7),
	(375, 63, 1744, 'stealing household goods', 30.0, 'transportation', 7),
	(376, 63, 1764, 'stealing clothing', 20.0, 'death', 7),
	(377, 63, 1757, 'stealing clothing', 314.0, 'transportation', 7),
	(378, 63, 1761, 'stealing lead from roof', 5.0, 'transportation', 7),
	(379, 63, 1764, 'fraud (impersonation)', 0.0, 'death', 7),
	(380, 63, 1769, 'stealing clothing', 13.0, 'transportation', 7),
	(381, 63, 1756, 'stealing material', 0.0, 'death', 99),
	(382, 63, 1761, 'stealing tea', 39.0, 'transportation', 7),
	(383, 63, 1769, 'stealing iron bars and railing', 15.0, 'transportation', 7),
	(384, 63, 1769, 'stealing spices', 17.0, 'transportation', 7),
	(385, 63, 1752, 'stealing clothing', 130.0, 'death', 7),
	(386, 63, 1761, 'assault and robbery', 10.0, 'transportation', 7),
	(387, 63, 1744, 'stealing clothing', 39.0, 'transportation', 7),
	(388, 65, 1778, 'stealing livestock (two horses)', 240.0, 'death', 7),
	(389, 65, 1746, 'highway robbery', 31.0, 'death', 7),
	(390, 65, 1773, 'assault and highway robbery', 52.0, 'death', 7),
	(391, 65, 1746, 'stealing woolen blankets', 50.0, 'transportation', 7),
	(392, 66, 1745, '“petit” stealing', -1.0, 'transportation', 7),
	(393, 66, 1758, 'stealing livestock (a rooster)', 1.0, 'transportation', 7),
	(394, 66, 1753, 'stealing clothing', 1.0, 'transportation', 7),
	(395, 66, 1773, 'fraud (false pretences)', 0.0, 'transportation', 7),
	(396, 70, 1759, 'stealing livestock (cattle - 2 oxen, 2 heifers)', -1.0, 'death', 7),
	(397, 71, 1755, 'stealing tea and silk', 3.0, 'transportation', 7),
	(398, 72, 1772, 'assault and highway robbery', 20.0, 'death', 7),
	(399, 74, 1765, 'highway robbery', -1.0, 'transportation', 7),
	(400, 74, 1768, 'stealing sacks of malt', 112.0, 'transportation', 7),
	(401, 74, 1772, 'stealing livestock (a sheep)', 26.0, 'death', 7),
	(402, 74, 1770, 'stealing livestock (a horse)', 100.0, 'death', 7),
	(403, 74, 1772, 'stealing livestock (four cattle)', 440.0, 'death', 7),
	(404, 74, 1770, 'stealing a purse and cash', 96.0, 'transportation', 7),
	(405, 74, 1770, 'receiving stolen goods', 6.0, 'transportation', 14),
	(406, 74, 1759, 'burglary', 3.0, 'death', 7),
	(407, 74, 1770, 'burglary', 10.0, 'death', 7),
	(408, 74, 1768, 'stealing livestock (a sheep)', 25.0, 'death', 14),
	(409, 80, 1766, 'burglary', 450.0, 'death', 7),
	(410, 80, 1762, 'burglary', 53.0, 'death', 14),
	(411, 80, 1766, 'burglary', 8.0, 'death', 7),
	(412, 83, 1783, 'stealing clothing', 0.0, 'transportation', 7),
	(413, 86, 1747, 'assault and highway robbery', 48.0, 'death', 7),
	(414, 86, 1747, 'stealing iron grapplings', 10.0, 'transportation', 7),
	(415, 86, 1747, 'assault and highway robbery', 67.0, 'transportation', 7),
	(416, 86, 1777, 'assault and highway robbery', 133.0, 'death', 7),
	(417, 88, 1772, 'assault and highway robbery', 147.0, 'death', 7),
	(418, 28, 1777, 'burglary', 4882.0, 'death', 14),
	(419, 39, 1758, 'stealing 12 handkerchiefs', 20.0, 'transportation', 7),
	(420, 43, 1754, 'burglary', 11.0, 'death', 7),
	(421, 48, 1745, 'stealing', -1.0, 'transportation', 7),
	(422, 55, 1767, 'stealing livestock (a sheep)', 12.0, 'death', 7),
	(423, 55, 1767, 'receiving stolen goods', 0.0, 'transportation', 14),
	(424, 60, 1767, '“petit” stealing', 0.0, 'transportation', 7),
	(425, 63, 1761, 'stealing clothing', 44.0, 'transportation', 7),
	(426, 63, 1776, 'stealing clothing', 12.0, 'transportation', 7),
	(427, 63, 1751, 'highway robbery', 72.0, 'transportation', 7),
	(428, 63, 1751, 'assault and robbery', 313.0, 'transportation', 7),
	(429, 63, 1776, 'stealing linen', 20.0, 'transportation', 7),
	(430, 63, 1748, 'highway robbery', 42.0, 'transportation', 7),
	(431, 63, 1776, 'stealing cheese', 4.0, 'transportation', 7),
	(432, 63, 1764, 'stealing clothing', 39.0, 'transportation', 7),
	(433, 63, 1776, 'stealing linen', 20.0, 'transportation', 7),
	(434, 63, 1756, 'stealing two handkerchiefs and cash', 4.0, 'transportation', 7),
	(435, 63, 1751, 'stealing cash', 73.0, 'transportation', 7),
	(436, 63, 1748, 'stealing', 8.0, 'transportation', 7),
	(437, 63, 1751, 'stealing linen', 15.0, 'transportation', 7),
	(438, 63, 1756, 'stealing', 20.0, 'transportation', 7),
	(439, 63, 1764, 'receiving stolen goods', 13.0, 'transportation', 14),
	(440, 63, 1776, 'stealing clothing', 2.0, 'transportation', 7),
	(441, 63, 1762, 'stealing feathers, irons and coffee pot', 20.0, 'transportation', 7),
	(442, 63, 1762, 'stealing linen handkerchiefs', 3.0, 'transportation', 7),
	(443, 63, 1785, 'stealing cash', 0.0, 'transportation', 7),
	(444, 63, 1756, 'stealing clothing', 8.0, 'transportation', 7),
	(445, 63, 1762, 'stealing clothing jewellery and cash', 258.0, 'death', 7),
	(446, 63, 1756, 'stealing a clock, looking glass and locks', 52.0, 'transportation', 7),
	(447, 63, 1756, 'stealing cash', 126.0, 'transportation', 7),
	(448, 63, 1784, 'receiving stolen goods', 99.0, 'transportation', 7),
	(449, 63, 1761, 'stealing tea', 12.0, 'transportation', 7),
	(450, 63, 1762, 'stealing material', 114.0, 'transportation', 7),
	(451, 63, 1761, 'stealing clothing', 5.0, 'transportation', 7),
	(452, 63, 1775, 'stealing clothing', 56.0, 'transportation', 7),
	(453, 63, 1769, 'assault and robbery', 3.0, 'transportation', 7),
	(454, 63, 1761, 'stealing china', 8.0, 'transportation', 7),
	(455, 63, 1769, 'assault and highway robbery', 12.0, 'death', 7),
	(456, 63, 1776, 'stealing clothing', 27.0, 'transportation', 7),
	(457, 63, 1756, 'stealing clothing', 39.0, 'transportation', 7),
	(458, 63, 1762, 'perjury', 0.0, 'transportation', 7),
	(459, 63, 1756, 'assault and malicious damage', 10.0, 'transportation', 7),
	(460, 63, 1764, 'stealing clothing', 30.0, 'transportation', 7),
	(461, 63, 1748, 'stealing a silver watch and cash', 33.0, 'transportation', 7),
	(462, 63, 1776, 'stealing clothing', 7.0, 'transportation', 7),
	(463, 63, 1776, 'stealing muslin shawls', 50.0, 'transportation', 7),
	(464, 63, 1751, 'stealing a watch, gold seal and key', 85.0, 'transportation', 7),
	(465, 63, 1760, 'stealing a silver watch and cash', 87.0, 'transportation', 7),
	(466, 63, 1761, 'assault and highway robbery', 23.0, 'death', 14),
	(467, 63, 1750, 'stealing silver watch, key, seal and cash', 25.0, 'transportation', 7),
	(468, 63, 1748, 'stealing cash', 1.0, 'transportation', 7),
	(469, 63, 1762, 'stealing cash', 114.0, 'transportation', 7),
	(470, 63, 1753, 'stealing silver tableware and jewellery', 129.0, 'transportation', 7),
	(471, 63, 1760, 'stealing wine and spirits', 89.0, 'transportation', 7),
	(472, 63, 1754, 'assault and robbery', 4.0, 'death', 7),
	(473, 63, 1751, 'stealing handkerchiefs, coat and cash', 39.0, 'transportation', 7),
	(474, 63, 1776, 'stealing linen handkerchiefs', 10.0, 'transportation', 7),
	(475, 63, 1770, 'assault and robbery', 30.0, 'death', 99),
	(476, 63, 1769, 'assault and robbery', 3.0, 'transportation', 7),
	(477, 63, 1760, 'stealing 17 handkerchiefs', 23.0, 'transportation', 7),
	(478, 63, 1756, 'forgery', 0.0, 'death', 99),
	(479, 63, 1760, 'stealing clothing', 30.0, 'transportation', 7),
	(480, 63, 1751, 'stealing household goods', 29.0, 'transportation', 7),
	(481, 63, 1748, 'stealing cash', 194.0, 'transportation', 7),
	(482, 63, 1756, 'stealing clothing', 122.0, 'transportation', 7),
	(483, 63, 1762, 'assault and robbery of silver watch, steel chain, seal and key', 61.0, 'death', 99),
	(484, 63, 1769, 'stealing lengths of silk', 180.0, 'death', 7),
	(485, 63, 1775, 'stealing', 29.0, 'transportation', 7),
	(486, 63, 1761, 'stealing clothing', 32.0, 'transportation', 7),
	(487, 63, 1772, 'assault and highway robbery', 10.0, 'death', 99),
	(488, 63, 1776, 'stealing clothing', 2.0, 'transportation', 7),
	(489, 63, 1761, 'stealing', 4.0, 'transportation', 7),
	(490, 63, 1753, 'stealing clothing', 42.0, 'death', 7),
	(491, 63, 1748, 'stealing a pewter pint pot', 1.0, 'transportation', 7),
	(492, 63, 1776, 'stealing a silver watch and seal', 33.0, 'transportation', 7),
	(493, 63, 1750, 'stealing clothing', 21.0, 'death', 7),
	(494, 63, 1751, 'stealing cash and a snuff box', 51.0, 'transportation', 7),
	(495, 63, 1756, 'assault and malicious damage', 10.0, 'transportation', 7),
	(496, 63, 1761, 'stealing clothing', 8.0, 'transportation', 7),
	(497, 63, 1748, 'stealing metal watch, key and chain', 80.0, 'transportation', 7),
	(498, 63, 1760, 'stealing material from a bleaching ground', 200.0, 'death', 14),
	(499, 63, 1761, 'stealing clothing', 20.0, 'transportation', 7),
	(500, 63, 1762, 'stealing clothing', 20.0, 'transportation', 7),
	(501, 63, 1760, 'stealing jewellery and cash', 68.0, 'transportation', 7),
	(502, 63, 1753, 'stealing clothing', 68.0, 'transportation', 7),
	(503, 74, 1770, 'burglary', 61.0, 'death', 7),
	(504, 74, 1770, 'burglary', 24.0, 'death', 7),
	(505, 74, 1772, 'assault and robbery', 5.0, 'death', 7),
	(506, 74, 1772, 'assault and highway robbery', 38.0, 'death', 7),
	(507, 75, 1778, 'stealing clothing', -1.0, 'transportation', 7),
	(508, 75, 1770, 'stealing', -1.0, 'transportation', 7),
	(509, 75, 1777, 'stealing silk handkerchiefs', 0.0, 'transportation', 7),
	(510, 75, 1777, 'stealing silk handkerchiefs', -1.0, 'transportation', 7),
	(511, 87, 1777, 'stealing clothing', 31.0, 'transportation', 7),
	(512, 87, 1769, 'stealing a purse containing cash and promissory notes', 630.0, 'transportation', 7),
	(513, 87, 1759, 'stealing clothing (“pettit larceny”)', -1.0, 'transportation', 7),
	(514, 87, 1773, 'stealing silk handkerchiefs', 16.0, 'death', 7),
	(515, 87, 1777, 'robbery', 277.0, 'death', 7),
	(516, 87, 1774, 'stealing clothing', 0.0, 'transportation', 7),
	(517, 87, 1772, 'burglary', 20.0, 'death', 7),
	(518, 87, 1777, 'stealing clothing', 42.0, 'transportation', 7),
	(519, 88, 1769, 'burglary', 100.0, 'death', 7),
	(520, 29, 1763, 'stealing clothing', 36.0, 'transportation', 7),
	(521, 30, 1774, 'petty stealing', -1.0, 'transportation', 7),
	(522, 48, 1781, 'stealing clothing', 39.0, 'transportation', 7),
	(523, 48, 1778, 'stealing material', 20.0, 'death', 7),
	(524, 48, 1774, 'assault and robbery', 12.0, 'transportation', 7),
	(525, 48, 1774, 'assault and robbery', 12.0, 'transportation', 7),
	(526, 48, 1778, 'stealing material', 20.0, 'death', 14),
	(527, 48, 1774, 'assault and robbery (2 charges)', 12.0, 'transportation', 7),
	(528, 49, 1773, 'robbery', 1.0, 'transportation', 7),
	(529, 50, 1758, 'not recorded', -1.0, 'transportation', 7),
	(530, 50, 1783, 'burglary', 60.0, 'death', 7),
	(531, 50, 1783, 'burglary', 60.0, 'transportation', 7),
	(532, 52, 1769, 'stealing cash', 273.0, 'transportation', 7),
	(533, 52, 1775, 'stealing bills of exchange', -1.0, 'transportation', 7),
	(534, 54, 1773, 'not recorded', -1.0, 'transportation', 7),
	(535, 56, 1786, 'stealing material', -1.0, 'transportation', 7),
	(536, 58, 1772, 'burglary (two counts)', 0.0, 'death', 7),
	(537, 62, 1756, 'stealing material', 20.0, 'transportation', 7),
	(538, 63, 1748, 'stealing lace', 50.0, 'transportation', 7),
	(539, 63, 1765, 'stealing clothing', 10.0, 'transportation', 7),
	(540, 63, 1764, 'stealing bridles and strap irons', 15.0, 'transportation', 7),
	(541, 63, 1751, 'stealing silver spoons', 30.0, 'transportation', 7),
	(542, 63, 1767, 'not recorded', -1.0, 'transportation', 7),
	(543, 63, 1765, 'stealing clothing', 21.0, 'transportation', 7),
	(544, 63, 1765, 'stealing knives and forks', 6.0, 'transportation', 7),
	(545, 63, 1750, 'stealing household goods (2 counts)', 8.0, 'transportation', 7),
	(546, 63, 1765, 'stealing linen', 6.0, 'transportation', 7),
	(547, 63, 1764, 'stealing clothing', 30.0, 'transportation', 7),
	(548, 63, 1765, 'stealing teapot and cups', 10.0, 'transportation', 7),
	(549, 63, 1748, 'stealing a promissory note', 400.0, 'transportation', 7),
	(550, 63, 1765, 'stealing clothing', 8.0, 'transportation', 7),
	(551, 63, 1765, 'stealing material', 60.0, 'transportation', 7),
	(552, 63, 1751, 'assault and highway robbery', 20.0, 'death', 99),
	(553, 63, 1765, 'stealing clothing', 20.0, 'transportation', 7),
	(554, 63, 1765, 'stealing clothing', 5.0, 'transportation', 7),
	(555, 63, 1764, 'stealing clothing', 30.0, 'transportation', 7),
	(556, 63, 1769, 'not recorded', -1.0, 'transportation', 7),
	(557, 63, 1778, 'stealing bridles, straps and stirrups', 15.0, 'transportation', 7),
	(558, 63, 1765, 'stealing material', 60.0, 'transportation', 7),
	(559, 63, 1765, 'stealing a silver watch', 40.0, 'transportation', 7),
	(560, 63, 1764, 'stealing clothing', 0.0, 'transportation', 7),
	(561, 69, 1775, 'stealing clothing', -1.0, 'transportation', 7),
	(562, 69, 1786, 'stealing clothing', -1.0, 'transportation', 7),
	(563, 76, 1771, 'stealing clothing', -1.0, 'transportation', 7),
	(564, 81, 1765, 'stealing a mahogany tea chest and cash', 5.0, 'transportation', 7),
	(565, 83, 1761, 'stealing 3 bottles rum and port', -1.0, 'transportation', 7),
	(566, 83, 1752, 'unknown', -1.0, 'transportation', 7),
	(567, 83, 1765, 'stealing clothing', -1.0, 'transportation', 7),
	(568, 83, 1772, 'stealing clothing', -1.0, 'transportation', 7),
	(569, 83, 1783, 'stealing a silver watch', -1.0, 'transportation', 7),
	(570, 84, 1767, 'stealing clothing', -1.0, 'transportation', 5),
	(571, 24, 1757, 'stealing tobacco', 70.0, 'transportation', 7),
	(572, 24, 1764, 'assault and highway robbery', 20.0, 'death', 7),
	(573, 24, 1763, 'burglary', 63.0, 'death', 7),
	(574, 24, 1753, 'burglary', 118.0, 'death', 7),
	(575, 24, 1753, 'stealing iron grappling and other goods', 23.0, 'transportation', 7),
	(576, 24, 1757, 'stealing silver teaspoons', 5.0, 'transportation', 7),
	(577, 24, 1764, 'stealing yarn', 9.0, 'transportation', 7),
	(578, 24, 1746, 'burglary', 100.0, 'death', 7),
	(579, 24, 1753, 'stealing an iron grappling and other goods', 23.0, 'transportation', 7),
	(580, 24, 1753, 'burglary', 30.0, 'transportation', 7),
	(581, 24, 1757, 'burglary', 13.0, 'death', 7),
	(582, 26, 1758, 'stealing a watch and two gold cases', 200.0, 'death', 7),
	(583, 28, 1773, 'highway robbery', 46.0, 'death', 7),
	(584, 28, 1747, 'stealing assorted foods and barrels', 5.0, 'transportation', 7),
	(585, 28, 1747, 'robbery', 5.0, 'transportation', 7),
	(586, 31, 1759, 'stealing livestock (fowls and ducks)', -1.0, 'transportation', 7),
	(587, 31, 1760, 'stealing material', -1.0, 'transportation', 7),
	(588, 33, 1754, 'stealing clothing food and cash', 251.0, 'transportation', 7),
	(589, 33, 1754, 'stealing clothing linen and cash', 251.0, 'transportation', 7),
	(590, 42, 1753, 'burglary', 55.0, 'transportation', 7),
	(591, 42, 1771, 'assault and highway robbery', 7.0, 'death', 7),
	(592, 42, 1753, 'burglary', 55.0, 'transportation', 7),
	(593, 42, 1761, 'burglary', 36.0, 'death', 7),
	(594, 42, 1753, 'stealing clothing', 76.0, 'transportation', 7),
	(595, 42, 1775, 'not recorded', -1.0, 'transportation', 7),
	(596, 42, 1763, 'burglary', 115.0, 'death', 7),
	(597, 42, 1763, 'stealing', 35.0, 'transportation', 7),
	(598, 42, 1761, 'assault and highway robbery', 1.0, 'death', 7),
	(599, 44, 1765, 'robbery clothing, household goods', 31.0, 'transportation', 7),
	(600, 44, 1745, 'burglary', 22.0, 'death', 99),
	(601, 44, 1763, 'robbery', 9.0, 'transportation', 7),
	(602, 44, 1764, 'robbery', 280.0, 'transportation', 7),
	(603, 44, 1765, 'stealing household goods', 39.0, 'transportation', 7),
	(604, 48, 1778, 'stealing a sheet', 3.0, 'transportation', 7),
	(605, 48, 1756, 'robbery', 40.0, 'transportation', 7),
	(606, 48, 1757, 'not recorded', -1.0, 'transportation', 7),
	(607, 48, 1779, 'stealing a bedsheet', 0.0, 'transportation', 7),
	(608, 48, 1755, 'assault and highway robbery', 29.0, 'death', 7),
	(609, 48, 1755, 'assault and highway robbery', 29.0, 'death', 7),
	(610, 48, 1765, 'robbery', 7.0, 'transportation', 7),
	(611, 51, 1758, 'stealing livestock (five sheep)', 24.0, 'death', 7),
	(612, 51, 1763, 'stealing clothing', 67.0, 'transportation', 7),
	(613, 51, 1761, 'stealing cash', 122.0, 'transportation', 7),
	(614, 51, 1758, 'stealing livestock (a horse - a gelding)', 100.0, 'death', 7),
	(615, 51, 1763, 'stealing clothing', 67.0, 'transportation', 7),
	(616, 51, 1763, 'stealing cash', 39.0, 'transportation', 7),
	(617, 51, 1763, 'stealing livestock (a horse - geldings) two charges', 400.0, 'death', 7),
	(618, 51, 1758, 'stealing livestock (2 horses - mares)', 80.0, 'death', 7),
	(619, 51, 1758, 'stealing iron bolts', 7.0, 'transportation', 7),
	(620, 52, 1775, 'stealing a silver cup', -1.0, 'transportation', 7),
	(621, 55, 1766, 'highway robbery', 152.0, 'death', 7),
	(622, 55, 1774, 'burglary', 33.0, 'death', 7),
	(623, 55, 1764, 'stealing livestock (a horse)', 20.0, 'death', 7),
	(624, 55, 1765, 'assault and highway robbery', 188.0, 'death', 7),
	(625, 55, 1764, 'stealing clothing', 159.0, 'death', 7),
	(626, 55, 1773, 'not recorded', -1.0, 'transportation', 7),
	(627, 55, 1762, 'highway robbery', 40.0, 'death', 7),
	(628, 55, 1766, 'assault and highway robbery', 551.0, 'death', 99),
	(629, 55, 1772, 'burglary', 59.0, 'death', 7),
	(630, 55, 1763, 'highway robbery (3 charges)', 364.0, 'death', 7),
	(631, 63, 1753, 'stealing lead from roof', 30.0, 'transportation', 7),
	(632, 63, 1753, 'stealing lead from roof', 30.0, 'transportation', 7),
	(633, 63, 1770, 'stealing linen', 30.0, 'transportation', 7),
	(634, 63, 1753, 'assault and stealing linen', 20.0, 'transportation', 7),
	(635, 63, 1753, 'stealing coach window glass', 40.0, 'transportation', 7),
	(636, 63, 1759, 'stealing clothing', 18.0, 'transportation', 7),
	(637, 63, 1759, 'stealing musical instruments', 50.0, 'transportation', 7),
	(638, 63, 1772, 'burglary', 13.0, 'death', 7),
	(639, 63, 1770, 'stealing a coat', 1.0, 'transportation', 7),
	(640, 63, 1769, 'assault and highway robbery', 7.0, 'death', 7),
	(641, 63, 1772, 'stealing material and silk', 164.0, 'transportation', 7),
	(642, 63, 1753, 'assault and highway robbery', 0.0, 'transportation', 7),
	(643, 63, 1753, 'stealing clothing and chocolate', 39.0, 'transportation', 7),
	(644, 63, 1764, 'burglary', -1.0, 'death', 7),
	(645, 63, 1759, 'fraud (impersonation)', 0.0, 'death', 7),
	(646, 63, 1772, 'stealing a wallet and cash', 75.0, 'death', 99),
	(647, 63, 1750, 'stealing a handkerchief', 2.0, 'transportation', 7),
	(648, 63, 1764, 'stealing a snuff box', 0.5, 'transportation', 7),
	(649, 63, 1764, 'stealing casks and alcohol (porter)', 40.0, 'transportation', 7),
	(650, 63, 1757, 'assault and highway robbery', 4.0, 'death', 7),
	(651, 63, 1770, 'stealing lead from building', 20.0, 'transportation', 7),
	(652, 63, 1760, 'assault and robbery', 3.0, 'death', 7),
	(653, 63, 1770, 'stealing watch, chain, seals and handkerchief', 43.0, 'transportation', 7),
	(654, 63, 1770, 'stealing cucumbers, malicious damage', 15.0, 'transportation', 7),
	(655, 63, 1775, 'stealing watch, chain and seal', 49.0, 'transportation', 7),
	(656, 63, 1769, 'burglary', 22.0, 'death', 7),
	(657, 63, 1759, 'stealing clothing', 98.0, 'transportation', 7),
	(658, 63, 1770, 'stealing cash', 21.0, 'transportation', 7),
	(659, 63, 1770, 'stealing gold watch chain and seal', 281.0, 'transportation', 7),
	(660, 63, 1770, 'stealing linen', 30.0, 'transportation', 7),
	(661, 63, 1770, 'stealing lace', 100.0, 'death', 99),
	(662, 63, 1775, 'stealing clothing', 133.0, 'transportation', 7),
	(663, 63, 1770, 'stealing a silver mug', 20.0, 'transportation', 7),
	(664, 63, 1753, 'stealing clothing', 54.0, 'transportation', 7),
	(665, 63, 1752, 'stealing metal cooking utensils', 5.0, 'transportation', 7),
	(666, 63, 1764, 'stealing clothing', 46.0, 'transportation', 7),
	(667, 63, 1757, 'burglary', 42.0, 'death', 7),
	(668, 63, 1764, 'stealing livestock (a horse - mare)', 30.0, 'death', 7),
	(669, 63, 1749, 'stealing a glass window from a carriage', 22.0, 'death', 99),
	(670, 63, 1764, 'stealing hair powder', 14.0, 'transportation', 7),
	(671, 63, 1770, 'stealing books', 10.0, 'transportation', 7),
	(672, 63, 1760, 'stealing a handkerchief', 1.0, 'transportation', 7),
	(673, 63, 1773, 'assault and highway robbery', 20.0, 'death', 7),
	(674, 63, 1749, 'stealing gold coins', 126.0, 'death', 7),
	(675, 63, 1764, 'stealing clothing', 87.0, 'transportation', 7),
	(676, 63, 1759, 'stealing coal', 20.0, 'transportation', 7),
	(677, 63, 1764, 'stealing livestock (two cows)', 340.0, 'death', 7),
	(678, 63, 1770, 'stealing lead from building', 20.0, 'transportation', 7),
	(679, 63, 1759, 'stealing material', 100.0, 'transportation', 7),
	(680, 63, 1760, 'stealing material', 80.0, 'transportation', 7),
	(681, 63, 1764, 'stealing bedding and curtains', 39.0, 'transportation', 7),
	(682, 63, 1753, 'stealing silver spoons', 60.0, 'death', 99),
	(683, 63, 1769, 'burglary', 100.0, 'death', 7),
	(684, 63, 1772, 'stealing a basket of food', 12.0, 'transportation', 7),
	(685, 63, 1759, 'stealing silk handkerchief', 1.0, 'transportation', 7),
	(686, 63, 1753, 'stealing linen handkerchief', 1.0, 'transportation', 7),
	(687, 63, 1770, 'stealing clothing', 18.0, 'transportation', 7),
	(688, 63, 1759, 'forgery', 0.0, 'transportation', 14),
	(689, 63, 1754, 'stealing a silk handkerchief', 3.0, 'transportation', 7),
	(690, 63, 1770, 'burglary', 43.0, 'death', 7),
	(691, 63, 1753, 'assault and attempted highway robbery', 0.0, 'transportation', 7),
	(692, 63, 1772, 'stealing', 39.0, 'transportation', 7),
	(693, 63, 1757, 'burglary', 60.0, 'death', 7),
	(694, 63, 1764, 'stealing clothing', 40.0, 'transportation', 7),
	(695, 63, 1764, 'stealing linen handkerchief', 1.0, 'transportation', 7),
	(696, 63, 1754, 'stealing clothing', 40.0, 'transportation', 7),
	(697, 63, 1757, 'assault and highway robbery', 45.0, 'death', 7),
	(698, 63, 1756, 'assault and highway robbery', 2.0, 'death', 7),
	(699, 63, 1764, 'stealing a sword', 0.0, 'death', 99),
	(700, 63, 1764, 'stealing livestock (poultry)', 6.0, 'death', 99),
	(701, 63, 1759, 'stealing clothing', 18.0, 'transportation', 7),
	(702, 63, 1753, 'stealing a silk handkerchief', 2.0, 'transportation', 7),
	(703, 63, 1753, 'stealing a copper kettle', 8.0, 'transportation', 7),
	(704, 63, 1764, 'assault', 0.0, 'transportation', 7),
	(705, 63, 1770, 'stealing clothing', 40.0, 'transportation', 7),
	(706, 63, 1770, 'stealing clothing and cash', 22.0, 'transportation', 7),
	(707, 63, 1759, 'receiving stolen goods', 0.0, 'transportation', 14),
	(708, 63, 1772, 'stealing a silver watch, seal and brass key', 41.0, 'transportation', 7),
	(709, 63, 1770, 'stealing livestock (a horse)', 30.0, 'death', 7),
	(710, 63, 1759, 'stealing a cotton handkerchief', 1.0, 'transportation', 7),
	(711, 63, 1772, 'stealing clothing', 39.0, 'transportation', 7),
	(712, 63, 1759, 'stealing two silver tablespoons', 10.0, 'transportation', 7),
	(713, 63, 1753, 'stealing a silk handkerchief', 2.0, 'transportation', 7),
	(714, 63, 1760, 'stealing household goods', 10.0, 'transportation', 7),
	(715, 63, 1770, 'stealing an iron bar', 1.0, 'transportation', 7),
	(716, 63, 1759, 'fraud (impersonation)', 0.0, 'death', 99),
	(717, 63, 1753, 'stealing a gold watch, chain, seals and key', 290.0, 'transportation', 7),
	(718, 63, 1759, 'stealing assorted barber’s tools and aids', 295.0, 'transportation', 7),
	(719, 63, 1759, 'highway robbery', 221.0, 'transportation', 7),
	(720, 63, 1770, 'stealing clothing', 52.0, 'transportation', 7),
	(721, 63, 1759, 'burglary', 5.0, 'transportation', 7),
	(722, 63, 1764, 'stealing 18 table knives and forks', 7.0, 'transportation', 7),
	(723, 63, 1764, 'stealing clothing', 7.0, 'death', 99),
	(724, 63, 1764, 'assault and highway robbery', 23.0, 'death', 99),
	(725, 63, 1770, 'stealing a silver watch, metal chain, gold seal', 39.0, 'transportation', 7),
	(726, 63, 1770, 'stealing household goods', 7.0, 'transportation', 7),
	(727, 63, 1759, 'stealing musical instruments', 5.0, 'transportation', 7),
	(728, 63, 1767, 'stealing livestock  (6 sheep)', 120.0, 'death', 7),
	(729, 63, 1761, 'stealing lead from a building', 4.0, 'transportation', 7),
	(730, 63, 1770, 'stealing lace', 100.0, 'death', 99),
	(731, 63, 1772, 'stealing bedding', 39.0, 'transportation', 7),
	(732, 63, 1753, 'stealing clothing', 45.0, 'transportation', 7),
	(733, 63, 1770, 'stealing household goods', 20.0, 'transportation', 7),
	(734, 63, 1760, 'stealing silk', 40.0, 'transportation', 7),
	(735, 63, 1759, 'burglary', 5.0, 'transportation', 7),
	(736, 63, 1760, 'stealing clothing', 5.0, 'transportation', 7),
	(737, 63, 1770, 'stealing livestock (a horse - a gelding)', 200.0, 'death', 99),
	(738, 63, 1746, 'assault and highway robbery', 24.0, 'death', 99),
	(739, 63, 1759, 'stealing', 2.0, 'transportation', 7),
	(740, 63, 1770, 'stealing linen', 30.0, 'transportation', 7),
	(741, 63, 1757, 'assault and highway robbery', 45.0, 'death', 7),
	(742, 63, 1770, 'assault and highway robbery', 52.0, 'death', 99),
	(743, 63, 1760, 'stealing a handkerchief', 2.0, 'transportation', 7),
	(744, 63, 1764, 'stealing livestock (a horse - a mare)', 30.0, 'death', 7),
	(745, 63, 1773, 'burglary', 1575.0, 'death', 7),
	(746, 63, 1759, 'stealing a length of material', 112.0, 'transportation', 7),
	(747, 63, 1759, 'stealing clothing (two separate charges)', 39.0, 'transportation', 7),
	(748, 63, 1759, 'stealing  bedding', 140.0, 'transportation', 7),
	(749, 63, 1756, 'assault and stealing a handkerchief', 1.0, 'death', 7),
	(750, 63, 1759, 'stealing copper', 20.0, 'transportation', 7),
	(751, 63, 1770, 'stealing two silver teaspoons', 10.0, 'transportation', 7),
	(752, 63, 1753, 'stealing clothing', 5.0, 'transportation', 7),
	(753, 63, 1772, 'burglary', 13.0, 'death', 7),
	(754, 63, 1759, 'stealing clothing', 98.0, 'transportation', 7),
	(755, 63, 1770, 'assault and highway robbery', 81.0, 'death', 99),
	(756, 63, 1759, 'stealing cash and a barrel of dried fruit', 81.0, 'transportation', 7),
	(757, 63, 1764, 'stealing a handkerchief', 1.0, 'transportation', 7),
	(758, 63, 1754, 'stealing clothing', 92.0, 'transportation', 7),
	(759, 63, 1760, 'stealing silverware', 49.0, 'transportation', 7),
	(760, 63, 1753, 'stealing linen sheets', 39.0, 'transportation', 7),
	(761, 63, 1762, 'theft of household goods', 16.0, 'death', 99),
	(762, 63, 1754, 'stealing a snuff box', 39.0, 'transportation', 7),
	(763, 63, 1770, 'stealing clothing', 58.0, 'transportation', 7),
	(764, 63, 1769, 'stealing clothing', 23.0, 'transportation', 7),
	(765, 63, 1763, 'stealing clothing and cash', 13.0, 'death', 99),
	(766, 63, 1770, 'stealing a silver watch, metal chain and gold seal', 39.0, 'transportation', 7),
	(767, 63, 1746, 'assault and highway robbery', 24.0, 'death', 99),
	(768, 63, 1753, 'stealing a silk handkerchief', 2.0, 'transportation', 7),
	(769, 63, 1753, 'stealing lead from roof', 40.0, 'transportation', 7),
	(770, 63, 1760, 'stealing a watch and gown', 25.0, 'transportation', 7),
	(771, 63, 1759, 'fraud (impersonation)', 0.0, 'death', 7),
	(772, 73, 1757, 'stealing timber from a forest nursery', -1.0, 'transportation', 7),
	(773, 74, 1772, 'stealing clothing and wheat (3 charges)', 53.0, 'transportation', 7),
	(774, 86, 1781, 'assault and highway robbery', 228.0, 'death', 99),
	(775, 86, 1779, 'assault and highway robbery', 2.0, 'death', 7),
	(776, 86, 1777, 'assault and highway robbery', 133.0, 'death', 7),
	(777, 86, 1779, 'stealing a watch and other goods', 160.0, 'transportation', 7),
	(778, 86, 1761, 'stealing a hair trunk', -1.0, 'transportation', 7),
	(779, 86, 1779, 'burglary', 591.0, 'death', 7),
	(780, 88, 1753, 'stealing material', 2.0, 'transportation', 7),
	(781, 88, 1753, 'stealing livestock (a horse - a gelding)', 140.0, 'death', 7);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
