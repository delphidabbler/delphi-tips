-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2021 at 04:25 PM
-- Server version: 5.7.35
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dabbler_tips`
--

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
CREATE TABLE `tips` (
  `id` smallint(6) NOT NULL,
  `added` date DEFAULT '1971-01-01',
  `updated` datetime DEFAULT '1971-01-01 00:00:00',
  `title` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(32) DEFAULT NULL,
  `author_website` varchar(64) DEFAULT NULL,
  `resource` varchar(32) DEFAULT NULL,
  `resource_website` varchar(64) DEFAULT NULL,
  `contributor` varchar(64) DEFAULT NULL,
  `contributor_website` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `added`, `updated`, `title`, `author`, `author_website`, `resource`, `resource_website`, `contributor`, `contributor_website`) VALUES
(1, '2007-06-02', '2007-06-02 00:00:00', 'Move the mouse cursor from code', 'Jerry Gagnon', '', '', '', '', ''),
(2, '2007-06-02', '2007-06-02 00:00:00', 'How to call Internet Explorer from Delphi', '', '', '', '', '', ''),
(3, '2007-06-02', '2007-06-02 00:00:00', 'How to tell Netscape Navigator which web pages to load from your Delphi program', '', '', '', '', '', ''),
(4, '2007-06-02', '2007-06-02 00:00:00', 'Calling CreateProcess() the easy way', '', '', '', '', '', ''),
(5, '2007-06-02', '2007-10-12 00:00:00', 'Open documents and URLs in their associated applications', '', '', '', '', '', ''),
(6, '2007-06-02', '2013-10-12 00:00:00', 'Convert between long and short file names', '', '', '', '', '', ''),
(7, '2007-06-02', '2007-06-02 00:00:00', 'How to programmatically make your programs run on Windows startup', '', '', '', '', '', ''),
(8, '2007-06-02', '2007-06-02 00:00:00', 'Search for help', '', '', '', '', '', ''),
(9, '2007-06-02', '2009-08-27 00:00:00', 'When was that file last accessed?', '', '', 'Chami.com Tips', 'http://www.chami.com/tips/', '', ''),
(10, '2007-06-02', '2013-10-12 00:00:00', 'Delete files with the ability to undo or recycle', '', '', '', '', '', ''),
(11, '2007-06-02', '2007-06-02 00:00:00', 'How to flash the taskbar', '', '', '', '', '', ''),
(12, '2007-06-02', '2010-03-16 00:00:00', 'How to perform a Shell Sort', '', '', '', '', '', ''),
(13, '2007-06-02', '2007-06-02 00:00:00', 'How to copy data between TWebBrowsers', '', '', '', '', '', ''),
(14, '2007-06-02', '2007-06-02 00:00:00', 'How to access the Registry using Windows API', '', '', '', '', '', ''),
(15, '2007-06-02', '2007-06-02 00:00:00', 'How to add a context menu item to Windows Explorer', '', '', '', '', '', ''),
(16, '2007-06-02', '2007-06-02 00:00:00', 'How to register a global hotkey', '', '', '', '', '', ''),
(17, '2007-06-02', '2013-10-12 00:00:00', 'Execute a program and wait until it is done', '', '', '', '', '', ''),
(18, '2007-06-02', '2007-06-02 00:00:00', 'How to refresh file icons', '', '', '', '', '', ''),
(19, '2007-06-02', '2009-05-04 00:00:00', 'How to read bitmap file information', '', '', '', '', '', ''),
(20, '2007-06-02', '2007-06-02 00:00:00', 'How to determine the screen resolution', '', '', '', '', '', ''),
(21, '2007-06-02', '2011-01-16 15:06:00', 'How to read image pixels fast', '', '', '', '', '', ''),
(22, '2007-06-02', '2013-10-12 00:00:00', 'Drawing rotated text', '', '', '', '', '', ''),
(23, '2007-06-02', '2007-06-02 00:00:00', 'How to empty a TImage', '', '', '', '', '', ''),
(24, '2007-06-02', '2011-01-16 15:05:00', 'How to get a screen shot of a control', 'Various', '', '', '', '', ''),
(25, '2007-06-02', '2007-06-02 00:00:00', 'How to resolve a host name', '', '', '', '', '', ''),
(26, '2007-06-02', '2007-06-02 00:00:00', 'How to turn numlock on by code', '', '', '', '', '', ''),
(27, '2007-06-02', '2013-10-12 00:00:00', 'How to check if a string is a number', '', '', '', '', '', ''),
(28, '2007-06-02', '2013-10-12 00:00:00', 'How to check if the BDE is installed', 'Various', '', '', '', '', ''),
(29, '2007-06-02', '2007-06-02 00:00:00', 'How to read the installed ADO version', '', '', '', '', '', ''),
(30, '2007-06-02', '2013-10-12 00:00:00', 'How to convert TDateTime to a UNIX timestamp and vice versa', '', '', '', '', '', ''),
(31, '2007-06-02', '2007-09-24 00:00:00', 'How to detect text and font size changes', '', '', '', '', '', ''),
(32, '2007-06-02', '2007-06-02 00:00:00', 'How to print text and text files in Delphi', '', '', '', '', '', ''),
(33, '2007-06-02', '2007-06-02 00:00:00', 'How to create non-hiding hints', '', '', '', '', '', ''),
(34, '2007-06-02', '2007-10-12 00:00:00', 'How to create multiline hints', '', '', '', '', '', ''),
(35, '2007-06-02', '2007-06-02 00:00:00', 'How to know if the mouse has entered the component area', '', '', '', '', '', ''),
(36, '2007-06-02', '2008-08-14 00:00:00', 'How to snap a window to the screen edge', '', '', '', '', '', ''),
(37, '2007-06-02', '2007-06-02 00:00:00', 'How to have a form that never activates', 'logman0u812', '', '', '', '', ''),
(38, '2007-06-02', '2007-06-02 00:00:00', 'How can I add my own custom menu item to another application?', '', '', '', '', '', ''),
(39, '2007-06-02', '2007-06-02 00:00:00', 'Incremental search of list box', '', '', '', '', '', ''),
(40, '2007-06-02', '2007-09-24 00:00:00', 'Adding component help to Delphi', '', '', '', '', '', ''),
(41, '2007-06-11', '2010-03-16 00:00:00', 'Boyer-Moore-Horspool text searching', '', '', '', '', '', ''),
(42, '2007-06-11', '2007-06-11 00:00:00', 'Fast string file searching', '', '', '', '', '', ''),
(43, '2007-06-11', '2007-06-11 00:00:00', 'Prevent flicker on graphics controls', '', '', '', '', '', ''),
(44, '2007-06-11', '2007-06-11 00:00:00', 'How to block input to the system until released', 'DennisLV', '', '', '', '', ''),
(45, '2007-07-04', '2013-10-12 00:00:00', 'How to check if a key is pressed', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(46, '2007-08-14', '2007-08-14 00:00:00', 'Animate windows as they are opened and closed', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(47, '2007-08-14', '2013-10-12 00:00:00', 'Find the taskbar and system tray window handles', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(48, '2007-08-14', '2007-08-14 00:00:00', 'Animate tray application windows as they open and close', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(49, '2007-08-14', '2007-08-14 00:00:00', 'Message box that works with a Delphi Service Application', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(50, '2007-08-14', '2007-08-14 00:00:00', 'How to get the size of a file', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(51, '2007-08-31', '2007-08-31 00:00:00', 'Communicate between processes using windows messaging', 'Dennis LV', '', '', '', 'Dennis LV', ''),
(52, '2007-09-20', '2007-09-20 00:00:00', 'How to disable form movement using the mouse', 'Dennis LV', '', '', '', 'Dennis LV', ''),
(53, '2007-10-12', '2007-10-12 00:00:00', 'Triggering default menu items from code', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(54, '2007-10-15', '2013-10-12 00:00:00', 'Drawing disabled text', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(55, '2007-10-15', '2013-10-12 00:00:00', 'Drawing outlined text', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(56, '2007-10-23', '2007-10-29 00:00:00', 'Finding HTML elements by ID in a TWebBrowser document', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(57, '2007-10-29', '2007-10-29 00:00:00', 'Inserting RTF code into a rich edit control', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(58, '2007-10-29', '2010-03-16 00:00:00', 'How to prevent a TWebBrowser from displaying a document\'s background', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(59, '2007-10-29', '2007-10-29 00:00:00', 'Reading and writing INI files', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(60, '2008-03-31', '2008-03-31 00:00:00', 'Merging files', 'R Nascimento da Rocha/P Johnson', 'http://www.delphidabbler.com/', '', '', 'Rubem Nascimento da Rocha', ''),
(61, '2008-03-31', '2009-12-26 00:00:00', 'Execute a DOS command and capture the output', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(62, '2008-03-31', '2008-03-31 00:00:00', 'Get the network computer and domain names', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(63, '2003-03-31', '2003-03-31 00:00:00', 'Display the Browse for Folder dialog box', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(64, '2008-04-12', '2008-04-12 00:00:00', 'Getting and setting the user and system environment variables', 'Joe Donth', '', '', '', 'Joe Donth', ''),
(65, '2008-04-29', '2008-04-29 00:00:00', 'Making LMD buttons work when clicked', 'Alan Bailey', '', '', '', 'Alan Bailey', ''),
(66, '2008-06-16', '2008-06-16 00:00:00', 'How to convert Delphi forms from binary to text and vice versa', 'Bill Miller', '', '', '', 'Bill Miller', ''),
(67, '2008-10-17', '2008-10-17 00:00:00', 'Auto-resizing and centring forms on screen', 'Alan Bailey', '', '', '', 'Alan Bailey', ''),
(68, '2008-11-26', '2008-11-26 00:00:00', 'Extract keywords from an HTML document', 'nybnybnybnyb', '', '', '', '', ''),
(69, '2008-11-26', '2008-11-26 00:00:00', 'Check if an HTML element is displayed', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(70, '2009-04-26', '2009-04-26 00:00:00', 'File Open/Save Common Dialog Control IDs', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(71, '2009-06-17', '2009-06-17 00:00:00', 'How to extract the title of an HTML document', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(72, '2009-06-17', '2009-11-13 00:00:00', 'Check that a HTML document has completely loaded', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', 'Peter Johnson', 'http://www.delphidabbler.com/'),
(73, '2009-06-23', '2009-08-11 00:00:00', 'Encrypt and decrypt functions', 'Steve Schafer', 'http://www.teamb.com/', '', '', '', ''),
(74, '2009-08-12', '2010-03-16 00:00:00', 'How to create components with a transparent background', '', '', 'The Delphi Pool', '', '', ''),
(75, '2009-08-12', '2009-08-12 00:00:00', 'How to use a TControlCanvas in a component', '', '', 'The Delphi Pool', '', '', ''),
(76, '2009-08-12', '2009-08-12 00:00:00', 'How to implement drag and drop at design time', 'Renate Schaaf', '', 'The Delphi Pool', '', '', ''),
(77, '2009-08-12', '2009-08-12 00:00:00', 'How to set boundaries for newly created controls', '', '', 'The Delphi Pool', '', '', ''),
(78, '2009-08-12', '2009-08-12 00:00:00', 'How to enable scrollbars at design time', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(79, '2009-08-12', '2011-01-16 15:09:00', 'How to define a minimum size for a component', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(80, '2009-08-12', '2009-08-12 00:00:00', 'How to trap the ALT key state in a visual component', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(81, '2009-08-24', '2009-08-24 00:00:00', 'How to implement a multi-line caption on a TButton', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(82, '2009-08-24', '2010-01-29 00:00:00', 'How to create a TCheckBox with a transparent caption', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(83, '2009-08-24', '2009-08-24 00:00:00', 'How to create a TComboBox with incremental search capabilities', '', '', 'The Delphi Pool', '', '', ''),
(84, '2009-08-24', '2009-08-24 00:00:00', 'How to create a borderless TComboBox', 'Xavier Pacheco', '', 'The Delphi Pool', '', '', ''),
(85, '2009-08-24', '2010-04-08 15:55:00', 'How to centre text in a TEdit', 'Steve Zimmelman', '', 'The Delphi Pool', '', '', ''),
(86, '2009-08-24', '2009-12-05 00:00:00', 'How to create a TEdit that accepts only numeric input', 'Ralph Friedman & Chris Luck', '', 'The Delphi Pool', '', '', ''),
(87, '2009-08-28', '2010-03-16 00:00:00', 'How to create a TMemo with alternating colours to paint the lines', '', '', 'The Delphi Pool', '', '', ''),
(88, '2009-08-24', '2009-08-24 00:00:00', 'How to write a list of strings to the registry', '', '', 'The Delphi Pool', '', '', ''),
(89, '2009-08-24', '2009-08-24 00:00:00', 'How to make a child form listen to broadcasted messages', 'Charles Hacker', '', 'The Delphi Pool', '', '', ''),
(90, '2009-08-24', '2009-08-24 00:00:00', 'How to check if a TTreeView is fully expanded or collapsed', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(91, '2009-09-07', '2009-09-07 00:00:00', 'How to create a TTreeView without scrollbars', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(92, '2009-09-07', '2010-03-16 00:00:00', 'How to create a resizable TPanel with a size grip', 'Peter Below & Eddie Shipman', '', 'The Delphi Pool', '', '', ''),
(93, '2009-09-07', '2010-03-16 00:00:00', 'How to resize a TPanel at runtime', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(94, '2009-09-07', '2010-03-16 00:00:00', 'How to create a non-rectangular TPanel', 'Eddie Shipman', '', 'The Delphi Pool', '', '', ''),
(95, '2009-09-07', '2010-03-16 00:00:00', 'How to get the RGB value of a pixel under the mouse cursor', 'Cristian Alejo Zujew', '', 'The Delphi Pool', '', '', ''),
(96, '2009-09-14', '2009-09-14 00:00:00', 'How to use the alpha transparency features included in Windows 2000 and later', 'Serhiy Perevoznyk', '', 'The Delphi Pool', '', '', ''),
(97, '2009-09-14', '2009-09-14 00:00:00', 'How to convert a *.bmp file to a *.jpg file', '', '', 'The Delphi Pool', '', '', ''),
(98, '2009-09-14', '2009-09-14 00:00:00', 'How to create a brush using CreateBrushIndirect', 'Earl F. Glynn', '', 'The Delphi Pool', '', '', ''),
(99, '2009-09-14', '2009-09-14 00:00:00', 'How to resize a *.jpg image and save the result to a file', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(100, '2009-09-14', '2010-03-16 00:00:00', 'How to save several TBitmaps into one file', 'Charles Hacker', '', 'The Delphi Pool', '', '', ''),
(101, '2009-09-14', '2010-03-16 00:00:00', 'How to convert an integer value to a Roman Numeral representation', 'Philippe Ranger', '', 'The Delphi Pool', '', '', ''),
(102, '2009-09-14', '2009-09-14 00:00:00', 'How to control the scroll buffer of a TMemo', 'Eddie Shipman', '', 'The Delphi Pool', '', '', ''),
(103, '2009-09-14', '2009-09-14 00:00:00', 'How to get the physical caret position in a TMemo, TEdit or TRichEdit', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(104, '2009-09-14', '2009-09-14 00:00:00', 'How to save and load printer settings to / from the registry', 'Peter Below & David Beardwood', '', 'The Delphi Pool', '', '', ''),
(105, '2009-09-14', '2010-03-16 00:00:00', 'How to send a message to a specific control on a TForm', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', '', ''),
(106, '2009-10-06', '2010-02-22 00:00:00', 'Install components and IDE extensions into the Delphi IDE', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', '', ''),
(107, '2009-10-20', '2009-10-20 00:00:00', 'Remove recently opened projects from the CodeGear RAD Studio IDE welcome page', 'Jeff DeVore', '', '', '', 'Jeff DeVore', ''),
(108, '2009-10-26', '2009-10-26 00:00:00', 'How to reduce the number of Set methods in a component', 'Wayne Niddery', '', 'The Delphi Pool', '', '', ''),
(109, '2009-10-26', '2009-10-26 00:00:00', 'How to make a TCollectionItem contain a TCollection', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(110, '2009-10-26', '2009-10-26 00:00:00', 'How to add text completion capability to a TComboBox', 'Anon & Peter Below', '', 'The Delphi Pool', '', '', ''),
(111, '2009-10-26', '2009-10-26 00:00:00', 'How to implement autocompletion in a TEdit', 'Woody & Mike Warren', '', 'The Delphi Pool', '', '', ''),
(112, '2009-10-26', '2009-10-26 00:00:00', 'How to create a TGroupBox with a checkbox that disables / enables all contained controls when checked', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(113, '2009-10-26', '2009-10-26 00:00:00', 'How to use a scroll event in a TListBox', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(114, '2009-10-26', '2009-10-26 00:00:00', 'How to create a TListBox that is resizable at runtime', 'Yorai Aminov', '', 'The Delphi Pool', '', '', ''),
(115, '2009-10-26', '2009-10-26 00:00:00', 'How to create a TListBox with Drag and Drop capabilities', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(116, '2009-10-26', '2009-10-26 00:00:00', 'How to expand a TMemo while keying in', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(117, '2009-10-26', '2009-10-26 00:00:00', 'How to add an OnMouseDown event to a TPopupMenu', 'Kalman Hadarics', '', 'The Delphi Pool', '', '', ''),
(118, '2009-10-28', '2009-10-28 00:00:00', 'How to create a TTreeView with a three state checkbox', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(119, '2009-10-28', '2009-10-28 00:00:00', 'How to change the drag cursor image when dragging in a TTreeView', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(120, '2009-10-28', '2009-10-28 00:00:00', 'How to create a TScrollBar with a background bitmap', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(121, '2009-10-28', '2009-10-28 00:00:00', 'How to create a TScrollBox with its own background', '', '', 'The Delphi Pool', '', '', ''),
(122, '2009-10-28', '2009-10-28 00:00:00', 'How to implement an OnMouseDown event for the buttons of a TRadioGroup', '', '', 'The Delphi Pool', '', '', ''),
(123, '2009-11-05', '2009-11-05 00:00:00', 'How to detach and re-attach an event', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(124, '2009-11-05', '2009-11-05 00:00:00', 'Detect if an application has stopped responding', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(125, '2009-11-05', '2013-10-12 00:00:00', 'Find the position of the text cursor in a memo control', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(126, '2009-11-05', '2009-11-05 00:00:00', 'Scanning MS Office documents using the MS Anti-virus API', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(127, '2009-11-05', '2009-11-05 00:00:00', 'Prevent system sleep', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(128, '2009-11-05', '2009-11-05 00:00:00', 'Right align main menu items', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(129, '2009-11-05', '2009-11-05 00:00:00', 'How to use a function or a procedure as a parameter to another function', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(130, '2009-11-05', '2009-11-05 00:00:00', 'Using the TStrings.ValueFromIndex property', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(131, '2009-11-05', '2009-11-05 00:00:00', 'Print any type of document using Delphi', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(132, '2009-11-05', '2009-11-05 00:00:00', 'Which COM objects to use?', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(133, '2009-11-05', '2009-11-05 00:00:00', 'Serialize application settings', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(134, '2009-11-05', '2009-11-05 00:00:00', 'Different ways of executing applications and files from Delphi', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(135, '2009-11-05', '2009-11-05 00:00:00', 'Programatically log users off', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(136, '2009-11-05', '2009-11-05 00:00:00', 'How to replace text in a Word document', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(137, '2009-11-05', '2009-11-05 00:00:00', 'Communicate with Windows Program Manager using DDE', 'Shlomo Abuisak', '', '', '', 'Shlomo Abuisak', ''),
(138, '2009-11-06', '2009-11-06 00:00:00', 'How to get the system\'s colour palette', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(139, '2009-11-06', '2009-11-06 00:00:00', 'How to create gradient colour schemes', 'Carl Olsen', '', 'The Delphi Pool', '', '', ''),
(140, '2009-11-06', '2009-11-06 00:00:00', 'How to convert hex colour values into Delphi formatted ones', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(141, '2009-11-06', '2009-11-06 00:00:00', 'How to mix or separate three color channels', 'Jens Gruschel', '', 'The Delphi Pool', '', '', ''),
(142, '2009-11-06', '2009-11-06 00:00:00', 'How to adjust RGB values using TTrackBars', 'Sue D. Nom & Mauro Patino', '', 'The Delphi Pool', '', '', ''),
(143, '2009-11-06', '2009-11-06 00:00:00', 'How to draw dotted or dashed lines using a pen with a width greater than 1', 'Gary Williams', '', 'The Delphi Pool', '', '', ''),
(144, '2009-11-06', '2009-11-06 00:00:00', 'How to generate a circle through three points', 'Joseph O\'Rourke', '', 'The Delphi Pool', '', '', ''),
(145, '2009-11-06', '2009-11-06 00:00:00', 'How to compare two pf24bit images', 'Paul Loht & Bernt Wold', '', 'The Delphi Pool', '', '', ''),
(146, '2009-11-06', '2009-11-06 00:00:00', 'How to implement a \'Lasso\'', '', '', 'The Delphi Pool', '', '', ''),
(147, '2009-11-06', '2009-11-06 00:00:00', 'How to blend two pf24bit images using ScanLine', 'Harm', '', 'The Delphi Pool', '', '', ''),
(148, '2009-11-06', '2009-11-06 00:00:00', 'How to create a pie chart', 'Earl F. Glynn', '', 'The Delphi Pool', '', '', ''),
(149, '2009-11-06', '2009-11-06 00:00:00', 'How to change the corner size of RoundRect', 'Eddie Shipman', '', 'The Delphi Pool', '', '', ''),
(150, '2009-11-06', '2009-11-06 00:00:00', 'How to determine the track of the current CD', '', '', 'The Delphi Pool', '', '', ''),
(151, '2009-12-05', '2009-12-05 00:00:00', 'Force a TEdit to accept only numeric input', 'JM', '', '', '', 'JM', ''),
(152, '2010-02-22', '2010-02-22 00:00:00', 'How to save the canvas of a TPaintBox to a .bmp file', 'Steve Schafer', '', 'The Delphi Pool', '', '', ''),
(153, '2010-02-22', '2010-02-22 00:00:00', 'How to retrieve rich text from a resource file and save it to disk', 'Martin Holmes', '', 'The Delphi Pool', '', '', ''),
(154, '2010-02-22', '2010-02-22 00:00:00', 'How to delete files with wildcards', 'Various', '', 'The Delphi Pool', '', '', ''),
(155, '2010-02-22', '2010-02-22 00:00:00', 'How to search for a pattern in a file', 'P Below & L Troyanovsky', '', 'The Delphi Pool', '', '', ''),
(156, '2010-03-09', '2010-03-09 00:00:00', 'Solution for problem with auto update feature in Rad Studio 2010 and Win Vista/7 UAC', 'Jeff DeVore', '', '', '', 'Jeff DeVore', ''),
(157, '2010-03-12', '2010-03-12 00:00:00', 'A general purpose Base64 decoding routine using Indy', 'Peter Johnson', 'http://www.delphidabbler.com', '', '', 'Jeff DeVore', ''),
(158, '2010-03-17', '2010-03-17 10:33:00', 'How to prevent a TListView from displaying tool tips for long items', 'Peter Johnson', 'http://www.delphidabbler.com/', '', '', '', ''),
(159, '2010-04-08', '2010-04-08 15:55:00', 'How to centre text in a TEdit (alternative approach)', 'JMS', '', '', '', 'JMS', ''),
(160, '2010-06-02', '2011-01-20 21:00:00', 'How to call CopyFileEx and let the callback update a progress bar', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(161, '2010-06-02', '2010-06-02 00:00:00', 'How to paste files from Windows Explorer into your application', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(162, '2010-06-02', '2010-06-02 00:00:00', 'How to delete lines from a text file', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(163, '2010-06-02', '2010-06-02 00:00:00', 'How to save and restore font selections to a text file', 'Various', '', 'The Delphi Pool', '', '', ''),
(164, '2010-06-02', '2010-06-02 00:00:00', 'How to generate a temporary file name', 'Various', '', 'The Delphi Pool', '', '', ''),
(165, '2010-06-02', '2010-06-02 00:00:00', 'How to copy multiple files into one', 'Various', '', 'The Delphi Pool', '', '', ''),
(166, '2010-06-02', '2010-06-02 00:00:00', 'How to get the size of a text file without opening it', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(167, '2010-06-02', '2010-06-02 00:00:00', 'How to get data from a file without reading it into memory', 'Eyal Post', '', 'The Delphi Pool', '', '', ''),
(168, '2010-06-02', '2010-06-02 00:00:00', 'How to read Unicode text files', 'Jens Geyer', '', 'The Delphi Pool', '', '', ''),
(169, '2010-06-02', '2010-06-02 00:00:00', 'How to read very large text files fast', 'Various', '', 'The Delphi Pool', '', '', ''),
(170, '2010-10-12', '2013-10-12 00:00:00', 'How to send a simulated key press to the active control', '', '', '', '', 'Mike', ''),
(171, '2010-12-17', '2010-12-17 00:00:00', 'How to get and set the local computer name', '', '', '', '', 'Topellina', ''),
(172, '2010-12-17', '2010-12-17 00:00:00', 'Sort TStrings objects with extra functionality ala UNIX style parameters', 'Mike Heydon', '', '', '', 'Loris Luise', ''),
(173, '2010-12-17', '2010-12-17 00:00:00', 'Change the button captions in a message dialog box', '', '', '', '', 'Topellina', ''),
(174, '2010-12-17', '2010-12-17 00:00:00', 'How to minimize the controls in a form', '', '', '', '', 'geotech', ''),
(175, '2010-12-17', '2010-12-17 00:00:00', 'Display the Windows Disconnect Network Drive dialog box', '', '', '', '', 'Shlomo Abuisak', ''),
(176, '2010-12-17', '2010-12-17 00:00:00', 'How to download a file using FTP', 'Thomas Stutz', '', 'Swiss Delphi Center', 'http://www.swissdelphicenter.com', 'Frederik Smith', ''),
(177, '2010-12-17', '2010-12-17 00:00:00', 'How to save and load a TStringGrid to and from a file', '', '', '', '', 'Michael Rockett', ''),
(178, '2011-01-02', '2011-01-04 17:44:00', 'How to make a single instance of your application', 'Montor', '', '', '', 'Montor', ''),
(179, '2011-01-15', '2011-01-15 00:00:00', 'How to fade forms in and out', 'K Smith', '', '', '', 'K Smith', ''),
(180, '2012-06-18', '2012-06-18 00:00:00', 'How to swap two integers without using a temporary variable', '', '', '', '', 'Muhammad Saied', ''),
(181, '2012-07-05', '2012-07-05 00:00:00', 'Simulate the Visual Basic SendKeys and AppActivate routines in Delphi', 'Ken Henderson', '', '', '', 'Irfan Karazor', ''),
(182, '2012-07-06', '2012-07-06 00:00:00', 'Draw a DBGrid with alternating row colours', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(183, '2012-07-06', '2012-07-06 00:00:00', 'Prevent a Delphi form from being moved off screen', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(184, '2012-07-06', '2012-07-06 00:00:00', 'How to wipe a file', 'Dorin Duminica', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(185, '2012-07-06', '2012-07-06 00:00:00', 'How to detect and prevent Windows shut down', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(186, '2012-07-06', '2012-07-06 00:00:00', 'Take a screen shot of an inactive window', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(187, '2012-07-06', '2012-07-06 00:00:00', 'Prevent a Delphi form from being moved', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(188, '2012-07-06', '2012-07-06 00:00:00', 'Add animation effects to your forms', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(189, '2012-07-06', '2012-07-06 00:00:00', 'Ensure a form stays in the background', '', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(190, '2012-07-06', '2012-07-06 00:00:00', 'Terminate a process instantly', 'Dorin Duminica', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(191, '2012-07-06', '2012-07-06 00:00:00', 'Delete or clear rows in a TStringGrid', 'Dorin Duminica', '', '', '', 'Riccardo Faiella (Topellina)', ''),
(192, '2012-07-08', '2012-07-08 00:00:00', 'How to save the font settings of a control to the registry', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(193, '2012-07-08', '2012-07-08 00:00:00', 'How to subclass the default Delphi Dock Manager', 'Mike Potter', '', 'The Delphi Pool', '', '', ''),
(194, '2012-07-08', '2012-07-08 00:00:00', 'How to create data-aware components', '', '', 'The Delphi Pool', '', '', ''),
(195, '2012-07-08', '2012-07-08 00:00:00', 'How to implement a custom component paint method that is dependent on outside data', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(196, '2012-07-08', '2012-07-08 00:00:00', 'How to get the update region in a TGraphicControl', 'Various', '', 'The Delphi Pool', '', '', ''),
(197, '2012-09-17', '2012-09-17 00:00:00', 'Force display of a ToolButton\'s PopupMenu when the button is clicked', '', '', '', '', 'topellina', ''),
(198, '2012-09-17', '2012-09-17 00:00:00', 'How to draw on the Windows desktop', 'Dorin Duminica', '', '', '', 'topellina', ''),
(199, '2012-09-17', '2012-09-17 00:00:00', 'Change the font used in hints', '', '', '', '', 'topellina', ''),
(200, '2012-09-17', '2012-09-17 00:00:00', 'How to display icons in a combo box', '', '', '', '', 'topellina', ''),
(201, '2013-01-27', '2013-01-27 00:00:00', 'How to get the image size of a JPG, GIF and PNG image file', 'Various', '', 'The Delphi Pool', '', '', ''),
(202, '2013-01-27', '2013-01-27 00:00:00', 'How to save 32 bit bitmaps in 24 bit bmp format', 'Andrew Rybenkov', '', 'The Delphi Pool', '', '', ''),
(203, '2013-01-27', '2013-01-27 00:00:00', 'How to paint a translucent (not transparent) rectangle', 'Steve Schafer', '', 'The Delphi Pool', '', '', ''),
(204, '2013-01-27', '2013-01-27 00:00:00', 'How to write a custom TAction to control the visibility of a TStatusBar', 'Serge Gubenko', '', 'The Delphi Pool', '', '', ''),
(205, '2013-01-27', '2013-01-27 00:00:00', 'How to implement an OnAfterExecute event in a TActionList', 'Igor Glukhov', '', 'The Delphi Pool', '', '', ''),
(206, '2013-01-27', '2013-01-27 00:00:00', 'How to create a TDrawGrid where all cells act as buttons', 'Peter Below', '', 'The Delphi Pool', '', '', ''),
(207, '2013-01-27', '2013-01-27 00:00:00', 'How to block pasting of text from the clipboard into an enabled TEdit', 'Serdar Guven', '', 'The Delphi Pool', '', '', ''),
(208, '2013-01-27', '2013-01-27 00:00:00', 'How to paint on a TControlCanvas in a TMemo', 'Anon & Jon T Camp', '', 'The Delphi Pool', '', '', ''),
(209, '2013-01-27', '2013-01-27 00:00:00', 'How to create a transparent TMemo', '', '', 'The Delphi Pool', '', '', ''),
(210, '2013-01-27', '2013-01-27 00:00:00', 'How to create a transparent TPanel', 'Various', '', 'The Delphi Pool', '', '', ''),
(211, '2013-01-28', '2013-01-28 00:00:00', 'List of BDE error codes', '', '', 'The Delphi Pool', '', '', ''),
(212, '2013-01-28', '2013-01-28 00:00:00', 'BDE API Overview', '', '', 'The Delphi Pool', '', '', ''),
(213, '2013-01-28', '2013-01-28 00:00:00', 'How to get rid of the BDE', '', '', 'The Delphi Pool', '', '', ''),
(214, '2013-03-13', '2013-03-13 00:00:00', 'How to create a GUID', 'Anon & Ivan Kozhuharov', '', 'The Delphi Pool', '', '', ''),
(215, '2013-03-13', '2013-03-13 00:00:00', 'How to create a greyscale palette', 'Taras Bregin', '', 'The Delphi Pool', '', '', ''),
(216, '2013-03-13', '2013-03-13 00:00:00', 'What is a DispInterface?', 'Deborah Pate', '', 'The Delphi Pool', '', '', ''),
(217, '2013-03-13', '2013-03-13 00:00:00', 'The purpose and use of DispInterface', 'Marc Rohloff', '', 'The Delphi Pool', '', '', ''),
(218, '2013-04-09', '2013-04-09 00:00:00', 'How to calculate the minimum distance between two polygons', 'Jens Gruschel', '', 'The Delphi Pool', '', '', ''),
(219, '2013-04-09', '2013-04-09 00:00:00', 'How to rotate a 2D point', 'Joseph O\'Rourke', '', 'The Delphi Pool', '', '', ''),
(220, '2013-04-09', '2013-04-09 00:00:00', 'How to calculate intersection points of lines or line sections with rectangles', 'Cliff W. Estes', '', 'The Delphi Pool', '', '', ''),
(221, '2013-04-09', '2013-04-09 00:00:00', 'How to calculate the area of a polygon', '', '', 'The Delphi Pool', '', '', ''),
(222, '2013-04-09', '2013-04-09 00:00:00', 'How to retrieve all available TBrushStyle values as a list of strings', 'Sen', '', 'The Delphi Pool', '', '', ''),
(223, '2013-04-24', '2013-04-24 00:00:00', 'Check if computer is connected to the internet', '', '', '', '', 'Don Rowlett', ''),
(224, '2013-06-02', '2013-06-02 00:00:00', 'Change the Delphi Object Inspector font size', 'Mike Fletcher', '', '', '', '', ''),
(225, '2013-07-30', '2013-07-30 00:00:00', 'Double quote a string that has spaces', 'Don Rowlett', NULL, NULL, NULL, 'Don Rowlett', NULL),
(226, '2013-09-06', '2013-09-06 00:00:00', 'Implementing a custom loop', 'Dorin Duminica', NULL, NULL, NULL, 'topellina', NULL),
(227, '2013-09-06', '2013-09-06 00:00:00', 'How to handle a system time change', '', NULL, NULL, NULL, 'topellina', NULL),
(228, '2013-09-06', '2013-09-06 00:00:00', 'Dim the main application form when a dialog box is displayed', '', NULL, NULL, NULL, 'topellina', NULL),
(229, '2013-09-06', '2013-09-06 00:00:00', 'How to create a virtual drive', 'Dorin Duminica', NULL, NULL, NULL, 'topellina', NULL),
(230, '2014-01-22', '2014-01-22 00:00:00', 'Optimised replacements for DecodeDate and EncodeDate', NULL, NULL, NULL, NULL, 'Bill Miller', NULL),
(231, '2014-01-22', '2014-01-22 00:00:00', 'How to retrieve the CPU vendor ID', NULL, NULL, NULL, NULL, 'Bill Miller', NULL),
(232, '2014-01-22', '2014-01-22 00:00:00', 'How to find the minimum and maximum of three integers', NULL, NULL, NULL, NULL, 'Bruce Wernick', NULL),
(233, '2014-01-23', '2014-01-23 00:00:00', 'How to check if a program is installed using its program identifier', 'Peter Johnson', 'http://www.delphidabbler.com/', NULL, NULL, 'Michael Rockett', NULL),
(234, '2014-05-22', '2014-05-29 16:48:00', 'Convert strings to character sets and vice versa', 'Thomas Morschhaeuser', NULL, NULL, NULL, 'Thomas Morschhaeuser', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
