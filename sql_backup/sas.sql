-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2019 at 08:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sas`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrangement`
--

CREATE TABLE `arrangement` (
  `room_no` varchar(11) NOT NULL,
  `c1_roll_no` int(11) NOT NULL,
  `c1_name` varchar(20) NOT NULL,
  `c2_roll_no` int(11) NOT NULL,
  `c2_name` varchar(20) NOT NULL,
  `c3_roll_no` int(11) NOT NULL,
  `c3_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user', '12345'),
('username', 'password'),
('vishnu', 'vishnu');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(11) NOT NULL,
  `benches` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `benches`) VALUES
(12, 30),
(201, 18),
(202, 15),
(411, 15),
(412, 14),
(413, 16),
(422, 15),
(502, 14),
(555, 20),
(601, 14),
(603, 15),
(604, 17),
(605, 13);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `reg_no` varchar(20) NOT NULL,
  `rollno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`reg_no`, `rollno`, `name`, `branch`) VALUES
('1001', 1, 'Aabdul Fardeen', 's1cs'),
('1002', 2, 'Abdulla Hashim', 's1cs'),
('1003', 3, 'Aiwi Das', 's1cs'),
('1004', 4, 'Akash K V', 's1cs'),
('1005', 5, 'Alfina Roshni', 's1cs'),
('1006', 6, 'Amal Shaheer', 's1cs'),
('1007', 7, 'Anakha B S', 's1cs'),
('1008', 8, 'Ananda Krishnan', 's1cs'),
('1009', 9, 'Ann Mary Vincent', 's1cs'),
('1010', 10, 'Anu Muraleedharan', 's1cs'),
('1011', 11, 'Anusree Genga Nair', 's1cs'),
('1012', 12, 'Aparna A Kumar', 's1cs'),
('1013', 13, 'Aparna V S', 's1cs'),
('1014', 14, 'Archana K Prasad', 's1cs'),
('1015', 15, 'Ashmi P K', 's1cs'),
('1016', 16, 'Aswathi B', 's1cs'),
('1017', 17, 'Avitha Ashok', 's1cs'),
('1018', 18, 'Faiz Anvar', 's1cs'),
('1019', 19, 'Fathima Riswana', 's1cs'),
('1020', 20, 'Gouri Sandesh', 's1cs'),
('1021', 21, 'Greeshma C P', 's1cs'),
('1022', 22, 'Harikrishnan S', 's1cs'),
('1023', 23, 'Haritha Shaji', 's1cs'),
('1024', 24, 'Hiba Nourin', 's1cs'),
('1025', 25, 'Jayakrishnan S', 's1cs'),
('1026', 26, 'Jeevan Jayakumar', 's1cs'),
('1027', 27, 'Jibi Thomas', 's1cs'),
('1028', 28, 'Joyal Francis', 's1cs'),
('1029', 29, 'Karthik S', 's1cs'),
('1030', 30, 'Keerthi A M', 's1cs'),
('1031', 31, 'Krishnalatha G', 's1cs'),
('1032', 32, 'Krishnapriya P R', 's1cs'),
('1033', 33, 'Manjusha K', 's1cs'),
('1034', 34, 'Manu M P', 's1cs'),
('1035', 35, 'Mohd. Ajmal', 's1cs'),
('1036', 36, 'Nandakrishnan B', 's1cs'),
('1037', 37, 'Navomi Nixon', 's1cs'),
('1038', 38, 'Nayana B S', 's1cs'),
('1039', 39, 'Nibin K R', 's1cs'),
('1040', 40, 'Nibin Raj R', 's1cs'),
('1041', 41, 'Nihana Nizar', 's1cs'),
('1042', 42, 'Niranjanan T', 's1cs'),
('1043', 43, 'Parvathy K S', 's1cs'),
('1044', 44, 'R Varsha Vinod', 's1cs'),
('1045', 45, 'Reshmi Mohan', 's1cs'),
('1046', 46, 'Reuben Jos', 's1cs'),
('1047', 47, 'Rishikesh S Pillai', 's1cs'),
('1048', 48, 'Rohini Udayakumar', 's1cs'),
('1049', 49, 'Sangeeth Subhash', 's1cs'),
('1050', 50, 'Sanjeev Shaji', 's1cs'),
('1051', 51, 'Sijomon S', 's1cs'),
('1052', 52, 'Sreelakshmi K A', 's1cs'),
('1053', 53, 'Sreelekshmi C J', 's1cs'),
('1054', 54, 'Sruthy S Nair', 's1cs'),
('1055', 55, 'Steve Francis', 's1cs'),
('1056', 56, 'Vighnesh D', 's1cs'),
('1057', 57, 'Vimal Varghese', 's1cs'),
('1058', 58, 'Vishnupriya K S', 's1cs'),
('1059', 59, 'Yadhukrishnan P M', 's1cs'),
('1060', 1, 'Adarsh S S', 's1ec'),
('1061', 2, 'Akhil P B', 's1ec'),
('1062', 3, 'Akshay K P', 's1ec'),
('1063', 4, 'Aloysius Alexander', 's1ec'),
('1064', 5, 'Ann Wilfred', 's1ec'),
('1065', 6, 'Arunesh S A', 's1ec'),
('1066', 7, 'Arunima U', 's1ec'),
('1067', 8, 'Ashik Biju', 's1ec'),
('1068', 9, 'Ashik Shanavas', 's1ec'),
('1069', 10, 'Ashish Sebastian', 's1ec'),
('1070', 11, 'Athira Thilak', 's1ec'),
('1071', 12, 'Athulya Gopakumar', 's1ec'),
('1072', 13, 'Bastin Babu', 's1ec'),
('1073', 14, 'Devika P S', 's1ec'),
('1074', 15, 'Gokul Hari', 's1ec'),
('1075', 16, 'Harikrishna U', 's1ec'),
('1076', 17, 'Krishnakripa K R', 's1ec'),
('1077', 18, 'Maimuna', 's1ec'),
('1078', 19, 'Midhul K Joshi', 's1ec'),
('1079', 20, 'Mohd. Riyan', 's1ec'),
('1080', 21, 'Pranav C Vinayan', 's1ec'),
('1081', 22, 'Sangeetha Krishnan', 's1ec'),
('1082', 23, 'Sanitha N S', 's1ec'),
('1083', 24, 'Sivakumar T R', 's1ec'),
('1084', 1, 'Ajay Krishnan', 's1eee'),
('1085', 2, 'Akshaya S', 's1eee'),
('1086', 3, 'Amala P Xavier', 's1eee'),
('1087', 4, 'Anjaly L', 's1eee'),
('1088', 5, 'Anoob Suresh', 's1eee'),
('1089', 6, 'Arjun A', 's1eee'),
('1090', 7, 'Asish Jolly', 's1eee'),
('1091', 8, 'Dayal Chandran', 's1eee'),
('1092', 9, 'Dennis Davis', 's1eee'),
('1093', 10, 'Devapriyan P R', 's1eee'),
('1094', 11, 'Friya Francies', 's1eee'),
('1095', 12, 'Jineesha S', 's1eee'),
('1096', 13, 'Krishnaraj R A', 's1eee'),
('1097', 14, 'Leo Johnson', 's1eee'),
('1098', 15, 'Milan T J', 's1eee'),
('1099', 16, 'Rupak S Pillai', 's1eee'),
('1100', 17, 'Sandra Anil', 's1eee'),
('1101', 18, 'Sarathchandran K T', 's1eee'),
('1102', 19, 'Sneha P', 's1eee'),
('1103', 20, 'Sradha K Viji', 's1eee'),
('1104', 21, 'Sreeprasad S', 's1eee'),
('1105', 22, 'Thejus P', 's1eee'),
('1106', 23, 'Vyshak Mohan', 's1eee'),
('1107', 24, 'Yedhu Krishnan', 's1eee'),
('1108', 1, 'Aashli Anoop', 's3cs'),
('1109', 2, 'Aathira T A', 's3cs'),
('1110', 3, 'Abdul Muksith', 's3cs'),
('1111', 4, 'Aisha S Methor', 's3cs'),
('1112', 5, 'Ajith P Poulose', 's3cs'),
('1113', 6, 'Ajith Shine', 's3cs'),
('1114', 7, 'Akhil P Jose', 's3cs'),
('1115', 8, 'Amal Chander S', 's3cs'),
('1116', 9, 'Amal Raj', 's3cs'),
('1117', 10, 'Amal Thankachan', 's3cs'),
('1118', 11, 'Anakha V S', 's3cs'),
('1119', 12, 'Anandhu G R', 's3cs'),
('1120', 13, 'Ananthakrishnan A', 's3cs'),
('1121', 14, 'Ananthu H', 's3cs'),
('1122', 15, 'Ananthu M V', 's3cs'),
('1123', 16, 'Aryamol Thampi', 's3cs'),
('1124', 17, 'Asna Shihab', 's3cs'),
('1125', 18, 'Aswin Aravind', 's3cs'),
('1126', 19, 'Aswin M M', 's3cs'),
('1127', 20, 'Aswin S', 's3cs'),
('1128', 21, 'Biya Mathew', 's3cs'),
('1129', 22, 'Christin C P', 's3cs'),
('1130', 23, 'Devaraj P V', 's3cs'),
('1131', 24, 'Dinil Raj', 's3cs'),
('1132', 25, 'Gifteena C T', 's3cs'),
('1133', 26, 'Gopika C Laiju', 's3cs'),
('1134', 27, 'Jasnamol M J', 's3cs'),
('1135', 28, 'Jerin Varghese', 's3cs'),
('1136', 29, 'Kurup Manish Manoj', 's3cs'),
('1137', 30, 'Lekshmi S Anil', 's3cs'),
('1138', 31, 'Ligma K', 's3cs'),
('1139', 32, 'Megha Manoj', 's3cs'),
('1140', 33, 'Meghama M S', 's3cs'),
('1141', 34, 'Muhd. Zain', 's3cs'),
('1142', 35, 'Neeraj M R', 's3cs'),
('1143', 36, 'Rahuldev P A', 's3cs'),
('1144', 37, 'Rini V Rajan', 's3cs'),
('1145', 38, 'Sachin Jayaraj', 's3cs'),
('1146', 39, 'Sanjay Jayaraj', 's3cs'),
('1147', 40, 'Sanoop S', 's3cs'),
('1148', 41, 'Shibili Favas', 's3cs'),
('1149', 42, 'Sidharth Sabu', 's3cs'),
('1150', 43, 'Silpa Renjith', 's3cs'),
('1151', 44, 'Sooraj Krishna', 's3cs'),
('1152', 45, 'Sreekala Rameshan', 's3cs'),
('1153', 46, 'Sruthi P M', 's3cs'),
('1154', 47, 'Unnikrishnan R', 's3cs'),
('1155', 1, 'Abin Cherian', 's3ec'),
('1156', 2, 'Aiswarya S', 's3ec'),
('1157', 3, 'Akhil Prakash', 's3ec'),
('1158', 4, 'Akshara C R', 's3ec'),
('1159', 5, 'Akshay A U', 's3ec'),
('1160', 6, 'Aliya T', 's3ec'),
('1161', 7, 'Alwyn Jose', 's3ec'),
('1162', 8, 'Amrutha K S', 's3ec'),
('1163', 9, 'Amrutha Sunil', 's3ec'),
('1164', 10, 'Anandhu M A', 's3ec'),
('1165', 11, 'Anandu C S', 's3ec'),
('1166', 12, 'Aneena Francis', 's3ec'),
('1167', 13, 'Aswin B', 's3ec'),
('1168', 14, 'Athira V S', 's3ec'),
('1169', 15, 'Athul Raj', 's3ec'),
('1170', 16, 'Meera S Kumar', 's3ec'),
('1171', 17, 'Muhd. Thamim', 's3ec'),
('1172', 18, 'Nandakumar P V', 's3ec'),
('1173', 19, 'Shafna Sherin', 's3ec'),
('1174', 20, 'Shahsadhi K S', 's3ec'),
('1175', 21, 'Sreelakshmi B', 's3ec'),
('1176', 22, 'Sreelakshmi J', 's3ec'),
('1177', 23, 'Sreelakshmi R', 's3ec'),
('1178', 24, 'Sreeraj Senan', 's3ec'),
('1179', 25, 'Treesa Thomas', 's3ec'),
('1180', 26, 'Vinduja V Nair', 's3ec'),
('1181', 1, 'Adarsh S', 's3eee'),
('1182', 2, 'Ajmal Jaleel', 's3eee'),
('1183', 3, 'Anagha Jamini', 's3eee'),
('1184', 4, 'Anainika A', 's3eee'),
('1185', 5, 'Anandu Prasad', 's3eee'),
('1186', 6, 'Anil Raj', 's3eee'),
('1187', 7, 'Anjali K J', 's3eee'),
('1188', 8, 'Anuvind Shaji', 's3eee'),
('1189', 9, 'Archa Lakshmi', 's3eee'),
('1190', 10, 'Archana Vasu', 's3eee'),
('1191', 11, 'Aswathi Vishnu', 's3eee'),
('1192', 12, 'Aswin K E', 's3eee'),
('1193', 13, 'Aswin Krishna', 's3eee'),
('1194', 14, 'Darsana Sreenivas', 's3eee'),
('1195', 15, 'Faiz Muhammad', 's3eee'),
('1196', 16, 'Gayathri Belraj', 's3eee'),
('1197', 17, 'Maria Treesa', 's3eee'),
('1198', 18, 'N Muraleekrishnan', 's3eee'),
('1199', 19, 'Nimmy Abraham', 's3eee'),
('1200', 20, 'P Gokuljith', 's3eee'),
('1201', 21, 'Revathy Chandran', 's3eee'),
('1202', 22, 'Shuhaib K S', 's3eee'),
('1203', 23, 'Sujith Kumar', 's3eee'),
('1204', 24, 'Thasleema', 's3eee'),
('1205', 25, 'Veena Venu', 's3eee'),
('1206', 26, 'Vidhu V', 's3eee'),
('1207', 27, 'Vishnu K B', 's3eee'),
('1208', 28, 'Vyshakh V R', 's3eee'),
('1209', 1, 'Abhijith P', 's5csa'),
('1210', 2, 'Adarsh E N', 's5csa'),
('1211', 3, 'Akhila V Raju', 's5csa'),
('1212', 4, 'Aldhern Lopez', 's5csa'),
('1213', 5, 'Anandhakrishnan M', 's5csa'),
('1214', 6, 'Ancy M', 's5csa'),
('1215', 7, 'Anu Madhavan', 's5csa'),
('1216', 8, 'Arsha P M', 's5csa'),
('1217', 9, 'Arundathi S', 's5csa'),
('1218', 10, 'Athulya K S', 's5csa'),
('1219', 11, 'Duaet Joel', 's5csa'),
('1220', 12, 'Issac Paul', 's5csa'),
('1221', 13, 'Jayalakshmi', 's5csa'),
('1222', 14, 'Juraij Bin', 's5csa'),
('1223', 15, 'Krishna Ramesh', 's5csa'),
('1224', 16, 'Lakshmi Vandana', 's5csa'),
('1225', 17, 'Libiya V B', 's5csa'),
('1226', 18, 'Nadeem', 's5csa'),
('1227', 19, 'Nanda Kishore', 's5csa'),
('1228', 20, 'Nikitha Tom', 's5csa'),
('1229', 21, 'Rahul Hari', 's5csa'),
('1230', 22, 'Saife Mon', 's5csa'),
('1231', 23, 'Sandra Babu', 's5csa'),
('1232', 24, 'Sanjali K U', 's5csa'),
('1233', 25, 'Sharanya M', 's5csa'),
('1234', 26, 'Sreelakshmi R', 's5csa'),
('1235', 27, 'Sulfath', 's5csa'),
('1236', 28, 'Syama P B', 's5csa'),
('1237', 29, 'Varghese Francis', 's5csa'),
('1238', 30, 'Varghese U', 's5csa'),
('1239', 31, 'Vishnu', 's5csa'),
('1240', 32, 'Yadhukrishnan', 's5csa'),
('1241', 33, 'Aswin Kumar', 's5csa'),
('1242', 34, 'Shilpa A S', 's5csa'),
('1243', 35, 'Aleena M', 's5csa'),
('1244', 1, 'Abhijith K D', 's5csb'),
('1245', 2, 'Abraham N T', 's5csb'),
('1246', 3, 'Ajith M V', 's5csb'),
('1247', 4, 'Akshay K P', 's5csb'),
('1248', 5, 'Amala Brijith', 's5csb'),
('1249', 6, 'Ananthu B', 's5csb'),
('1250', 7, 'Animol C P', 's5csb'),
('1251', 8, 'Anjali Anilkumar', 's5csb'),
('1252', 9, 'Anjali R', 's5csb'),
('1253', 10, 'Aparna T S', 's5csb'),
('1254', 11, 'Aromal Anil', 's5csb'),
('1255', 12, 'Arun T P', 's5csb'),
('1256', 13, 'Athira M A', 's5csb'),
('1257', 14, 'Ebin J S', 's5csb'),
('1258', 15, 'Geethumol G', 's5csb'),
('1259', 16, 'Gouthaman K G', 's5csb'),
('1260', 17, 'Jayakrishnan', 's5csb'),
('1261', 18, 'Jiju Sebastian', 's5csb'),
('1262', 19, 'Kavya L', 's5csb'),
('1263', 20, 'Krishnanjali P', 's5csb'),
('1264', 21, 'Lakshmipriya R', 's5csb'),
('1265', 22, 'Meryl Ann', 's5csb'),
('1266', 23, 'Miya Lal kumar', 's5csb'),
('1267', 24, 'Muhzin Nassar', 's5csb'),
('1268', 25, 'Nandakishor', 's5csb'),
('1269', 26, 'Nandana C K', 's5csb'),
('1270', 27, 'Pavizham Antony', 's5csb'),
('1271', 28, 'Rahul Mahesh', 's5csb'),
('1272', 29, 'Salu K L', 's5csb'),
('1273', 30, 'Sandra John', 's5csb'),
('1274', 31, 'Sethulekshmi', 's5csb'),
('1275', 32, 'Sneha M P', 's5csb'),
('1276', 33, 'Stebin C X', 's5csb'),
('1277', 34, 'Syama Anil', 's5csb'),
('1278', 35, 'Umamaheshwari', 's5csb'),
('1279', 36, 'Varsha M P', 's5csb'),
('1280', 37, 'Vrinda M K', 's5csb'),
('1281', 1, 'Abhirami Babu', 's5ec'),
('1282', 2, 'Abhirami P B', 's5ec'),
('1283', 3, 'Akshay N S', 's5ec'),
('1284', 4, 'Alphin George', 's5ec'),
('1285', 5, 'Amal Krishnan', 's5ec'),
('1286', 6, 'Anagha B', 's5ec'),
('1287', 7, 'Anagha Raj', 's5ec'),
('1288', 8, 'Ananthu Joshylal', 's5ec'),
('1289', 9, 'Ananthu R Krishnan', 's5ec'),
('1290', 10, 'Anjali S', 's5ec'),
('1291', 11, 'Anjana Viswanath', 's5ec'),
('1292', 12, 'Anuja A', 's5ec'),
('1293', 13, 'Anupama M T', 's5ec'),
('1294', 14, 'Ardra Mohan', 's5ec'),
('1295', 15, 'Arjun Vinod', 's5ec'),
('1296', 16, 'Arun Vasudevan', 's5ec'),
('1297', 17, 'Aryamol K R', 's5ec'),
('1298', 18, 'Ashly Joseph', 's5ec'),
('1299', 19, 'Aswathy Jeevan', 's5ec'),
('1300', 20, 'Aswenth Phalgunan', 's5ec'),
('1301', 21, 'Chandini Raj', 's5ec'),
('1302', 22, 'Fathima Shifna', 's5ec'),
('1303', 23, 'Isabbla Neethu', 's5ec'),
('1304', 24, 'Jisha Dev', 's5ec'),
('1305', 25, 'Keshav Nair', 's5ec'),
('1306', 26, 'Nayanthara', 's5ec'),
('1307', 27, 'Prajish P', 's5ec'),
('1308', 28, 'Rajanya C R', 's5ec'),
('1309', 29, 'Renjith R', 's5ec'),
('1310', 30, 'S Reshma', 's5ec'),
('1311', 31, 'Sandra S', 's5ec'),
('1312', 32, 'Shahana N', 's5ec'),
('1313', 33, 'Sruthi Valsaraj', 's5ec'),
('1314', 34, 'Swathi S', 's5ec'),
('1315', 35, 'Tom Antony', 's5ec'),
('1316', 36, 'Unnimaya V S', 's5ec'),
('1317', 37, 'Vishn P V', 's5ec'),
('1318', 38, 'Vishnupriya V', 's5ec'),
('1319', 1, 'Adarsh K S', 's5eee'),
('1320', 2, 'Adhil Krishna G', 's5eee'),
('1321', 3, 'Aiswarya K E', 's5eee'),
('1322', 4, 'Ajai Chandran', 's5eee'),
('1323', 5, 'Al Juvairiya', 's5eee'),
('1324', 6, 'Aleena P Xavier', 's5eee'),
('1325', 7, 'Amal Albert', 's5eee'),
('1326', 8, 'Aseeja Assi', 's5eee'),
('1327', 9, 'Ashna John', 's5eee'),
('1328', 10, 'Baneesha Babu', 's5eee'),
('1329', 11, 'Bibin Varghese', 's5eee'),
('1330', 12, 'Dheeraj C', 's5eee'),
('1331', 13, 'Dilshad K S', 's5eee'),
('1332', 14, 'Jafis M', 's5eee'),
('1333', 15, 'Jithin Raj', 's5eee'),
('1334', 16, 'Josily Susan', 's5eee'),
('1335', 17, 'Krishnapriya A R', 's5eee'),
('1336', 18, 'Krishnendhu P K', 's5eee'),
('1337', 19, 'Lakshmi K S', 's5eee'),
('1338', 20, 'Lakshmi Manoj', 's5eee'),
('1339', 21, 'Marycitta', 's5eee'),
('1340', 22, 'Midhum Mamachan', 's5eee'),
('1341', 23, 'Muhd. Jamsheer', 's5eee'),
('1342', 24, 'Muhsin N', 's5eee'),
('1343', 25, 'Najiya N', 's5eee'),
('1344', 26, 'Niranjan Sarma P', 's5eee'),
('1345', 27, 'Richard Antony', 's5eee'),
('1346', 28, 'Santhikrishna', 's5eee'),
('1347', 29, 'Sourav B Ajith', 's5eee'),
('1348', 30, 'Sreeraj Prabhu', 's5eee'),
('1349', 31, 'Vishnu Prasad', 's5eee'),
('1350', 32, 'Vishnu S', 's5eee'),
('1351', 1, 'Aarcha E S', 's7cs'),
('1352', 2, 'Abin Varghese', 's7cs'),
('1353', 3, 'Aditya Francis', 's7cs'),
('1354', 4, 'Aiswarya J', 's7cs'),
('1355', 5, 'Ajay Krishnan', 's7cs'),
('1356', 6, 'Ajmi Nazar V', 's7cs'),
('1357', 7, 'Akshaya Rajgopal', 's7cs'),
('1358', 8, 'Amal Anand C', 's7cs'),
('1359', 9, 'Anand S Krishnan', 's7cs'),
('1360', 10, 'Anina Henry', 's7cs'),
('1361', 11, 'Anjali Krishna C M', 's7cs'),
('1362', 12, 'Anjana P', 's7cs'),
('1363', 13, 'Anjitha Sebastian', 's7cs'),
('1364', 14, 'Anju Ignatious', 's7cs'),
('1365', 15, 'Anju S', 's7cs'),
('1366', 16, 'Anupriya P V', 's7cs'),
('1367', 17, 'Arya Murali', 's7cs'),
('1368', 18, 'Ashif Ali', 's7cs'),
('1369', 19, 'Ashik A', 's7cs'),
('1370', 20, 'Ashiya Mariya', 's7cs'),
('1371', 21, 'Ashna Yesudas', 's7cs'),
('1372', 22, 'Athira Gopinath', 's7cs'),
('1373', 23, 'Athira P S', 's7cs'),
('1374', 24, 'Athira S Pillay', 's7cs'),
('1375', 25, 'Ayswarya Vijayakumar', 's7cs'),
('1376', 26, 'Bhagya Lakshmi S', 's7cs'),
('1377', 27, 'Derlin Augustine', 's7cs'),
('1378', 28, 'Dinsha K', 's7cs'),
('1379', 29, 'Divya N J', 's7cs'),
('1380', 30, 'Divya Deepu', 's7cs'),
('1381', 31, 'Fijna', 's7cs'),
('1382', 32, 'Gokul', 's7cs'),
('1383', 33, 'Gopika M A', 's7cs'),
('1384', 34, 'Gopika Prasad', 's7cs'),
('1385', 35, 'Harikrishnan P V', 's7cs'),
('1386', 36, 'Jomol Josemon', 's7cs'),
('1387', 37, 'Jwala Jayan', 's7cs'),
('1388', 38, 'K A Ahsana', 's7cs'),
('1389', 39, 'K S Sreeparvathi', 's7cs'),
('1390', 40, 'Kannan A M', 's7cs'),
('1391', 41, 'Krishnaraj Jayadan', 's7cs'),
('1392', 42, 'Lakshmi K S', 's7cs'),
('1393', 43, 'Madhav Vipin', 's7cs'),
('1394', 44, 'Muhd. Farris', 's7cs'),
('1395', 45, 'Muhd. Bilal', 's7cs'),
('1396', 46, 'Muhd. Aslam', 's7cs'),
('1397', 47, 'Namitha Murali', 's7cs'),
('1398', 48, 'Nijitha P', 's7cs'),
('1399', 49, 'Nithin t Thomas', 's7cs'),
('1400', 50, 'Peeyush K', 's7cs'),
('1401', 51, 'Pooja Krishna', 's7cs'),
('1402', 52, 'Praveena P', 's7cs'),
('1403', 53, 'Ramlal R', 's7cs'),
('1404', 54, 'Raseena Sadhique', 's7cs'),
('1405', 55, 'Salma Gafoor', 's7cs'),
('1406', 56, 'Sanjay Kumar', 's7cs'),
('1407', 57, 'Shaikha Nishar', 's7cs'),
('1408', 58, 'Shalima Shajahan', 's7cs'),
('1409', 59, 'Shilpa K Shibu', 's7cs'),
('1410', 60, 'Sibin V S', 's7cs'),
('1411', 61, 'Silja George', 's7cs'),
('1412', 62, 'Silpa M Unni', 's7cs'),
('1413', 63, 'Sneha Joseph', 's7cs'),
('1414', 64, 'Swathi Sudarshanan', 's7cs'),
('1415', 65, 'Mintu Cleetus', 's7cs'),
('1416', 66, 'Vimala Antony', 's7cs'),
('1417', 67, 'Vishnu P', 's7cs'),
('1418', 68, 'Vyshnav K S', 's7cs'),
('1419', 69, 'Yadhu Krishnan', 's7cs'),
('1420', 1, 'Abhijith Kumar K', 's7ec'),
('1421', 2, 'Abhishek Pavithran', 's7ec'),
('1422', 3, 'Akhila Ashokan', 's7ec'),
('1423', 4, 'Akhitha Anil', 's7ec'),
('1424', 5, 'Amal Dev S', 's7ec'),
('1425', 6, 'Amala Merin K J', 's7ec'),
('1426', 7, 'Amitha Anand', 's7ec'),
('1427', 8, 'Anagha S', 's7ec'),
('1428', 9, 'Anandhu M S', 's7ec'),
('1429', 10, 'Ananthu K S', 's7ec'),
('1430', 11, 'Aneesha Rahmath', 's7ec'),
('1431', 12, 'Anfas S', 's7ec'),
('1432', 13, 'Anfeena Navas', 's7ec'),
('1433', 14, 'Anitha K A', 's7ec'),
('1434', 15, 'Anjali S', 's7ec'),
('1435', 16, 'Anjaly K', 's7ec'),
('1436', 17, 'Anoop S Kumar', 's7ec'),
('1437', 18, 'Ansy Rahman', 's7ec'),
('1438', 19, 'Archana N Kamath', 's7ec'),
('1439', 20, 'Archana Rajan', 's7ec'),
('1440', 21, 'Ardra Santosh', 's7ec'),
('1441', 22, 'Arjun B', 's7ec'),
('1442', 23, 'Arya M Nair', 's7ec'),
('1443', 24, 'Arya Rajendran', 's7ec'),
('1444', 25, 'Ashik Nizar', 's7ec'),
('1445', 26, 'Aswathy S', 's7ec'),
('1446', 27, 'Athira T S', 's7ec'),
('1447', 28, 'Athulya K S', 's7ec'),
('1448', 29, 'D S Gowri Sankar', 's7ec'),
('1449', 30, 'Deepthi N', 's7ec'),
('1450', 31, 'Devi Prasad', 's7ec'),
('1451', 32, 'Devika P R', 's7ec'),
('1452', 33, 'Divya K R', 's7ec'),
('1453', 34, 'Drisya C', 's7ec'),
('1454', 35, 'Fathima Shabnam', 's7ec'),
('1455', 36, 'Indulekha K J', 's7ec'),
('1456', 37, 'James A D', 's7ec'),
('1457', 38, 'Juby John', 's7ec'),
('1458', 39, 'Karthika Sabu', 's7ec'),
('1459', 40, 'Lakshmi Manoharan', 's7ec'),
('1460', 41, 'Midhun T', 's7ec'),
('1461', 42, 'Muhsina N', 's7ec'),
('1462', 43, 'Nidhin Somanath', 's7ec'),
('1463', 44, 'Nikhil S', 's7ec'),
('1464', 45, 'Nitha O S', 's7ec'),
('1465', 46, 'Nithin Nandakumar', 's7ec'),
('1466', 47, 'Praveena P', 's7ec'),
('1467', 48, 'Rahul Santhosh', 's7ec'),
('1468', 49, 'Renjitha R', 's7ec'),
('1469', 50, 'Rohini E S', 's7ec'),
('1470', 51, 'S Balakrishnan', 's7ec'),
('1471', 52, 'Sachin B Krishna', 's7ec'),
('1472', 53, 'Sagin Alosious', 's7ec'),
('1473', 54, 'Sajin Raj S', 's7ec'),
('1474', 55, 'Samrena R', 's7ec'),
('1475', 56, 'Shahid Ali P', 's7ec'),
('1476', 57, 'Shanu N P', 's7ec'),
('1477', 58, 'Shejin Shaji', 's7ec'),
('1478', 59, 'Silpa A V', 's7ec'),
('1479', 60, 'Sona T S', 's7ec'),
('1480', 61, 'Surya Sundar A P', 's7ec'),
('1481', 62, 'Vivek Jeejo', 's7ec'),
('1482', 1, 'Aarathi Nair', 's7eee'),
('1483', 2, 'Abijith K S', 's7eee'),
('1484', 3, 'Adil Ali', 's7eee'),
('1485', 4, 'Aginesh', 's7eee'),
('1486', 5, 'Ahammed Haris', 's7eee'),
('1487', 6, 'Ajmal A', 's7eee'),
('1488', 7, 'Akshay Kumar S', 's7eee'),
('1489', 8, 'Akshay Ravi', 's7eee'),
('1490', 9, 'Amala K Anil', 's7eee'),
('1491', 10, 'Amala M', 's7eee'),
('1492', 11, 'Ananda Krishnan', 's7eee'),
('1493', 12, 'Ananthu S', 's7eee'),
('1494', 13, 'Aneesha Mukundan', 's7eee'),
('1495', 14, 'Anju Tomichan', 's7eee'),
('1496', 15, 'Aparna S J', 's7eee'),
('1497', 16, 'Arundathy P G', 's7eee'),
('1498', 17, 'Arya Gopakumar', 's7eee'),
('1499', 18, 'Aswathy Devarajan', 's7eee'),
('1500', 19, 'Aswini Renj', 's7eee'),
('1501', 20, 'Athira K A', 's7eee'),
('1502', 21, 'Cijo George', 's7eee'),
('1503', 22, 'Dony Jojo', 's7eee'),
('1504', 23, 'Fathima Safaria', 's7eee'),
('1505', 24, 'Glenvil P Martin', 's7eee'),
('1506', 25, 'Harikrishnan R', 's7eee'),
('1507', 26, 'Inzamam', 's7eee'),
('1508', 27, 'Joshin Thomas', 's7eee'),
('1509', 28, 'Karthik K S', 's7eee'),
('1510', 29, 'Krishna Prasad', 's7eee'),
('1511', 30, 'Lini Johnson', 's7eee'),
('1512', 31, 'Muhd. Shibily', 's7eee'),
('1513', 32, 'Nabina Naushad', 's7eee'),
('1514', 33, 'Nehla K J', 's7eee'),
('1515', 34, 'Praveen K G', 's7eee'),
('1516', 35, 'Rizvin Sherif', 's7eee'),
('1517', 36, 'Sajna S', 's7eee'),
('1518', 37, 'Sanjay K S', 's7eee'),
('1519', 38, 'Sreeram C R', 's7eee'),
('1520', 39, 'Suhail Thaikadan', 's7eee'),
('1521', 40, 'V S Sharafa', 's7eee'),
('1522', 41, 'Vipin E', 's7eee');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sname` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD KEY `login_password_idx` (`password`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`reg_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
