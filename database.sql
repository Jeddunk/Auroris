-- Auroris database install
-- TODO: Rebuild the Auroris Database Schema

-- Set default variables
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "-07:00";



-- Delete old table data
DROP TABLE IF EXISTS `bans`;
DROP TABLE IF EXISTS `igloos`;
DROP TABLE IF EXISTS `penguins`;
DROP TABLE IF EXISTS `postcards`;
DROP TABLE IF EXISTS `puffles`;
DROP TABLE IF EXISTS `social`;
DROP TABLE IF EXISTS `chatlog`;
DROP TABLE IF EXISTS `cfc`;
DROP TABLE IF EXISTS `redemption`;
DROP TABLE IF EXISTS `worlds`;



-- Table structure for bans
CREATE TABLE `bans` (
	`ID` int(11) NOT NULL,
	`Moderator` char(12) NOT NULL,
	`Player` int(11) UNSIGNED NOT NULL,
	`Comment` text NOT NULL,
	`Expiration` int(8) NOT NULL,
	`Time` int(8) NOT NULL,
	`Type` smallint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for penguins
CREATE TABLE `penguins` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Username` char(12) NOT NULL,
  `Nickname` char(16) NOT NULL,
  `Password` char(255) NOT NULL,
  `LoginKey` char(32) NOT NULL,
  `ConfirmationHash` char(32) NOT NULL,
  `SWID` char(38) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `Avatar` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AvatarAttributes` char(98) NOT NULL DEFAULT '{"spriteScale":100,"spriteSpeed":100,"ignoresBlockLayer":false,"invisible":false,"floating":false}',
  `Email` char(254) NOT NULL,
  `RegistrationDate` int(8) NOT NULL,
  `Moderator` tinyint(1) NOT NULL DEFAULT '0',
  `Inventory` text NOT NULL,
  `CareInventory` text NOT NULL,
  `Coins` mediumint(7) UNSIGNED NOT NULL DEFAULT '200000',
  `Igloo` int(10) UNSIGNED NOT NULL COMMENT 'Current active igloo',
  `Igloos` text NOT NULL COMMENT 'Owned igloo types',
  `Floors` text NOT NULL COMMENT 'Owned floorings',
  `Locations` text NOT NULL COMMENT 'Owned locations',
  `Furniture` text NOT NULL COMMENT 'Furniture inventory',
  `Color` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `Head` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Face` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Neck` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Body` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Hand` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Feet` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Photo` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Flag` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Walking` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Puffle ID',
  `Banned` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Timestamp of ban',
  `Stamps` text NOT NULL,
  `StampBook` varchar(150) NOT NULL DEFAULT '1%1%1%1',
  `EPF` varchar(9) NOT NULL DEFAULT '0,0,0',
  `PuffleQuest` varchar(25) NOT NULL DEFAULT '0,1,|0;0;1403959119;',
  `Online` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CurrentServer` varchar(255) NOT NULL -- ?
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for igloos
CREATE TABLE `igloos` (
	`ID` int(10) UNSIGNED NOT NULL,
	`Owner` int(10) UNSIGNED NOT NULL,
	`Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
	`Floor` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
	`Music` smallint(6) NOT NULL DEFAULT '0',
	`Furniture` text NOT NULL,
	`Location` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
	`Likes` text NOT NULL,
	`Locked` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for puffles
CREATE TABLE `puffles` (
	`ID` int(10) UNSIGNED NOT NULL,
	`Owner` int(10) UNSIGNED NOT NULL,
	`Name` char(12) NOT NULL,
	`AdoptionDate` int(8) NOT NULL,
	`Type` tinyint(3) UNSIGNED NOT NULL,
	`Hat` smallint(5) UNSIGNED NOT NULL,
	`Food` tinyint(3) UNSIGNED NOT NULL DEFAULT '100',
	`Play` tinyint(3) UNSIGNED NOT NULL DEFAULT '100',
	`Rest` tinyint(3) UNSIGNED NOT NULL DEFAULT '100',
	`Clean` tinyint(3) UNSIGNED NOT NULL DEFAULT '100',
	`Backyard` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for table postcards
CREATE TABLE `postcards` (
	`ID` int(10) UNSIGNED NOT NULL,
	`Recipient` int(10) UNSIGNED NOT NULL,
	`SenderName` char(12) NOT NULL,
	`SenderID` int(10) UNSIGNED NOT NULL,
	`Details` varchar(12) NOT NULL,
	`Date` int(8) NOT NULL,
	`Type` smallint(5) UNSIGNED NOT NULL,
	`HasRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for redemption tokens
CREATE TABLE `redemption` (
	`ID` int(10) UNSIGNED NOT NULL,
	`Name` varchar(255) NOT NULL, -- ?
	`Items` varchar(255) NOT NULL, -- ?
	`Coins` varchar(255) NOT NULL, -- ?
	`Expired` varchar(255) NOT NULL, -- ?
	`Redeemed` varchar(255) NOT NULL -- ?
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for worlds (servers?)
CREATE TABLE `worlds` (
	`ID` int(10) UNSIGNED NOT NULL,
	`worldID` int(10) UNSIGNED NOT NULL, -- ?
	`worldName` varchar(20) NOT NULL, -- ?
	`worldPopulation` int(10) UNSIGNED NOT NULL DEFAULT '0',
	`getFilterVersion` varchar(255) NOT NULL -- ?
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Table structure for coins for change
-- ID, donationTotal, "cat"+categoryID, 
CREATE TABLE `cfc` (
	`ID` int(10) UNSIGNED NOT NULL,
	`donationTotal` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Social
CREATE TABLE `social` (
	`ID` int(10) UNSIGNED NOT NULL,
	`version` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- Chatlog
CREATE TABLE `chatlog` (
	`ID` int(10) UNSIGNED NOT NULL,
	`PlayerID` int(10) UNSIGNED NOT NULL,
	`PlayerNickname` char(16) NOT NULL,
	`Message` varchar(255) NOT NULL, -- ?
	`Timestamp` varchar(30) NOT NULL, -- ?
	`Action` varchar(255) NOT NULL -- ?
) ENGINE=InnoDB DEFAULT CHARSET=utf8;













