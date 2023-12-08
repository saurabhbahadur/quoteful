-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: quot
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `quotdata`
--

DROP TABLE IF EXISTS `quotdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotdata` (
  `id` varchar(36) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotdata`
--

LOCK TABLES `quotdata` WRITE;
/*!40000 ALTER TABLE `quotdata` DISABLE KEYS */;
INSERT INTO `quotdata` VALUES ('07125ca5-8d7f-4417-b680-d64c96d338d5','If you want to be inventive, you have to be willing to fail.','Jeff Bezos'),('18941df8-6080-4366-b5d8-0060b0b5cde2','Every artist was first an amateur.','Ralph Waldo Emerson'),('2a0e9727-603f-4532-94e7-3fe62a1346b6','Its better to own the racecourse then the race horse','Unknown'),('310dec33-a5bd-4bbf-89a1-21d1057b5db5','Cannibals prefer those who have no spines.','Stanislaw Lem'),('37fa1c94-92f7-48b8-aad5-c2ad4129ec3b','I am not a product of my circumstances. I am a product of my decisions.','Stephen Covey, author and businessman'),('3aa94138-bea5-4ab6-9548-aea36d6ed8ed','Careful thinking and hard work will solve nearly all your problems. Try and see for yourself.','Ullery'),('3bc71c1a-0ce8-4fe1-92a1-f9d8d894fd53','Success is not what you have, but who you are.','Bo Bennet, author and entreprenuer'),('41e02653-018a-42cc-872f-7bf47f772f6c','Sow a thought, reap an action; sow an action, reap a habit; sow a habit, reap a character; sow a character, reap a destiny.','Chinese Proverb'),('4e91ba92-8e97-4ab9-878f-15db4e318e2a','It’s easier to ask forgiveness than it is to get permission.','Grace Hopper'),('503250d0-b794-428f-838d-c24a492ea43d','Opportunity is missed by most people because it is dressed in overalls and looks like work','Thomas Edison'),('504ba348-080b-4bfe-9bd3-10366a5421bb','It’s almost always harder to raise capital than you thought it would be, and it always takes longer. So plan for that.','Richard Harroch, Venture Capitalist'),('564c570b-b758-4e1d-b3ba-880acf4dff9f','Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it. I never heard of anyone ever stumbling on something sitting down.','Charles F. Kettering, inventor'),('573ea0ac-c353-4261-8de0-115b5fd977f2','To do great things is difficult; but to command great things is more difficult.','Friedrich Nietzsche'),('6e88f126-5a4e-4989-917a-ea0cba0230ed','A general is just as good or just as bad as the troops under his command make him.','General Douglas MacArthur'),('7391d66f-3b25-4105-bb66-0c06f0d53951','If you want one year of prosperity, grow grain. If you want ten years of prosperity, grow trees. If you want one hundred years of prosperity, grow people.','Chinese Proverb'),('899abca5-8676-4413-8aaf-8f8d0092a964','I never perfected an invention that I did not think about in terms of the service it might give others… I find out what the world needs, then I proceed to invent.','Thomas Edison'),('8b56208f-1224-434b-9d98-f3e703dc5185','The difference between a boss and a leader: a boss says, ‘Go!’ -a leader says, ‘Let’s go!’.','E. M. Kelly'),('8c8a6371-c696-4d11-b268-a8b735d4ed51','I’m not afraid of dying, I’m afraid of not trying.','Jay Z, musician.'),('8d29f243-ab84-4892-bb54-743996056c2f','If you’re not making mistakes, then you’re not making decisions.','Catherine Cook'),('908e9c57-93cd-4f4a-8e48-9ef46668be6d','“I think it’s wrong that only one company makes the game Monopoly.','Steven Wright'),('9d4517cb-2749-45cd-b045-9ee3f788a223','I’m not a businessman. I’m a business, man.','Jay-Z'),('ad5732c1-bb5b-4da7-8765-eac91dac9c6a','It’s easier to ask forgiveness than it is to get permission','Grace Hopper'),('aed65388-a35b-4e07-8ac0-8f984c15fde7','A bad workman blames his tools.','Chinese Proverb'),('b267d677-b898-44dc-84d0-cc0b419791c2','In the modern world of business, it is useless to be a creative, original thinker unless you can also sell what you create.','David Ogilvy'),('d5be259f-60c5-4353-9713-4f75c4b88a92','I learned not to worry so much about the outcome, but to concentrate on the step I was on and to try to do it as perfectly as I could when I was doing it.','Steve Wozniak, Co-Founder of Apple'),('d60642e9-2802-4407-8499-c7858fe654db','Be really picky with your hiring, and hire the absolute best people you possibly can. People are the most important component of almost every business, and attracting the best talent possible is going to make a huge difference.','Peter Berg, founder of October Three'),('f1191f83-89a9-47d9-a207-48425e55fb0b','If you don’t have a competitive advantage','don’t compete.”'),('f4db8f48-a2c3-44d6-98cc-85e85f9e9a51','One can get anything if he is willing to help enough others get what they want.','Zig Ziglar'),('ff492d69-107f-4658-b9bd-4743a5eb980f','Example is not the main thing in influencing other people; it’s the only thing.','Abraham Lincoln');
/*!40000 ALTER TABLE `quotdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 18:56:10
