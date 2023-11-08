-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wshop_api_store
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB-1~deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wshop_api_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `wshop_api_store`;
--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `shop_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `shop_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES
(1,'Multi-channelled 4thgeneration solution','Velit quia in mollitia reprehenderit neque totam soluta repellendus. Eaque nihil ratione quas doloremque deleniti quo perspiciatis. Quia ullam dignissimos repellat odit porro.'),
(2,'Polarised multi-state capacity','Est et aut deleniti voluptate magnam assumenda qui. Molestiae eligendi et necessitatibus earum. Quo unde voluptate rerum possimus accusantium error dolores. Ipsa autem alias ea est.'),
(3,'Reduced intangible encoding','In reiciendis veniam omnis earum rerum. Aut voluptas id id quo occaecati recusandae. Est voluptas ipsa unde quia et aliquam sunt.'),
(4,'User-centric global frame','Maxime sit modi exercitationem. Alias ipsa inventore amet reiciendis rem earum sint. Velit ut eaque dolores id molestiae architecto sit. Dolores ut quaerat qui et quibusdam.'),
(5,'Function-based 6thgeneration extranet','Et soluta dolore laboriosam assumenda consequuntur alias praesentium quisquam. Atque et saepe odit amet. Laborum incidunt odit enim omnis eligendi illo at saepe. Corrupti atque et vero eaque consequatur accusamus.'),
(6,'Devolved reciprocal data-warehouse','Veritatis ab qui laborum et quo deleniti. Dolore distinctio iure atque illum et. Animi recusandae perspiciatis qui quam. Eos autem aut distinctio voluptatem.'),
(7,'Grass-roots executive GraphicalUserInterface','Dicta dolore non recusandae ea vitae error. Fuga neque ut illum ut at labore vel. Distinctio labore est sit repellendus.'),
(8,'Ameliorated tangible approach','Corrupti dolor adipisci earum nemo. Adipisci magnam sunt et necessitatibus. Possimus rerum optio quo quis enim quo ratione. Officia voluptas similique quia aperiam aut iste id.'),
(9,'Diverse attitude-oriented attitude','Qui optio vero consequatur dolorem cumque et. Quo saepe ab nulla maiores ut vero laborum. Dolorum ipsam ad qui ut. Consectetur dicta laudantium explicabo explicabo distinctio quaerat numquam.'),
(10,'Re-engineered zeroadministration hardware','Et maiores ullam accusamus exercitationem nostrum vel ut. Temporibus labore architecto voluptas nostrum modi modi. Qui architecto dignissimos cum quod quae rem.'),
(11,'Ameliorated executive archive','Quidem aperiam sunt vero. Eaque esse sapiente nulla nemo impedit voluptatem. Inventore quis sit quasi dolorem veniam ut. Quas quaerat quo ab sapiente possimus eligendi voluptates et.'),
(12,'Enterprise-wide didactic function','Dolores saepe voluptatem fugiat dignissimos. Autem amet et beatae placeat.'),
(13,'Ameliorated background contingency','Explicabo nulla cumque illo et impedit quasi nisi. Dolorum id quia ut sit asperiores doloremque natus. Expedita corrupti sint ex dolores.'),
(14,'Reverse-engineered composite protocol','Omnis rerum dolores debitis dolor ipsum. Omnis reprehenderit rem quia voluptate voluptatem accusantium maxime. Illo pariatur libero cum et molestiae repellat pariatur. Explicabo voluptates magnam voluptatem ut illo distinctio laborum.'),
(15,'Stand-alone contextually-based throughput','Aliquid sed ut fuga praesentium debitis. Beatae incidunt qui vitae deleniti enim doloribus eveniet esse. Dolor et soluta ut eum voluptas est et.'),
(16,'Exclusive disintermediate extranet','Sunt ea explicabo nostrum minima tenetur maiores veritatis et. Sequi modi aut et rerum blanditiis. Minus esse aliquam tempora similique aut. Quis dolores ut et maxime unde.'),
(17,'Function-based nextgeneration access','Voluptas quae numquam animi voluptatibus nam fuga. Autem dolores harum aut provident. Temporibus vero consequatur totam voluptate accusamus.'),
(18,'Vision-oriented grid-enabled interface','Qui corporis placeat dolor velit ullam. In porro fugiat et voluptatem est. Est occaecati ea magni similique sed et dolorem autem. Suscipit quis alias facere tenetur sunt facilis rerum.'),
(19,'Sharable multi-tasking synergy','Et maxime ad earum minus. Omnis rem similique consequuntur fugit ut maxime mollitia. Est vel velit reiciendis repellat qui perspiciatis. Debitis ut ea quas id beatae deleniti voluptates et.'),
(20,'Assimilated zeroadministration throughput','Dolorem culpa inventore rerum ab. Suscipit error magni magnam laborum. Repudiandae quis veniam unde velit autem pariatur est dolores.'),
(21,'Networked demand-driven policy','Doloribus doloribus repellat ut. Dolor culpa est voluptatem ipsam molestiae incidunt. Voluptas error praesentium ut veritatis est. Rerum enim reprehenderit velit aliquid ipsum ex dicta.'),
(22,'Monitored regional task-force','Id molestiae vitae aut officia odit nihil necessitatibus. Consequuntur iure ut aut architecto qui ut magni. Quia nulla qui consectetur ipsa suscipit. Neque ad impedit quos ut cupiditate eius. Vitae iusto qui ipsam voluptates quia neque.'),
(23,'Secured full-range project','Expedita quo esse consequatur nulla. Voluptatem perferendis ex ut dolores. Est eum voluptate animi cumque. Deserunt adipisci suscipit est enim corrupti eaque.'),
(24,'Ameliorated transitional hierarchy','Enim rerum et repellendus est ut. Quasi aliquam sed iure at voluptate. Quae laudantium vel tempore dicta.'),
(25,'Quality-focused uniform infrastructure','Officiis placeat voluptates ut ducimus consequatur dolore laboriosam. Autem non debitis nostrum maxime dolores est. Adipisci sequi id eos laborum odit quis.'),
(26,'Front-line 24/7 projection','Maiores ab ea vel consequuntur eaque. Laborum facere vero voluptate. Debitis asperiores et odio reprehenderit sit magnam. Et quae eius aliquam similique reiciendis.'),
(27,'User-centric actuating localareanetwork','Nam porro minus nostrum non eaque natus. Et fugit qui aut consequatur culpa corporis autem. Quidem occaecati voluptatum qui illum sunt modi enim fuga. Vel at mollitia cupiditate quasi nostrum praesentium voluptatem.'),
(28,'Multi-layered real-time matrix','Assumenda tenetur repudiandae perferendis cupiditate quas nulla. Dolor quis architecto ducimus eum et. Illo consequuntur et perferendis corrupti autem nemo.'),
(29,'Networked real-time success','Dicta molestiae quia necessitatibus aut. Cum possimus consequuntur id doloremque sint et. Sed culpa cumque porro repellendus porro.'),
(30,'Vision-oriented homogeneous emulation','Voluptatem tempore et hic excepturi. Eos porro deserunt molestias illum. Odit nihil id et adipisci ratione repudiandae.'),
(31,'Versatile disintermediate internetsolution','Delectus quisquam saepe voluptatum ipsum est. Alias facere temporibus autem consequatur id. Unde quia placeat rerum sequi nemo. Veniam dolorem qui sed officia maiores praesentium.'),
(32,'Profit-focused national internetsolution','Velit recusandae ut repellat rerum in quisquam velit consequatur. Vero ipsam sit nulla et corporis autem. Et voluptas velit recusandae.'),
(33,'Inverse solution-oriented policy','Et excepturi similique aut autem doloribus maxime fugit. Quasi quia in assumenda. Esse sed consequatur cupiditate suscipit impedit nihil. Est earum voluptas saepe nam nulla.'),
(34,'Proactive foreground moderator','Sunt aliquid velit rerum sunt nisi officia repellat. Ea voluptatem quidem autem nam magni. Ratione nobis mollitia nulla mollitia. Optio quibusdam ut laboriosam eos quod voluptatem.'),
(35,'Devolved 24/7 contingency','Incidunt optio perferendis impedit quia nostrum eos reprehenderit. Non ut maxime autem. Ab corrupti et aut accusantium dolore.'),
(36,'Switchable composite challenge','Et culpa quisquam est consequuntur possimus sint. Dolorem eveniet et et et non. Voluptatem doloremque in similique consequuntur repellat minima.'),
(37,'Business-focused motivating firmware','Totam aliquid dignissimos incidunt aspernatur et mollitia. Ex velit harum ea et quam rerum et. Odio quis in assumenda vitae dolorem.'),
(38,'Up-sized full-range frame','Occaecati et aut laudantium aut dolorem. Et aut rerum temporibus nemo est. Quasi labore voluptatem neque non at qui consequatur quos.'),
(39,'Robust motivating projection','Aspernatur optio et enim aut. Rerum nemo cum omnis sint. Ea est doloribus voluptas labore et.'),
(40,'Open-architected uniform matrices','Neque et consequuntur neque. Modi qui cupiditate iure quidem incidunt. Praesentium veniam impedit est ipsum ipsa non quia.'),
(41,'User-centric user-facing extranet','Aut cumque ipsa sint et animi consectetur aliquid. Et saepe qui consequatur veritatis ut blanditiis. Quia molestias sit voluptas voluptas eaque.'),
(42,'Assimilated didactic initiative','Perferendis eos eos quibusdam perferendis exercitationem itaque aut. Quos rerum est maiores. Quia ex ut natus eos qui doloribus eveniet.'),
(43,'Function-based coherent help-desk','Accusamus modi non quasi sed. Qui deserunt atque dolorem esse quas quod ut error. Aut non ea minus eos amet quis. Quos qui aut a dolores dolor consequatur.'),
(44,'Polarised composite frame','Fugiat inventore nihil dolor corrupti quia velit. Voluptatem dolorem temporibus nostrum est error ut. Est dolore veniam quia explicabo dolore.'),
(45,'Enhanced user-facing ability','Blanditiis labore repellendus exercitationem maiores neque. Rerum qui deleniti sed rerum quia nemo dolores culpa. Et facere eos earum ad. Quod id aut voluptatem tenetur omnis distinctio. Ut nihil consectetur porro aut quos aut.'),
(46,'Automated bandwidth-monitored securedline','Quis adipisci quis alias aut. Eius eveniet sint minima saepe eligendi. Officia provident nostrum vero sit perferendis. Accusantium nobis voluptate quis ut nam odit.'),
(47,'Open-architected solution-oriented strategy','Esse eos dolorum dolorum inventore ut aut. Ut quia rerum reprehenderit eligendi et. Recusandae molestiae et nihil. Sed quis eum ut dolor nesciunt qui totam.'),
(48,'Synergistic multimedia software','Quia libero qui et. Mollitia at perspiciatis sed nihil. Veniam tempora odio labore perspiciatis quia.'),
(49,'Cross-platform bottom-line infrastructure','Autem alias nam quia dolor error alias. Eos aperiam voluptas omnis dolor omnis et. Qui quis nisi quae cum. Doloribus libero ipsam doloribus dolor est. Ullam iste veritatis fuga nesciunt iste eligendi quaerat numquam.'),
(50,'Front-line solution-oriented service-desk','Et in reiciendis consequatur nihil. Excepturi totam eius eaque autem rem quia. Natus magnam nisi molestiae eaque voluptatibus debitis et. Delectus quia recusandae sit architecto minima consequatur.'),
(51,'Optional 5thgeneration projection','Sint eius voluptatem aut nemo nam rerum consequatur. Placeat commodi reiciendis et sit commodi dolorem vitae. Doloribus quo et qui in et. Quod enim nulla animi magni asperiores.'),
(52,'Ameliorated contextually-based matrix','Impedit sed quo aliquid blanditiis incidunt eos. Autem qui sint est est. Omnis harum voluptatem magnam cumque praesentium rerum ipsum.'),
(53,'Mandatory asynchronous workforce','Dignissimos nihil quia iusto aperiam sit occaecati fugit. Et a qui aut pariatur. Rem molestias earum dolorem sit modi ut doloremque autem. Exercitationem debitis in soluta autem.'),
(54,'Extended motivating neural-net','Vero et aliquam assumenda laboriosam sunt quia rem. Exercitationem dolor dolor voluptatem in aut dolor incidunt. Esse eligendi sint voluptatem inventore aut.'),
(55,'Front-line attitude-oriented processimprovement','Ut eius sed porro at. Quaerat id in provident aut. Laborum enim aperiam consequuntur eum. Numquam corrupti maiores doloremque necessitatibus accusantium dignissimos.'),
(56,'Adaptive coherent productivity','Impedit distinctio sequi voluptatum nobis eveniet. Deleniti aliquid et ab et. Doloremque ut eos incidunt ut expedita omnis. Occaecati ea impedit soluta est quis. Eum qui doloremque aut officia quo minus.'),
(57,'Compatible local strategy','Modi delectus qui autem. Cumque pariatur sed dolorum ab hic voluptas tempora. Reiciendis maiores nobis deleniti consectetur.'),
(58,'Grass-roots fault-tolerant functionalities','Cupiditate minima dolorem ut hic. Et ratione reiciendis rerum. Facilis totam sunt rerum quam iusto officia ut et.'),
(59,'Ameliorated dynamic website','Praesentium dolor dolorem voluptatum consequuntur quia voluptatem facilis. Ut quia sint quo porro sint. Repellat recusandae nihil qui molestiae accusamus.'),
(60,'Fundamental dynamic pricingstructure','Qui iusto modi sequi. Quo sint dolores laborum voluptate tempora saepe sequi. Voluptates asperiores cumque quas dicta repudiandae est.'),
(61,'Persistent client-driven opensystem','Ullam non est provident consequatur quasi. Exercitationem quos dolor expedita. Sed asperiores sed at harum reiciendis sunt.'),
(62,'Automated 4thgeneration moderator','Velit temporibus veritatis veniam tempore sed dicta reiciendis. Quibusdam quisquam omnis at fuga. Ea architecto quia architecto aut nihil est unde. Possimus totam quia ad qui dolores eligendi cum dicta.'),
(63,'Implemented bottom-line data-warehouse','Sit nisi odio expedita at mollitia. Ipsum sint est aut nostrum qui non. Ea omnis dolores quasi. Amet et quod nisi enim voluptates ut dolor.'),
(64,'Intuitive incremental project','Rem qui sit soluta ipsa et sunt. Unde et dolorum incidunt voluptatem consectetur fugiat deserunt harum. Mollitia est ex et. Facere ad qui itaque.'),
(65,'Grass-roots actuating internetsolution','Voluptas sit aperiam sit iste aperiam dolorem perferendis. Qui sequi earum incidunt repudiandae. Sed aliquid quas placeat aliquid rerum voluptatem. Quia qui nesciunt atque.'),
(66,'Ergonomic eco-centric frame','Dolores reprehenderit nam laborum voluptatem magnam. Enim pariatur accusamus delectus. Recusandae atque nihil velit at doloribus nulla.'),
(67,'Total content-based GraphicInterface','Vel eveniet unde atque tenetur aut quaerat qui. Qui consequatur voluptatem eligendi culpa. Ad quia alias aperiam molestiae molestiae vitae magnam. Minima eos quia tempora temporibus.'),
(68,'Sharable 4thgeneration monitoring','Laborum beatae ullam dicta consequatur et. Voluptatem labore doloribus voluptas quia. Quam voluptatibus in eligendi ut. Neque nihil eaque libero sed.'),
(69,'Up-sized real-time analyzer','Omnis quas animi sed dolore natus velit. Et dolores natus ut magnam cumque. Rerum aut magni quo vitae sint molestiae.'),
(70,'Advanced fault-tolerant matrices','Nostrum et omnis incidunt hic et dolor. Quia vitae enim rerum non dolores modi iusto. Et voluptatem ipsum minus. Et explicabo non ut maxime molestiae amet eum. Temporibus et magni similique et commodi commodi laborum eos.'),
(71,'Profound static functionalities','Sed nostrum dolor laudantium est reiciendis. Eveniet pariatur et ratione quo sequi qui. Sit ab at error quia ut voluptatem.'),
(72,'Cross-platform bifurcated moderator','Voluptas voluptas recusandae temporibus voluptas. Et sunt ipsa numquam eveniet quod vero. At dolores distinctio earum vel veniam sunt nostrum non. Eos velit pariatur repudiandae.'),
(73,'Versatile coherent support','Et voluptas accusantium earum sequi perspiciatis possimus eligendi. Quae aut harum maiores ex amet sequi. Nihil molestiae autem rerum adipisci provident aut.'),
(74,'Innovative solution-oriented functionalities','Neque consequatur magnam et est et. Molestiae optio qui consequatur omnis. Ut voluptatem ex autem facere. Odit in laudantium accusantium neque.'),
(75,'Extended 24hour flexibility','Provident tempore alias praesentium facere cumque fuga nihil. Temporibus dolores tempora quasi numquam inventore reprehenderit eaque eum. Qui consequatur ut quia voluptatibus magni porro quas rem.'),
(76,'Function-based 4thgeneration GraphicInterface','Harum error iste et. Voluptas voluptatem eaque adipisci. Qui dolorum molestiae impedit adipisci.'),
(77,'Customer-focused grid-enabled toolset','Mollitia in consequatur sit temporibus est voluptatem. Rerum quis officiis ut dolorem debitis. Nesciunt id asperiores voluptas qui quidem voluptatem. Labore labore atque numquam quidem omnis nesciunt.'),
(78,'Cross-group fresh-thinking securedline','Eos et perferendis velit sapiente itaque accusamus. Temporibus dicta delectus autem non dolorem optio iure velit. Velit eius quia et.'),
(79,'Multi-lateral 5thgeneration installation','Vitae nihil ut modi quae vel et. Rerum perferendis ut est perferendis aut sunt magni.'),
(80,'Re-contextualized methodical flexibility','Dicta odio error eum repellat numquam fuga quos repudiandae. Tempore ratione temporibus amet molestias ut. Non iusto rerum tempore cum est molestiae. Eius sit et qui magni aut quam ratione. Labore sunt magnam ipsa qui sed.'),
(81,'Progressive content-based interface','Enim non exercitationem ut. Minus et nostrum illo omnis. Nam veritatis quae molestias saepe deserunt et et.'),
(82,'Front-line cohesive firmware','Natus dolore dolorem quisquam temporibus et iure porro. Aut qui nemo aliquam ipsum et dolorem. Provident enim sit debitis ea rem assumenda. Vel qui tempore alias suscipit molestiae amet.'),
(83,'Upgradable directional neural-net','Nemo aut tempore tempora sit voluptas. Ut omnis quidem enim id voluptatem magni. Et eos vitae aliquam ullam quaerat vero. Voluptas ut voluptatem dolorum qui voluptas.'),
(84,'Public-key analyzing internetsolution','Et repudiandae repellat iure unde saepe ab iste. Consequatur labore illo omnis fugiat quam rerum quibusdam. Praesentium nihil vitae exercitationem. Aliquam voluptate aut qui quis adipisci perspiciatis.'),
(85,'Realigned object-oriented migration','Est sint asperiores dicta consequatur. Harum voluptatem possimus quis officiis praesentium sit quia.'),
(86,'Diverse holistic infrastructure','Expedita nisi dolorem maiores officia cumque nobis. Repellat nisi aut quia debitis. Est exercitationem sint minima dolores consequuntur laudantium. Eos rerum itaque suscipit sit. Nostrum aut harum facilis.'),
(87,'Distributed real-time opensystem','Quaerat voluptas est ducimus perferendis aut voluptatum. Praesentium consequatur et dicta quaerat. Et et eaque sed cupiditate. Ea ea id quibusdam illum.'),
(88,'Virtual zeroadministration architecture','Temporibus consequuntur repudiandae consectetur omnis et. Rerum quae neque voluptates eaque laborum nulla. Illum culpa suscipit eos voluptatem.'),
(89,'Distributed multi-tasking capability','Vero voluptatem quos velit. Et eaque omnis totam aliquam. Molestias sapiente mollitia ipsum et repellendus fugit tempora. Sequi a aut est totam illo.'),
(90,'Total hybrid firmware','Asperiores earum quam amet earum minus aliquam. Et minus distinctio minima quia. Qui est magnam consequatur eius aliquid.'),
(91,'Polarised zerotolerance flexibility','Commodi ratione placeat sed soluta. Fuga sed fugit quo doloremque recusandae autem iste. Dolor amet mollitia dolor voluptatem enim delectus harum dolorum.'),
(92,'Visionary nextgeneration website','Non optio est aut provident officia. Qui facilis explicabo dolorem quia est. Est accusantium quia vero nostrum. Voluptatem qui voluptatem aut beatae.'),
(93,'Compatible systemic capacity','Aspernatur nihil velit tempore. Voluptas perferendis et pariatur quia hic consequatur rerum.'),
(94,'Ergonomic heuristic GraphicalUserInterface','Temporibus est occaecati officiis nihil voluptas enim perferendis. Dolorem commodi ut assumenda ratione. Quod ut labore voluptatem ducimus est.'),
(95,'Quality-focused didactic help-desk','Beatae minus blanditiis et explicabo. Maxime possimus molestiae non. Non reiciendis doloremque ad vel sunt vitae aut.'),
(96,'Public-key intermediate flexibility','Aut facilis temporibus repellendus culpa. Et mollitia voluptatem maiores. Possimus quia et ducimus. Autem esse et ipsum.'),
(97,'Seamless national task-force','A dolore quibusdam aliquam eligendi et repellat beatae. Omnis dolores tempore placeat. Aut repellat saepe nesciunt quis et et. Veritatis omnis veniam eaque labore id.'),
(98,'Reactive value-added processimprovement','Saepe inventore dolores unde magni eveniet pariatur. Enim non aspernatur unde voluptas exercitationem voluptatum. Natus omnis quis pariatur quo hic non. Ipsa molestiae officiis qui aut. Saepe similique veniam corrupti error quis esse.'),
(99,'Cross-platform full-range collaboration','Quia alias quam cumque sit voluptas aut cumque. Ad excepturi et ullam quia saepe aut. Recusandae sit id vel sed. Sed quia excepturi est quas. Exercitationem id occaecati aliquam.'),
(100,'Implemented well-modulated paradigm','Suscipit ipsa esse excepturi numquam. Deserunt cumque aliquam quam sint. Distinctio molestias qui quia voluptatem temporibus.'),
(607,'zara','vetements');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-07 22:20:10
