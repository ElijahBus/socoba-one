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
 * Description: Socoba first script, setting up tables structure
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

-- --------------------------------------------------------


--
-- Indexes for table students 
--

ALTER TABLE students
	ADD FOREIGN KEY (Class_id) REFERENCES classes(Class_id);

ALTER TABLE students 
	ADD FOREIGN KEY (Bed_id) REFERENCES beds(Bed_id);


-- --------------------------------------------------------

--
-- Indexes for table student_payments 
--

ALTER TABLE student_payments 
	ADD FOREIGN KEY (Student_id) REFERENCES students(Student_id);

ALTER TABLE student_payments 
	ADD FOREIGN KEY (Pay_id) REFERENCES payments(Pay_id);

-- --------------------------------------------------------

--
-- Indexes for table beds 
--

ALTER TABLE beds
	ADD FOREIGN KEY (Room_id) REFERENCES rooms(Room_id);

-- --------------------------------------------------------

--
-- Indexes for table rooms 
--

ALTER TABLE rooms
	ADD FOREIGN KEY (Dorm_id) REFERENCES dorms(Dorm_id);

-- --------------------------------------------------------

-- 
-- Indexes for table classes 
--

ALTER TABLE classes
	ADD Dep_id varchar(50) NOT NULL;

ALTER TABLE classes
	ADD FOREIGN KEY (Dep_id) REFERENCES departments(Dep_id);

-- --------------------------------------------------------

--
-- Indexes for table departments 
--

ALTER TABLE departments
	ADD Fac_id varchar(50) NOT NULL;

ALTER TABLE departments 
	ADD FOREIGN KEY (Fac_id) REFERENCES faculties(Fac_id);



COMMIT;

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
