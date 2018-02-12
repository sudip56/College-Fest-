-- phpMyAdmin SQL Dump
-- version 2.11.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2009 at 10:10 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `collegefest`
--

-- --------------------------------------------------------

--
-- Table structure for table `eventmanagers`
--

CREATE TABLE `eventmanagers` (
  `username` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `event` varchar(30) NOT NULL,
  `dept` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventmanagers`
--

INSERT INTO `eventmanagers` (`username`, `designation`, `event`, `dept`) VALUES
('par', 'Lecturer', 'par', 'par'),
('kasi', 'H.O.D', 'technofest', 'CSIT');

-- --------------------------------------------------------

--
-- Table structure for table `festevents`
--

CREATE TABLE `festevents` (
  `EventID` int(100) NOT NULL auto_increment,
  `Events` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Venue` varchar(100) NOT NULL,
  `Volunteers` varchar(500) NOT NULL,
  PRIMARY KEY  (`EventID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `festevents`
--

INSERT INTO `festevents` (`EventID`, `Events`, `Description`, `Date`, `Venue`, `Volunteers`) VALUES
(19, 'PaperPresentation', '               its a tecnical paper!!!', '2009-06-05', 'JBIT BLOCK-3', 'asas,pradeep'),
(45, 'New event', ' this is new !!', '2010-04-03', 'Hyderabad', 'pradeep,student,');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `fileId` int(100) NOT NULL auto_increment,
  `eventname` varchar(30) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  PRIMARY KEY  (`fileId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fileId`, `eventname`, `filename`, `filetype`, `sender`) VALUES
(6, 'wq', 'photoshop.flv', 'video', 'par'),
(7, 'PaperPresentation', 'Project_Viva_Questions.doc', 'document', 'par'),
(8, 'PaperPresentation', 'Production Planning.doc', 'document', 'par');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studID` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `College` varchar(20) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `contactno` varchar(11) NOT NULL,
  `emailId` varchar(20) NOT NULL,
  `Volunteer` varchar(15) NOT NULL,
  PRIMARY KEY  (`studID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studID`, `Name`, `College`, `Branch`, `contactno`, `emailId`, `Volunteer`) VALUES
('rakesh', 'asas', 'sads', 'dsadas', 'dasdasd', 'sadasds', 'Yes'),
('pradeep', 'pradeep', 'MVSR', 'CSE', '9282668161', 'pra@yahoo.com', 'Yes'),
('huuuu', 'uuuu', 'uuuu', 'uuuu', 'uuuu', 'uuuuu', 'No'),
('jaca', 'jaca', 'jaca', 'jaca', 'jaca', 'jaca', 'Yes'),
('student', 'student', 'tirumala', 'bogaram', '9034342343', 'tirumala@gmail.com', 'Yes'),
('new', 'new', 'new', 'new', '9034453412', 'new@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uname`, `password`, `role`) VALUES
('par', 'par', 'Event Manager'),
('rakesh', 'rakesh', 'Volunteer'),
('pradeep', 'pradeep', 'Volunteer'),
('huuuu', 'huuuu', 'Student'),
('kasi', 'kasi', 'Event Manager'),
('jaca', 'jaca', 'Volunteer'),
('hjk', 'jkhjk', 'Event Manager'),
('student', 'student', 'Volunteer'),
('new', 'new', 'Volunteer');
