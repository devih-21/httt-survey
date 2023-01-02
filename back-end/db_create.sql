-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: httt_survey
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quescontent`
--

DROP TABLE IF EXISTS `quescontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quescontent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `QuestionContent` varchar(255) DEFAULT NULL,
  `QuestionWeight` float NOT NULL,
  `AnsA` varchar(255) DEFAULT NULL,
  `PersenA` float NOT NULL,
  `AnsB` varchar(255) DEFAULT NULL,
  `PersenB` float NOT NULL,
  `AnsC` varchar(255) DEFAULT NULL,
  `PersenC` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quescontent`
--

LOCK TABLES `quescontent` WRITE;
/*!40000 ALTER TABLE `quescontent` DISABLE KEYS */;
INSERT INTO `quescontent` VALUES (1,'Khi gặp vấn đề về hỏng hóc đồ gia dụng, linh kiện điện tử , bạn sẽ làm gì?',3,'Để đó và đợi thời gian rảnh sẽ mang ra ngoài sửa',0,'Tìm hiểu và mày mò cách sửa chữa nhưng nếu thiếu linh kiện, công cụ thì đành mang ra hàng',0.6,'Cố gắng sửa đến cùng, nếu cần sẵn sàng tìm mua linh kiện, công cụ để sửa',0.9),(2,'Bạn coi trọng, ấn tượng điều gì khi nhìn vào một người',1,' Tiền bạc, quyền lực và địa vị ',0.8,' Ngoại hình, phong cách',0.5,'Tài năng',0),(3,'Ở trong một buổi tiệc, bạn là kiểu người: ',2,' Năng nổ tham gia vào các hoạt động của buổi tiệc, chủ động đi giao lưu với mọi người ',0,'  Né tránh các hoạt động, chỉ tham gia với mục đích không “lạc loài”',0.8,'Tận hưởng không khí buổi tiệc, nhưng không hứng thú với việc giao tiếp cũng như các hoạt động bên lề ',0.5),(4,'Bạn thường xuyên đặt ra mục tiêu, kế hoạch cho bản thân?',3,' Có, luôn lập ra các đầu mục cho những việc cần làm ',0.9,' Không',0,'Chỉ với những mục tiêu lớn',0.5),(5,'Chọn một loại sách-truyện mà bạn ưa thích: ',2,' Tiểu thuyết trinh thám, sách về những câu đố hóc búa ',0.8,' Tiểu thuyết viễn tưởng',0,'Sách dạy về kiến thức kinh tế, chính trị',0.5),(6,'Khi được giao cho một chủ đề theo nhóm để tìm hiểu và thuyết trình, bạn sẽ chọn:',1,' Làm với tư cách thành viên - độc lập tìm hiểu và phân tích vấn đề ',0,'  Làm với vai trò trưởng nhóm - phân công công việc cho các thành viên, thuyết trình',0.8,'NULL',0),(7,'Bạn có cơ hội đăng kí tham gia 1 chuyến đi tham quan, dã ngoại theo chủ đề, bạn sẽ chọn chủ đề',3,' Tham quan các bảo tàng, di tích lịch sử - tìm hiểu về nghệ thuật hoặc lịch sử ',0.5,' Tham quan viện nghiên cứu khoa học, mở mang về kiến thức về thế giới xung quanh ',0.9,'Cắm trại - giao lưu,tìm hiểu về những người cùng tham gia chuyến đi',0),(8,'Chọn câu trả lời đúng nhất với bạn',1,' Ghét những điều quá rập khuôn, thích làm việc dựa trên sự sáng tạo, ý tưởng mới mẻ, độc đá ',0.9,'  Bạn thích làm mọi thứ có trình tự, quy tắc',0,'NULL',0),(9,'Bước vào một căn nhà, điều làm bạn ấn tượng là: ',3,' Những tiện nghi mà căn nhà mang lại, những đồ dùng hiện đại, tối tân ',0,' Cách bài trí căn nhà với những món đồ cổ, những bức tranh mang tính nghệ thuật cao',0.8,'NULL',0),(10,'Trường cần bạn biểu diễn một tiết mục văn nghệ và bạn không ngại biểu diễn trước đám đông, liệu bạn có thể làm được?',3,' Có ',0.7,'  Không',0,'NULL',0),(11,'Khi được giao một công việc bạn sẽ: ',1,' Phân tích kỹ tình hình, khối lượng công việc, khả năng bản thân để từ đó đưa ra các quyết định phù hợp',0,' Tưởng tượng về kết quả, sản phẩm sao cho phải hoành tráng nhất có thể rồi mới bắt đầu thực hiên',0.7,'Có tính toán , ước lượng và rồi đặt ra mục tiêu lớn hơn những gì mình có thể làm được và cố gắng làm mặc dù biết có thể sẽ không thành công',0.5),(12,'Giả dụ bạn có ý tưởng để tạo nên 1 sản phẩm hay ho và muốn thực hiện nó, thì lựa chọn của bạn là: ',1,' Làm một mình từ đầu đến cuối ',0,' Làm việc theo nhóm vì bạn thích cùng làm việc với mọi người và chia sẻ ý tưởng đó ',0.9,' Làm việc theo nhóm để chia sẻ bớt khối lượng công việc',0.6),(13,'Bạn nghĩ sao về các hoạt động xã hội, tình nguyện như: phát áo ấm cho trẻ em\nvùng núi, suất cơm 2000,...:',3,' Không mấy quan tâm ',0,' Tôn trọng, cảm phục những hoạt động và những tham gia ',0.6,'Coi trọng và mong muốn trở thành một phần của các hoạt động đó ',0.9),(14,'Nếu ai đó hỏi bạn cách đi tới một con đường mà bạn biết ',2,' Tôi sẽ chỉ đường thật chi tiết, hoặc vẽ cả đường lên giấy cho họ nếu đường quá\nphức tạp',0.7,' Tôi biết đường nhưng không biết cách chỉ đường cho họ sao cho dễ hiểu',0.4,'NULL',0),(15,'Bạn được phân công là trưởng nhóm 1 bài tập lớn/công việc, bạn sẽ :',3,'Trò chuyện với các thành viên trong nhóm để hiểu họ hơn, sau đó bắt đầu phân chia\ncông việc dựa vào những thông tin bạn có được từ các thành viên đồng thời thường xuyên\nquan tâm các khó khăn, vướng mắc của họ trong quá trình làm việc ',0.9,'Phân tích công việc và chia cho từng thành viên đi kèm với thời hạn ',0.6,'Chia các đầu mục công việc và để các thành viên tự chọn những gì họ thích miễn là\nxong trước hạn',0),(16,'Khi bước vào môi trường mới, bạn sẽ:',1,' Thu mình, lo ngại về mọi thứ xung quanh ',0,' Cởi mở, thích nghi nhanh hơn khi có người bắt chuyện với mình ',0.6,'Chủ động giới thiệu bản thân với mọi người, cởi mở và hòa mình vào môi trường xung quanh',0.9),(17,'Trong trường hợp bạn nhận được đề nghị chuyển tới một thành phố, đất nước\nkhác để sinh sống, học tập với cơ hội tốt hơn và giả sử như cuộc sống của bạn không có nhiều điều phải đắn đo ở hiện tại nếu đi, lựa chọn của bạn là:',1,' Sống trong vùng an toàn, không muốn rời bỏ mảnh đất mình gắn bó ',0,'Chấp nhận lời đề nghị mà không cần phải suy nghĩ nhiều ',0.8,'Đắn đo, sẽ mất nhiều ngày cân nhắc và thực sự chỉ rời đi nếu cơ hội đó là quá tuyệt vời',0.4),(18,'Trong một trò chơi nhiều người hay một ván game online, bạn là kiểu người: ',2,' Muốn thắng bằng được dù có thế nào ',0.9,' Chỉ chơi với mục đích vui vẻ, thư giãn, thắng thua không quan trọng',0,'Tận hưởng trò chơi nhưng kết quả thắng vẫn là mục tiêu quan trọng ',0.6),(19,' Công việc mơ ước của bạn sẽ là:',2,'Làm việc trong giờ hành chính, các công việc đều có quy tắc, hướng dẫn cụ thể ',0.8,' Công việc linh hoạt giờ giấc, yêu cầu tính sáng tạo, mới mẻ',0,' Công việc thế nào cũng được miễn là đem lại sự ổn định',0.5),(20,' Chọn môn học làm bạn hứng thú',3,'  Toán học, tin học ',0.9,' Văn học, lịch sử',0,' Âm nhạc, mỹ thuật',0),(21,'Món quà mà bạn mong muốn nhận được thuộc kiểu: ',1,'  Có thể sử dụng được cho bản thân ',0.9,' Có giá trị về mặt tinh thần, mang tính ý nghĩa, bất ngờ',0,'NULL',0),(22,'Bạn đánh giá về mình qua các bài thi, kỳ thi như thế nào',1,' Hoàn thành bài thi với độ chính xác cao ',0.9,' Thường hay nhầm lẫn, nóng vội gây ảnh hưởng tới kết quả ',0,'Các bước tính toán hoàn toàn đúng nhưng điểm không cao do vấn đề về kiến thức khác ',0.5);
/*!40000 ALTER TABLE `quescontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `QuesContentID` int NOT NULL,
  `StypeTypeID` int NOT NULL,
  `Rate` float NOT NULL,
  `Weight` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKRating921409` (`StypeTypeID`),
  KEY `FKRating895395` (`QuesContentID`),
  CONSTRAINT `FKRating895395` FOREIGN KEY (`QuesContentID`) REFERENCES `quescontent` (`ID`),
  CONSTRAINT `FKRating921409` FOREIGN KEY (`StypeTypeID`) REFERENCES `stypetype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,1,0.9,3),(2,2,1,0.8,1),(3,3,1,0.8,2),(4,4,1,0.9,3),(5,5,1,0.65,2),(6,6,1,0.6,1),(7,7,1,0.7,3),(8,8,1,0.5,1),(9,9,1,0.1,3),(10,10,1,0,3),(11,11,1,0,1),(12,12,1,0.4,1),(13,13,1,0.1,3),(14,14,1,0.3,2),(15,15,1,0.2,3),(16,16,1,0.3,1),(17,17,1,0.3,1),(18,18,1,0.5,2),(19,19,1,0.5,2),(20,20,1,0.6,3),(21,21,1,0.7,1),(22,22,1,0.7,1),(23,1,2,0.6,3),(24,2,2,0.7,1),(25,3,2,0.5,2),(26,4,2,0.5,3),(27,5,2,0.9,2),(28,6,2,0.9,1),(29,7,2,0.9,3),(30,8,2,0.4,1),(31,9,2,0,3),(32,10,2,0,3),(33,11,2,0,1),(34,12,2,0.4,1),(35,13,2,0.1,3),(36,14,2,0.3,2),(37,15,2,0.1,3),(38,16,2,0.4,1),(39,17,2,0.3,1),(40,18,2,0.5,2),(41,19,2,0.6,2),(42,20,2,0.8,3),(43,21,2,0.7,1),(44,22,2,0.8,1),(45,1,3,0.1,3),(46,2,3,0.2,1),(47,3,3,0.3,2),(48,4,3,0.1,3),(49,5,3,0.2,2),(50,6,3,0.2,1),(51,7,3,0,3),(52,8,3,0.8,1),(53,9,3,0.9,3),(54,10,3,0.9,3),(55,11,3,0.9,1),(56,12,3,0.5,1),(57,13,3,0.5,3),(58,14,3,0.3,2),(59,15,3,0.5,3),(60,16,3,0.6,1),(61,17,3,0.3,1),(62,18,3,0.1,2),(63,19,3,0,2),(64,20,3,0,3),(65,21,3,0.1,1),(66,22,3,0.1,1),(67,1,4,0.1,3),(68,2,4,0.3,1),(69,3,4,0,2),(70,4,4,0.4,3),(71,5,4,0.3,2),(72,6,4,0.5,1),(73,7,4,0.1,3),(74,8,4,0,1),(75,9,4,0.3,3),(76,10,4,0.3,3),(77,11,4,0.3,1),(78,12,4,0.8,1),(79,13,4,0.9,3),(80,14,4,0.9,2),(81,15,4,0.8,3),(82,16,4,0.8,1),(83,17,4,0.3,1),(84,18,4,0.3,2),(85,19,4,0.4,2),(86,20,4,0.1,3),(87,21,4,0.2,1),(88,22,4,0.3,1),(89,1,5,0.4,3),(90,2,5,0.6,1),(91,3,5,0,2),(92,4,5,0.8,3),(93,5,5,0.5,2),(94,6,5,0.1,1),(95,7,5,0.1,3),(96,8,5,0.5,1),(97,9,5,0.3,3),(98,10,5,0.2,3),(99,11,5,0.1,1),(100,12,5,0.7,1),(101,13,5,0.5,3),(102,14,5,0.5,2),(103,15,5,0.5,3),(104,16,5,0.8,1),(105,17,5,0.9,1),(106,18,5,0.9,2),(107,19,5,0.5,2),(108,20,5,0.8,3),(109,21,5,0.7,1),(110,22,5,0.8,1),(111,1,6,0.4,3),(112,2,6,0.7,1),(113,3,6,0.3,2),(114,4,6,0.8,3),(115,5,6,0.7,2),(116,6,6,0.7,1),(117,7,6,0.1,3),(118,8,6,0,1),(119,9,6,0.1,3),(120,10,6,0.1,3),(121,11,6,0,1),(122,12,6,0.5,1),(123,13,6,0.5,3),(124,14,6,0.5,2),(125,15,6,0.4,3),(126,16,6,0.5,1),(127,17,6,0.3,1),(128,18,6,0.3,2),(129,19,6,0.9,2),(130,20,6,0.8,3),(131,21,6,0.9,1),(132,22,6,0.8,1);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stypetype`
--

DROP TABLE IF EXISTS `stypetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stypetype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ContentType` varchar(255) DEFAULT NULL,
  `MajorContent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stypetype`
--

LOCK TABLES `stypetype` WRITE;
/*!40000 ALTER TABLE `stypetype` DISABLE KEYS */;
INSERT INTO `stypetype` VALUES (1,'Nhóm Kỹ thuật(Realistic)','Xây dựng – Đại học Xây dựng\nKiến trúc – Đại học Xây dựng\nCơ khí – Đại học Bách Khoa\nKĩ thuật Nông nghiệp – Đại học Nông nghiệp\nKĩ thuật Điện – Đại học Bách Khoa'),(2,'Nhóm Nghiên cứu(Investigative)','Điện tử Viễn thông – HVCN BCVT\nTự động hóa, CNTT - Đại học Bách Khoa\nCông nghệ thực phẩm - Đại học Bách Khoa\nY – Đại học Y Hà Nội\nDược – Đại học Dược HN'),(3,'Nhóm Nghệ thuật (Artistic) ','Mỹ thuật – Đại học Kiến trúc\nĐiện ảnh – Đại học Sân khấu điện ảnh\nNhiếp ảnh nghệ thuật – Đại học Sân Khấu điện ảnh\nÂm nhạc – Học viện Âm nhạc'),(4,'Nhóm Xã hội(Social)','Sư phạm – Đại học Sư phạm\nQuản trị nhân lực – Đại học Thương Mại\nĐiều dưỡng – Đại học Y Hà Nội\nXã hội học – Đại học Khoa học xã hội và Nhân văn'),(5,'Nhóm Kinh Doanh(Enterprising)','Quản trị kinh doanh – Đại học Kinh Tế Quốc Dân\nKinh doanh Quốc tế - Đại học Ngoại thương\nMarketing – Đại học Thương Mại\nTài chính – Học viện Tài chính'),(6,'Nhóm Công Chức (Conventional)','Kế toán – Đại học Kinh tế Quốc dân\nQuản trị rủi ro – Đại học Kinh tế Quốc dân\nHệ thống thông tin – Đại học Bách Khoa\nThuế - Đại học Kinh tế Quốc dân');
/*!40000 ALTER TABLE `stypetype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03  2:42:40
