-- DBeaver
--
-- Host: 127.0.0.1
-- Creation Time: Jul 17, 2019 at 10:56 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.2.19
--


/* 
 * Authors: Elijah Busanga.(elijahbus.ny@gmail.com) ,
 		Christian Kananda. (kanandachristian@gmail.com)
 * Description: Socoba third script, populating tables
 * Vendor:
 * 
*/


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: socoba
--
USE socoba;

--
-- data entry into table faculties
--

INSERT INTO faculties VALUES ('FAC-ST', 'Science and technology');
INSERT INTO faculties VALUES ('FAC-EBS', 'Economic and business studies');
INSERT INTO faculties VALUES ('FAC-LAW', 'Faculty of law');

-- --------------------------------------------------------

--
-- data entry into table department
--

INSERT INTO departments VALUES ('DEP-SC', 'Computer science', 'FAC-ST');
INSERT INTO departments VALUES ('DEP-FIN', 'Finance', 'FAC-EBS');
INSERT INTO departments VALUES ('DEP-ACC', 'Accounting', 'FAC-EBS');
INSERT INTO departments VALUES ('DEP-LAW', 'Department of law', 'FAC-LAW');

-- --------------------------------------------------------

--
-- data entry into table class
--

INSERT INTO classes VALUES ('CL-A', 'Year 1 CS','DEP-SC' );
INSERT INTO classes VALUES ('CL-B', 'Year 2 CS','DEP-SC' );
INSERT INTO classes VALUES ('CL-H', 'Year 1 EBS','DEP-FIN' );
INSERT INTO classes VALUES ('CL-D', 'Year 2 FIN','DEP-FIN' );
INSERT INTO classes VALUES ('CL-E', 'Year 2 ACC','DEP-ACC' );
INSERT INTO classes VALUES ('CL-F', 'Year 1 Law','DEP-LAW' );
INSERT INTO classes VALUES ('CL-G', 'Year 2 Law','DEP-LAW' );
INSERT INTO classes VALUES ('CL-C', 'Year 3 CS','DEP-SC' );

-- --------------------------------------------------------

-- 
-- data entry into table dorms
--

INSERT INTO dorms VALUES ('DORM-1', 'Boys dormitory');
INSERT INTO dorms VALUES ('DORM-2', 'Girls dormitory');

-- --------------------------------------------------------

--
-- data entry into table rooms
--

INSERT INTO rooms VALUES ('ROOM-1', 'First room', 'DORM-1');
INSERT INTO rooms VALUES ('ROOM-2', 'Second room', 'DORM-1');
INSERT INTO rooms VALUES ('ROOM-3', 'Third room', 'DORM-1');
INSERT INTO rooms VALUES ('ROOM-4', 'Fourth room', 'DORM-1');
INSERT INTO rooms VALUES ('ROOM-5', 'Fith room', 'DORM-2');
INSERT INTO rooms VALUES ('ROOM-6', 'Sixth room', 'DORM-2');
INSERT INTO rooms VALUES ('ROOM-7', 'Seventh room', 'DORM-2');
INSERT INTO rooms VALUES ('ROOM-8', 'Eighth room', 'DORM-2');

-- --------------------------------------------------------

--
-- data entry into table beds
--

INSERT INTO beds VALUES ('BED-1', 'ROOM-1', 0);
INSERT INTO beds VALUES ('BED-2', 'ROOM-1', 0);
INSERT INTO beds VALUES ('BED-3', 'ROOM-2', 0);
INSERT INTO beds VALUES ('BED-4', 'ROOM-2', 0);
INSERT INTO beds VALUES ('BED-5', 'ROOM-3', 0);
INSERT INTO beds VALUES ('BED-6', 'ROOM-3', 0);
INSERT INTO beds VALUES ('BED-7', 'ROOM-4', 0);
INSERT INTO beds VALUES ('BED-8', 'ROOM-4', 0);
INSERT INTO beds VALUES ('BED-9', 'ROOM-5', 0);
INSERT INTO beds VALUES ('BED-10', 'ROOM-5', 0);
INSERT INTO beds VALUES ('BED-11', 'ROOM-6', 0);
INSERT INTO beds VALUES ('BED-12', 'ROOM-6', 0);
INSERT INTO beds VALUES ('BED-13', 'ROOM-7', 0);
INSERT INTO beds VALUES ('BED-14', 'ROOM-7', 0);
INSERT INTO beds VALUES ('BED-15', 'ROOM-8', 0);
INSERT INTO beds VALUES ('BED-16', 'ROOM-8', 0);

-- --------------------------------------------------------

-- 
-- data entry into table student
--

INSERT INTO students VALUES ('201920100', 'Elijah Bus.', 'M', '0789347581', 'CL-B', CURDATE(), '.../public/imgages/img.png', CURRENT_DATE() , 1, 'BED-1' );
INSERT INTO students VALUES ('201920111', 'Christian Kan.', 'M', '0789377581', 'CL-B', CURDATE(), '.../public/imgages/img.png', CURRENT_DATE() , 1, 'BED-2' );
INSERT INTO students VALUES ('201920133', 'Arnold Mak.', 'M', '0789347981', 'CL-C', CURDATE(), '.../public/imgages/img.png', CURRENT_DATE() , 1, 'BED-3' );
INSERT INTO students VALUES ('201920155', 'Peter CP.', 'M', '0789347586', 'CL-D', CURDATE(), '.../public/imgages/img.png', CURRENT_DATE() , 1, 'BED-4' );
INSERT INTO students VALUES ('201920166', 'Christian Map.', 'M', '0784547581', 'CL-E', CURDATE(), '.../public/imgages/img.png', CURRENT_DATE() , 1, 'BED-5' );
INSERT INTO students VALUES ('201920177', 'Naomie Banks.', 'F', '0789347231', 'CL-A', CURDATE(), '.../public/imgages/img.png', CURRENT_DATE() , 1, 'BED-16' );

-- --------------------------------------------------------

--
-- data entry into table academic_years
--

INSERT INTO academic_years VALUES (1,'2018-2019');
INSERT INTO academic_years VALUES (2,'2019-2020');
INSERT INTO academic_years VALUES (3,'2019-2020');

-- --------------------------------------------------------

--
-- data entry into table payments 
--

SELECT @acYear := academic_y FROM socoba.academic_years WHERE id = LAST_INSERT_ID();
SET @year_ac = @acYear;
INSERT INTO payments VALUES ('PAY-4', 30000, @year_ac);

-- --------------------------------------------------------

/*
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * ...wait for the last commit */

