/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.28 : Database - socialq&a
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`socialq&a` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `socialq&a`;

/*Table structure for table `calc` */

DROP TABLE IF EXISTS `calc`;

CREATE TABLE `calc` (
  `email` varchar(100) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `ps` double DEFAULT NULL,
  `pa` double DEFAULT NULL,
  `pc` double DEFAULT NULL,
  `closeness` double DEFAULT NULL,
  `metric` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calc` */

insert  into `calc`(`email`,`weight`,`ps`,`pa`,`pc`,`closeness`,`metric`) values ('c2l2YUBnbWFpbC5jb20=',0,4,0,0,2,1),('cGF2YW5AZ21haWwuY29t',0,5,0,0.3333333333333333,2.6666666666666665,1.3333333333333333);

/*Table structure for table `frequest` */

DROP TABLE IF EXISTS `frequest`;

CREATE TABLE `frequest` (
  `ufrom` varchar(300) NOT NULL,
  `uto` varchar(300) NOT NULL,
  `requ` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frequest` */

insert  into `frequest`(`ufrom`,`uto`,`requ`) values ('sravan@gmail.com','dinesh@gmail.com','accepted'),('sravan@gmail.com','pavan@gmail.com','accepted'),('sravan@gmail.com','siva@gmail.com','accepted'),('pavan@gmail.com','dinesh@gmail.com','accepted');

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `user1` varchar(100) NOT NULL,
  `user2` varchar(100) NOT NULL,
  PRIMARY KEY (`user1`,`user2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends` */

insert  into `friends`(`user1`,`user2`) values ('c2l2YUBnbWFpbC5jb20=','c3JhdmFuQGdtYWlsLmNvbQ=='),('c3JhdmFuQGdtYWlsLmNvbQ==','c2l2YUBnbWFpbC5jb20='),('c3JhdmFuQGdtYWlsLmNvbQ==','cGF2YW5AZ21haWwuY29t'),('c3JhdmFuQGdtYWlsLmNvbQ==','ZGluZXNoQGdtYWlsLmNvbQ=='),('cGF2YW5AZ21haWwuY29t','c3JhdmFuQGdtYWlsLmNvbQ=='),('cGF2YW5AZ21haWwuY29t','ZGluZXNoQGdtYWlsLmNvbQ=='),('ZGluZXNoQGdtYWlsLmNvbQ==','c3JhdmFuQGdtYWlsLmNvbQ=='),('ZGluZXNoQGdtYWlsLmNvbQ==','cGF2YW5AZ21haWwuY29t');

/*Table structure for table `interaction` */

DROP TABLE IF EXISTS `interaction`;

CREATE TABLE `interaction` (
  `qid` varchar(10) NOT NULL,
  `asker` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `ans` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`qid`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interaction` */

insert  into `interaction`(`qid`,`asker`,`user`,`ans`) values ('6','c3JhdmFuQGdtYWlsLmNvbQ==','c2l2YUBnbWFpbC5jb20=','Nice'),('6','c3JhdmFuQGdtYWlsLmNvbQ==','cGF2YW5AZ21haWwuY29t','good');

/*Table structure for table `interests` */

DROP TABLE IF EXISTS `interests`;

CREATE TABLE `interests` (
  `email` varchar(100) NOT NULL,
  `interests` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interests` */

insert  into `interests`(`email`,`interests`) values ('c2l2YUBnbWFpbC5jb20=','RWR1Y2F0aW9u;RmFzaGlvbg==;TXVzaWM=;UGV0cyAmIEFuaW1hbHM=;UmVnaW9uYWw=;U3BvcnRz;'),('c3JhdmFuQGdtYWlsLmNvbQ==','TWVkaWE=;RW50ZXJ0YWlubWVudA==;RWR1Y2F0aW9u;RmFzaGlvbg==;TXVzaWM=;UGV0cyAmIEFuaW1hbHM=;'),('cGF2YW5AZ21haWwuY29t','TWVkaWE=;RW50ZXJ0YWlubWVudA==;RWR1Y2F0aW9u;RmFzaGlvbg==;TXVzaWM=;'),('ZGluZXNoLmtvbmR1cmlAZ21haWwuY29t','UG9saXRpY3M=;VGVjaG5vbG9neQ==;TWVkaWE=;RW50ZXJ0YWlubWVudA==;RWR1Y2F0aW9u;');

/*Table structure for table `query` */

DROP TABLE IF EXISTS `query`;

CREATE TABLE `query` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(1000) DEFAULT NULL,
  `uemail` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'new',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `query` */

insert  into `query`(`qid`,`query`,`uemail`,`uname`,`status`) values (6,'How is baahubali 2 movie ?','sravan@gmail.com','Sravan','done');

/*Table structure for table `synset` */

DROP TABLE IF EXISTS `synset`;

CREATE TABLE `synset` (
  `cat` varchar(100) NOT NULL,
  `subcat` varchar(100) NOT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`cat`,`subcat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `synset` */

insert  into `synset`(`cat`,`subcat`,`keywords`) values ('Books','comic','comic;humorous;comedy;comedian;romantic;tragic;dramatic;creative;cartoon;musical;literary;poetic;theatrical;fictional;satirical;detective;classic;funny;greatest;'),('Movies','movie','movie;movies;video;videos;player;legend;figure;animated;file;cartoon;television;ascii;animation;gfp-apc;gif;pdf;histogram;dic;inset;additional;word;'),('Music','melody','melody;melodies;tune;music;harmonies;chords;song;harmony;phrase;guitar;octaves;tunes;songs;chord;bass;solo;flute;bassoon;contour;oboe;instruments;'),('Music','song','song;songs;lman;singing;duet;playback;syllables;sing;ttx;acoustic;finches;birds;zebra;victory;syllable;dph;juvenile;bird;speech;music;voice-face;songs?;'),('Television','tv','television;tv;advertising;magazines;advertisements;magazine;games;print;video;broadcast;videos;bicycle;internet;ads;computer;posters;');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `cat` varchar(100) DEFAULT NULL,
  `freq` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`cat`,`freq`) values ('Movies',1),('Music',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `tele` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `gen` varchar(10) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `profilepic` longblob,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`name`,`lname`,`pwd`,`email`,`tele`,`city`,`zip`,`gen`,`addr`,`profilepic`) values (1,'Dinesh','Konduri','1234','dinesh@gmail.com','8143070865','hyderabad','500018','Male','Hyderabad','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0ªPLTEqâïÿÿÿ8ÆÙ\';zIÿíµ((&èÏ‰IIH©¿¾ÙíìüÐˆÝ«b·ÎÌŽ¥¢8h•íÕ“00.+E€OÐáeàî\0C/c“%5w3x7ÀÖ¯ÇÈ†ŸTä³j’ÞÚvÁ½ã©ZÿÏéúü\0\0B\ZÂÖ†æñÒõùœêóðÖÿí²\0\06G><µïöîÏ…uëøõýþ\0\"o\0\0<\'ºðö·ïö\'¼ÔÚ\0\0DÊîôABD\"\0F:7Ñæäÿö»Roržáë97/Ã¯v[n”!³¼¥¯mÓá\"*ràêÄ_ÈÎþè­tˆªJƒ‰/r{«¡4 ¯79?]š¡ºÅÕe¹Ã\0näÕ¤SŸ¼Ùâêiw‰1S‰\"c…Bx¡`¾Ôlq‹.˜²¢¸¥³È\Z?h^sœ+†¢L^Ž.]w˜®IOq5Mrƒ¬59b^kÂÌÙãèî?GhJ°q„‘‰qš‘wÊ½”_\\T,PToeI›‹aQK:aYBM\\]¤”fX‡Œ?ei3ŽšÁº ‘ÄÈääÐsÁ½¼Ã¶ßèÜÈÎŸ—Ì¸µç×ÍéÌÍÏœ\0\0ÁèÓ¥Ì²¤ç,\0\0TIDATxœÍÝ‹[Ç\0ðM‚Q¨Â\"µÕ<-„„‡\"¶T|$U¬åqQªRKµÚV­moß÷ÚÖ{ïÿ|g$ÙÝyœ3ss¾Ïï«ØOóûÎÌ™3³»Y+{T2…ÂT©TÌ³°œpþ£X*M\n™Jüÿ¼ç_^)Ló–í†ÿÇùâT!Vg\\ÂJ¡”çÂ¢áüoùRlÌ8„•™¢Ã˜Vq&%¹ÐÍ\n×Êd¹¤þ@´ÂBQ[×Ìe‘I(4ç5””H*a¦dÑð|¤UÊ}2\ZáŒþÜ\ZíüÉg#VJä¼]d‰ ¸\Z3T³o,\ZVC!óÅÆó‘¦F#aü>£po|ÆF}ai¯|®±´çÂ)Òå@´¦öT˜Éï­Ï5æõ†ª–pOh‹Qk¨j{<@[ˆ–F¿ŠîYå\Z‹±3o,>ÑÂÎF¤ð\rÍÀ€9QÂÊ(¡Ñ°ó¨~#,¼i[#0!<Ý	ôÂF,ÿpa[ŒÐÝ@ÔT¨°=¦`3à“(Ì¼i\'€ËLXh¯zaÃê\rH8ÕŽ@h½Û$„m„ÕÂ6hÔÄhá”Â6Zçy¡&ª„m<D½PT…p†Xn	²¿”…­8ü—ÉÖÁrmeéÃGggg\'«?_[Z±•\n¢TH,¯|8::ÚåÆáÎÉÉ3g\'_,]!CÊ—~™0C,¯tù:OèÅäÙÎkWˆŒ¶¬“+4ÿ¼õÓlWWTè\"_¬%RÒ†K„y’»üáh—@Èâìá%b^GHs¦†„ÌX]!0Jö‹B!ÍJ_^ší’™ñçš¹Ñ>R•ÑPyB6	ŒÂ‚*U™òDÈŒg®™ÕF $¨2nïò…nM×AµáM÷e‹õ0?±\0ÝµcÉ2A\nšp®Ðl©/[¬…™m´10!‹3fƒ•¿ðs…&>ËZê\n×O¨Ðk	š¬„Á\r-tŠÎä5ÝN‡»*r„&Eù\'Yþ B7‘Õ¥š’·dp„ú>Ë\nw0ZBgF²²£5%!Bƒ1\ZiÑ´…>mäŒÓˆÐ Ž–9‹ƒ¾Ð™’ýèÏ­§¡¶Ï²VTs)ì<ó)ž…~or0ð!…¿$ÑÄÈ™FX¨ïãô ¦ÂÉO’xbDü­I»â„/’xb¸y\n+@X\nQÂÎÉ¤±\"õåA@œðlR‡XM:î\Z¤b…g>Õ!WŒ€Ð …Ö\nlj	±Ä¢Hh’BÐjþ’Ô!’Ø*4I!t\Z\"+Í\'I-b‘/4Û÷§¡®GlMb‹Ð$…°ŽÍDˆ#yB“µ¼\Z\ZQÄ–5±)4:}\Z!†ØÒØ4…f§OÐBc\"D£BÃ«½P ‘Aln1\ZBÃ3`h¡1\"ˆù°Ððj(´gÃ\nIêÆ®°d„/z]›±šC]iuqq±\Z“N\nM/¦µ\n«]×WWWŸ=ç5vOzÄÝ³S‹ Ÿ±þâ·û>Ø·ýúfÑ|ò„Pb1 4½Ú.>s|N|p7TÑ§ÚD»Uh|Å·!¬®îqõy4Ø“(}¢?L-’AÚ63èE4¸óRF,¶/Úû•fñzèÎÆª¾ðm‘D´›BóÛ<aõ›ÐªA#Fx¸_(„½aj,÷\raWÄç«U¡p\ZB‰¥†Ðü¾·§	OÂ–±zýùn\"Â³Âi$æw…f{_7œ¾”7FÆV¿íZtR‰–Dwl™oœÜpR¸*z‰\\½þ¼ºxñ¢œÕücù …Ý-”E±V¸;àê·â62¹oõå‡çç/FìGóóó?üÐ9ïÿÙYq%…‹¾ÐèœbTU>/J§Ïÿóåwßt¸Ó19qñ£¾ÿîåËóçÓéS§Òç¿s“/$•Jô„ÓÐ*/E–B‘0vN¤üý©óßÏ+ëˆèLD‹è&½•YX\n=¡*N½œõ¤(¢³\"ZDŒØêYˆ²4þG=ÕDçÈÍ¢¹Øþ˜B 0}*ý\'P(%æ]!E\n?~X˜N½& ÚŽàŽ|„Óc¯rÆD;Ã„…æ8!LýaœEVj,‚\'›ìá@Œ0ý\ZšD!ÑžbB‚Ž‘B”p\n‹Lh^J1ƒ\'¼bLÌ3¡1Ðþ+6!xÅ–yÏfÿ·-„|¢]±Ì‹vr‰vÆ2_,Úd”ò‰vÁ\"ØþÆ\'|\'ä™àAß¶¨¥¢=e™Ÿ³Y6ˆ¦±@±d,ømÐÓˆ‰E!f\"búRd¡á‹É“¢ñäÑ´‰‰y¡ýw,»§ÿiÒ‘Fˆé½B=_ˆH$DÌDø_kFˆ4Äìò¡Bø_•Å½&…ðSš½#ºÕFÍ„	Ç^™ã!¾Ãþ¿•‹¿RøúÕ¡ô«?L†hlDïEª,ª„cWr,Œ}-DªZ³«T-\n¡Yá©ÖÃ–0.8¡ˆôBÕŽ_.Ôîc„Är¨ØKÉ…‡(}.1O±·…|C,ÂO¹ÁD’ÝS(ä‹¿LHYfvcŽb	í’ûa_ÈfËÆ©DH?F]!á7²5‰’EQ,$®£^ä¦ÎKyDñTuNeÔÂ‚3onhä0®[pCØŸŠ„ø³Q˜°Bpí‰Âj#¢·¡Q¡¸~È\'\n6øÂ±?ã˜„,úi®cˆ\\alÀdä:>ŠÈÆLÎÑÜ‹!\"òæ\"G8önlÀÜÍý4B\"\'‹QaŒLæ2T÷D	â“WÕÂq•QGHv_›PxàB8v0Na?Ý½‰BáWeÂãcÎÑÝ_*Óx(ä‹U˜›\"»GX*dÆ«<¡ë‹W˜!»Ï[!l«»Â1ßï(¥»W_-t3yõ=W8ÖäÅ+¬>oºÑj‹[˜;M÷ÌL›\n3tÏ=µ§0IøìZ{\nçŸ?lKan†ðÒöVŸnKaòYn~Ø0aÁI¯e£{Ÿ¥™Õ“acXxâà³ý¿Å#¬P~§7ºøýÀI‰ðÄñ_÷;‡°Fú½œ°Ow{ñû¡“á‰óÿÚïEYÌÍ„1tßùîFü{µ™Èã­Ã³5za\"(¤_ô»Ñ¬ÇƒÃ³äÂZHH}eOu‡Â¬ÇƒÃ³Ôã4×ö¦eË¶ò¥0Ð¬¬²:ÂgŸC¤½pÑŸI¶På²U»óô7ŽÎÕ\'þÊáy1üù­»o\'Iî7ÉŽ\r—DçUwn<]OÕëC}baw7/}è˜Ø¾uÿnÒÔ™KD…úGnåríÎÛëõz}p0Å¢¾)¾?tYœÂGÙ\'sbû‹ûw¡OóbŽ#ÔÛ3Ý·œÄ¹6?†Î	GúÄÄK°Ãgt|vôÈ:\'…ŽP§¯)[O×ƒ8O¸ ¾Õ—‡ŸLw„‚eóØ­·5l-Áj,OëCaãï‹€L(\"^ž=åÄ-ôpÍñ¿¿›Äòß—J\r>¡€xŒt3y™Æ–š|ðÓºÀç›-ÐòˆÃ7³\"aGÇÄ-\\\n!.‰G$@–EÐòˆ Kãgº)Ôÿ>ïõH}‘è#Äá‡‘2$n#R(þ>oDÈlœ‹Í¹Ë!áÍP™‘¦—Å@\n5¿W¿|[:DÝa\Z(6çzz>ŒÒ½½n«„·€å&˜BÍw#ÜQÙŠ±\0öôÜn\n×{{Ä¯•@VnîÂ„s	™¸îSS©¾ °§§%‡½½A¢|úq&¬È…-Fù†hÄÐNØ³¿±í\r‡„÷!c4ün2­÷Ì€€lœž\0{z.{=ÍàÍÞÞ\0QÐÍD‰F@á\0VŒ€YèÄà… °gØïÚŽöˆÃ_f!0‰¹È;­4Þ÷TV,…-I\\\0yB‡ø50…#úŠ@wvÕ€)L9Å¦È2\"ÐÇbBÙƒs8Ñ©ÎNauÆúfRØ+3^FŽózgü»óÊ·¡ƒ”ÅÐ°Rx8	]¡¢¯q4ø÷Â§aÊ)6JáŒð3y_ÃÅð~(­§e¸Ï§—BH7ÓŒc2!oŒj½‡‘B§?S…û^~H„¹9®Eã]²(a Øp„ˆ2ãÄ€¤˜öó)\ZïÆ	SƒÃáQP*Ä½X¶d …Cá“*!J„’÷r#…©ñKB!®ÌÈ„‚I(ŠWE¬pðP¸Š…¼•P%V¬0U¿,ÊŽ×pBA•QEÕ-L¥Bd™‘UF!-üxán±		ÇkpaŽûºj€PPP5rXßÏb\ZR©PXFÕBþ™††Ð/6A!tß«6/†j¹iýb¢W\nP¼N€„<¢Ž0ÕjøxBP)ä4áZÂ¡ÙŠ„J Zmn´„î^¸EˆmHB5 ŒT=¡³nbö½b!\0†+ªžÐÙ7…Ze&\"„\0AÂQSÈöÂM!º!å	ËF\\ú5…©¡Í_¨YfBÂèá¯0‘!²½ðnu¡¬UÃ•¼m.¼à_™ÑéfÂÂ~I³­%d›)ÛT˜\Zôr˜Ò6„9ñ~P_ØXõ…©>Wˆ<^ãAE/LŒ…©u&Ôî\n¥›	¡?M„)&4\0ºÂx\nâ…^—j$\\ï3£®3B5„lÙ°„)£:BÌÕ&Åq# Q\n;Fà5T_˜x<¿€H+Ìf—ñWC˜H,ŒëT}avdCçÃj	këð+ÝTÂ‰íÇZŸUO˜HléUMa6»©ùIu…‰ÊÎ¸–QK8=²ZI„‰ÄW÷þ¡15„Ó#¿Òÿ˜B6/àKZÈ|zBÈŒ°yD\n§GžùŒ…Ìx7QÂ¬aþH„l>îŒ×á‰„³#óPÈêêÖ:8‘Pavd{‹â³ÑY¬-Á	NOLlO?¨„,–ïAF«Z8=1òP£ÿ¡Ð­©®\n!›|·f_3H…,*Ë)i*%B–¼éeR^‚^èÄÚÖ=¦Œ>Ò&N³Üu<Ú\\‹áÓÄ!tâ«åãŒq†…Y7òä&íÐl‰¸„n¬=Þ\\xÐW¯3é÷|©/˜Îf³ŒÖñå£Íå8R×ˆX…nT*k—7wvîY_ïcÂcÇ¶·¿ØØØØ\\^^«hoÀñÅ~­¾Ji\0\0\0\0IEND®B`‚'),(2,'Pavan','Chitineedi','1234','pavan@gmail.com','9618951936','Hyderabad','500018','Male','Hyderabad','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0È\0\0\0È\0\0\0š†^¬\0\0\0„PLTEÿÿÿ\0\0\0úúú\r\r\rððð<<<øøø&&&ôôôwwwZZZHHHOOOppp®®®âââÐÐÐ\"\"\"RRR¸¸¸ŒŒŒÀÀÀÊÊÊ{{{111’’’dddššš...ÝÝÝ²²²¢¢¢BBB^^^§§§™™™777………Vª‹`\0\0\nÜIDATxœÝ]ç‚ª:^Š€¢\"\"X`eíïÿ~×JH0@&pî÷ã´õH†dzÉÏ¬0öæ[{ *Šnš÷_Ucy9‡h„ô@¤—ÙRaAÝz«ëò ðØDd¸Þü®×Y\rm·ýNÅkcæa×‹ecÛœd¼¶å¯ë3p®EÆÃ ë5Së’ñ@Ò7¾×&j:Å\\t½ô^§àÔ£M9ëÍéP”e_8EóÚq‡~îš„\'¦Ç–tÜátMÄVö H´®éðÇ\"èP”UÇÆ¤_[	²àvº\'– ýx`Ö%Bøãƒ¤3:4ò\nbÒ!mõG	™ÃgÑt(FÚA+»„ŽýT>Ú^<ŠâÉ\'d‚A‡¢Hw€ƒ†þÇ7,%.M¨|¸vXt(ªTÉ55ÑQV2	¹áÑ¡(‘<:¬&!Cy„ ‰Þ¤‰`\r‘CÆ%\\:UV„ûŠLˆ¬XD„M‡bÈqà…»!eÈqL„ÅØ8É ÿdÝÏ–ŒŠ#e- 6|:|t(c|BRQð“&RXD†\0n”*¬_l:4„ \rGlB‚Š‡›³°ý2°	ùc>zøp#D¤¯^Àæö˜ñ\\ûf­‚!eXŒ{ÿÛ\'ê[lÍ©O=Âƒ°BHŒL50·Ìè?±	ì@Í]×‹œ ¢dËà$;G[Ç­ô)Ëe.pÉ)\ræÈ„Pôá’æ˜²#F:›á\"By$½\0cÍŠ-§\\” «öQù‰,‹›y¼v\ZÏéºâb•Ÿ¸a~8¦K/{¤¾²•Mˆ^aK¤tÓ+æÑš{\\BÊG«:¾IÝsÊ¡5‘VYjª?ïÓøá!¯_ül©U’E_­Ôu9Za<þSTÃŽdWÅq´¸¤EŸþŸ_é¼$¸t”Ø\\&‘åÎÑài,WÖbÛZEÇ‰³Ñ÷tÚ2ÿŠ\'•Èä\n«x°¹S¾Ø\'wk´<Ù#d™ß`ÿ;Qœ…©ÏpSÜùóqØaŽºÒ~=ËNXæÊZNVD¡§¿ä«ML¯½d>ÕŽÿ[—ãkÝ@O¤§7)“ÜŽ³mŸÖ(Ç}›°¤už=ØænSïqÀöÚ,9BŒÿ‚Ê~þÔ(»†ß\\NùÍÔÉ8øÑ®sÀ2xÅdãâó!‰Åç1¦DS5}Kß‘müàQŒ+(Ñ§0÷¶pi‚\'§>8!#N¢Ëxª${WÉó¯CœÀf¦mð¼ÝÂ¦ß}\nŒ§Œñ	Qó;’**ÆS2+Ï%1\nØÖ±P¸‘ñ^Œ.“Zo‡ú†‘Å ZOje¦ªúJè„ñ‹g£#û­?0\"$,W5@\nµÞJÃû!æ^ÙI ¾\r¥\0¡f$Z¦øïÎy¢6Ú#Òìea„ˆ?‚–â#v9[!7ü§èfý/©ÕÂŠ1[™õ€[³EÜ¤³ENnî-Éž“à<€D2qx×Ùst)OŠ¨täFuK4²!ØY]äD* »@Þ\'-IKáîaD¾9aõÙ]¹\n¦$Ñaü^ýt‰Ù\"+_F°ÇßBQ£úVë˜Ë6Ê¨ûæ2¢\\«|ežœ’|H^:Éõ¤ âru&‚ØfáTi½I°pAPÓ\nÌMâÅ|‹Ð@\ZCŒÛnYˆ];—8]B˜„ôÆ$\"zQÈA [Œš:¤€ÔÿŠˆÐN‰‘=iJÔ°€³E„¯Ä¶Ð7H‚\\@p‹sHåô\'{š­k¢Ö¥õRŒˆ©Úš?‰^Â.n¢èâ¶ydàãt1È\r˜y-·„ˆr»“IH$”¶lõ|àá ;T€DTÚ-€ÄaŽæê‘‚ÿAaÞGWS@wOóà\rðÓºÚ\\\\cqÌð{5@ÿqS§,»Ã1tÀ/i¦Ê,PÔå´F„>\Z·í›PÁ¥6á€Ð’ÞÉ0Àïõç•Á¦Ænt!A\n×°&·¦ B&ß)bÞª[‹’\00ºÝƒaß°aXCÃõ “r¡…¢_\0Û.ô~L,`­¸É™þƒ­Ô¾Œ+` ]åñºs%ñjÆb‡¹”Àü+£„0 ¯öcþòyJŒjÑJ”¾Òq?]ùF!›S´Ùc:òÊííïmê\rŸøÅñá¡”òO\'ru)¶º˜–\Zõt7&•iV8)õÂú¡?J¸QÆ‚ªcw–$«!­WWçÈGXkô–Û£»Š°8º‰?ÇêÒõb«±æ¸ØæyÌÝ<|\'ïãŽn£+Æiå8]ÓÎÔ’“j9_HY\n!Ö@UÔY‡,p^Ì]\nX·\n®¿žK‘â—¿¼üíÄ+‰¢£)ê9ô¨#Þl²X’xÿÊ•ÈÖ\"ÉLÔ9?þÁ»Â]Ã½Q_yÎ3SìäOÎ4i-œKŠ}NÿbÇó¼ÛnÍdçRµ:œD¸‰’i89R´	JÑÇ„ÜIˆ²3£è’TLŠo1W†Ýž¯î“‹ÐKî‚ø´ÿ6]½±9þíbuºˆfÖaÆ5¶ˆÎïßÁ7&ÜœZfÚbÎ=ç>Ïï»˜ñÓCÞæž–¨ÏM€5©32:Ïïî]Ú½]˜f¥ùáÁqÍ;ÕºÀœ4ÙË«9È0·@’ñØãý~l“óéÒ?Ç…S—mÃ;Ð‹\0\Z‚Å‘\n\0°ý»þ&F\\ë€EMîä~ÿeËÓ&3·5dXÃ«ôÀ×ìO+·Ù\\T•77V1w­\Z cÄ´äA£NÚôê>\'9h>ó\ZÔ3‡Ð€¾Õ¦/ì®µ8L¢¨>—~÷2ìZ›ÉÁß0a«é±crnbTa#NÏ0øBIÔrV$áCúm]@‰T6•Â+hs®\0\'‡vÚ•XæiÛÁÁfŸ¸ƒð{YúÍ‡ÑœÓ?³ý•ö_ž×ï›œ|Õa.‹=7˜L\'HÈý(€ßs§à\'#Î8^5š1s5(a(Ü^\0˜;eT*ÃèÕt…†ähµæô7ö4RØ@xRM·bý€o.+(SÙ>edfaÁ1ËºùEpú”ð‰õÆgÃÓâÞ‡N§¿P’\\vw}¼ù½t)Ñ;ƒ+ô:¯bRè%to~OŠÿþ²|Yöd3Z£ÄÚ\'^l]r3·4Ðù-}£ÓƒßË#uÕ©èC¬JÖDù“ß)_\ZæZÖfˆ„Éõ1U{ß0.îv*Âu5w~§t7W`+ ¨¥CÅé‡²dC4§?‘EkqnÓ£Þ‹Áº,£²&/á¬þÕäÁ¹ûõÃî’îÂÃçl‰—Y’ñ‘[è÷bcø#D ß\rVÿfÿø‰‚M_ùøÀ£¶ñÅŽAºžÿñ³EÊò¿¸€\rw’.9DA¾·õzo\\\nñÅ\\&j©X•yËQ¯1¦$®¬Rô¦÷P=zŠ$ø·Ì`õÄÎY\'I7i¶Ç ©NQ[ñ?aË=e¤I7µ6„îÆÜ%”Ö91‰qýjZÿœ/ÛíúÐùkZ¨ïØcºÎYÀØj+Ü9«}\'»3ØÎ~‘àŽ+Zl¼ÕÕ–@‘¾¼Îœx ÷üXAxŽ\'ÞÌ½.\ra7Õ_Ý“7‰a*§8¾€©DëÅá²™8^2[ÍÃëv?^Ú¦at]U_”Þ×u}`˜¦½ï·×£;_ï÷¶¹a”ú­×þ 	©´9m3:\0\0\0\0IEND®B`‚'),(3,'Siva','Sai Krishna','1234','siva@gmail.com','9441981166','Hyderabad','500018','Male','Hyderabad','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0ªPLTEqâïÿÿÿ8ÆÙ\';zIÿíµ((&èÏ‰IIH©¿¾ÙíìüÐˆÝ«b·ÎÌŽ¥¢8h•íÕ“00.+E€OÐáeàî\0C/c“%5w3x7ÀÖ¯ÇÈ†ŸTä³j’ÞÚvÁ½ã©ZÿÏéúü\0\0B\ZÂÖ†æñÒõùœêóðÖÿí²\0\06G><µïöîÏ…uëøõýþ\0\"o\0\0<\'ºðö·ïö\'¼ÔÚ\0\0DÊîôABD\"\0F:7Ñæäÿö»Roržáë97/Ã¯v[n”!³¼¥¯mÓá\"*ràêÄ_ÈÎþè­tˆªJƒ‰/r{«¡4 ¯79?]š¡ºÅÕe¹Ã\0näÕ¤SŸ¼Ùâêiw‰1S‰\"c…Bx¡`¾Ôlq‹.˜²¢¸¥³È\Z?h^sœ+†¢L^Ž.]w˜®IOq5Mrƒ¬59b^kÂÌÙãèî?GhJ°q„‘‰qš‘wÊ½”_\\T,PToeI›‹aQK:aYBM\\]¤”fX‡Œ?ei3ŽšÁº ‘ÄÈääÐsÁ½¼Ã¶ßèÜÈÎŸ—Ì¸µç×ÍéÌÍÏœ\0\0ÁèÓ¥Ì²¤ç,\0\0TIDATxœÍÝ‹[Ç\0ðM‚Q¨Â\"µÕ<-„„‡\"¶T|$U¬åqQªRKµÚV­moß÷ÚÖ{ïÿ|g$ÙÝyœ3ss¾Ïï«ØOóûÎÌ™3³»Y+{T2…ÂT©TÌ³°œpþ£X*M\n™Jüÿ¼ç_^)Ló–í†ÿÇùâT!Vg\\ÂJ¡”çÂ¢áüoùRlÌ8„•™¢Ã˜Vq&%¹ÐÍ\n×Êd¹¤þ@´ÂBQ[×Ìe‘I(4ç5””H*a¦dÑð|¤UÊ}2\ZáŒþÜ\ZíüÉg#VJä¼]d‰ ¸\Z3T³o,\ZVC!óÅÆó‘¦F#aü>£po|ÆF}ai¯|®±´çÂ)Òå@´¦öT˜Éï­Ï5æõ†ª–pOh‹Qk¨j{<@[ˆ–F¿ŠîYå\Z‹±3o,>ÑÂÎF¤ð\rÍÀ€9QÂÊ(¡Ñ°ó¨~#,¼i[#0!<Ý	ôÂF,ÿpa[ŒÐÝ@ÔT¨°=¦`3à“(Ì¼i\'€ËLXh¯zaÃê\rH8ÕŽ@h½Û$„m„ÕÂ6hÔÄhá”Â6Zçy¡&ª„m<D½PT…p†Xn	²¿”…­8ü—ÉÖÁrmeéÃGggg\'«?_[Z±•\n¢TH,¯|8::ÚåÆáÎÉÉ3g\'_,]!CÊ—~™0C,¯tù:OèÅäÙÎkWˆŒ¶¬“+4ÿ¼õÓlWWTè\"_¬%RÒ†K„y’»üáh—@Èâìá%b^GHs¦†„ÌX]!0Jö‹B!ÍJ_^ší’™ñçš¹Ñ>R•ÑPyB6	ŒÂ‚*U™òDÈŒg®™ÕF $¨2nïò…nM×AµáM÷e‹õ0?±\0ÝµcÉ2A\nšp®Ðl©/[¬…™m´10!‹3fƒ•¿ðs…&>ËZê\n×O¨Ðk	š¬„Á\r-tŠÎä5ÝN‡»*r„&Eù\'Yþ B7‘Õ¥š’·dp„ú>Ë\nw0ZBgF²²£5%!Bƒ1\ZiÑ´…>mäŒÓˆÐ Ž–9‹ƒ¾Ð™’ýèÏ­§¡¶Ï²VTs)ì<ó)ž…~or0ð!…¿$ÑÄÈ™FX¨ïãô ¦ÂÉO’xbDü­I»â„/’xb¸y\n+@X\nQÂÎÉ¤±\"õåA@œðlR‡XM:î\Z¤b…g>Õ!WŒ€Ð …Ö\nlj	±Ä¢Hh’BÐjþ’Ô!’Ø*4I!t\Z\"+Í\'I-b‘/4Û÷§¡®GlMb‹Ð$…°ŽÍDˆ#yB“µ¼\Z\ZQÄ–5±)4:}\Z!†ØÒØ4…f§OÐBc\"D£BÃ«½P ‘Aln1\ZBÃ3`h¡1\"ˆù°Ððj(´gÃ\nIêÆ®°d„/z]›±šC]iuqq±\Z“N\nM/¦µ\n«]×WWWŸ=ç5vOzÄÝ³S‹ Ÿ±þâ·û>Ø·ýúfÑ|ò„Pb1 4½Ú.>s|N|p7TÑ§ÚD»Uh|Å·!¬®îqõy4Ø“(}¢?L-’AÚ63èE4¸óRF,¶/Úû•fñzèÎÆª¾ðm‘D´›BóÛ<aõ›ÐªA#Fx¸_(„½aj,÷\raWÄç«U¡p\ZB‰¥†Ðü¾·§	OÂ–±zýùn\"Â³Âi$æw…f{_7œ¾”7FÆV¿íZtR‰–Dwl™oœÜpR¸*z‰\\½þ¼ºxñ¢œÕücù …Ý-”E±V¸;àê·â62¹oõå‡çç/FìGóóó?üÐ9ïÿÙYq%…‹¾ÐèœbTU>/J§Ïÿóåwßt¸Ó19qñ£¾ÿîåËóçÓéS§Òç¿s“/$•Jô„ÓÐ*/E–B‘0vN¤üý©óßÏ+ëˆèLD‹è&½•YX\n=¡*N½œõ¤(¢³\"ZDŒØêYˆ²4þG=ÕDçÈÍ¢¹Øþ˜B 0}*ý\'P(%æ]!E\n?~X˜N½& ÚŽàŽ|„Óc¯rÆD;Ã„…æ8!LýaœEVj,‚\'›ìá@Œ0ý\ZšD!ÑžbB‚Ž‘B”p\n‹Lh^J1ƒ\'¼bLÌ3¡1Ðþ+6!xÅ–yÏfÿ·-„|¢]±Ì‹vr‰vÆ2_,Úd”ò‰vÁ\"ØþÆ\'|\'ä™àAß¶¨¥¢=e™Ÿ³Y6ˆ¦±@±d,ømÐÓˆ‰E!f\"búRd¡á‹É“¢ñäÑ´‰‰y¡ýw,»§ÿiÒ‘Fˆé½B=_ˆH$DÌDø_kFˆ4Äìò¡Bø_•Å½&…ðSš½#ºÕFÍ„	Ç^™ã!¾Ãþ¿•‹¿RøúÕ¡ô«?L†hlDïEª,ª„cWr,Œ}-DªZ³«T-\n¡Yá©ÖÃ–0.8¡ˆôBÕŽ_.Ôîc„Är¨ØKÉ…‡(}.1O±·…|C,ÂO¹ÁD’ÝS(ä‹¿LHYfvcŽb	í’ûa_ÈfËÆ©DH?F]!á7²5‰’EQ,$®£^ä¦ÎKyDñTuNeÔÂ‚3onhä0®[pCØŸŠ„ø³Q˜°Bpí‰Âj#¢·¡Q¡¸~È\'\n6øÂ±?ã˜„,úi®cˆ\\alÀdä:>ŠÈÆLÎÑÜ‹!\"òæ\"G8önlÀÜÍý4B\"\'‹QaŒLæ2T÷D	â“WÕÂq•QGHv_›PxàB8v0Na?Ý½‰BáWeÂãcÎÑÝ_*Óx(ä‹U˜›\"»GX*dÆ«<¡ë‹W˜!»Ï[!l«»Â1ßï(¥»W_-t3yõ=W8ÖäÅ+¬>oºÑj‹[˜;M÷ÌL›\n3tÏ=µ§0IøìZ{\nçŸ?lKan†ðÒöVŸnKaòYn~Ø0aÁI¯e£{Ÿ¥™Õ“acXxâà³ý¿Å#¬P~§7ºøýÀI‰ðÄñ_÷;‡°Fú½œ°Ow{ñû¡“á‰óÿÚïEYÌÍ„1tßùîFü{µ™Èã­Ã³5za\"(¤_ô»Ñ¬ÇƒÃ³äÂZHH}eOu‡Â¬ÇƒÃ³Ôã4×ö¦eË¶ò¥0Ð¬¬²:ÂgŸC¤½pÑŸI¶På²U»óô7ŽÎÕ\'þÊáy1üù­»o\'Iî7ÉŽ\r—DçUwn<]OÕëC}baw7/}è˜Ø¾uÿnÒÔ™KD…úGnåríÎÛëõz}p0Å¢¾)¾?tYœÂGÙ\'sbû‹ûw¡OóbŽ#ÔÛ3Ý·œÄ¹6?†Î	GúÄÄK°Ãgt|vôÈ:\'…ŽP§¯)[O×ƒ8O¸ ¾Õ—‡ŸLw„‚eóØ­·5l-Áj,OëCaãï‹€L(\"^ž=åÄ-ôpÍñ¿¿›Äòß—J\r>¡€xŒt3y™Æ–š|ðÓºÀç›-ÐòˆÃ7³\"aGÇÄ-\\\n!.‰G$@–EÐòˆ Kãgº)Ôÿ>ïõH}‘è#Äá‡‘2$n#R(þ>oDÈlœ‹Í¹Ë!áÍP™‘¦—Å@\n5¿W¿|[:DÝa\Z(6çzz>ŒÒ½½n«„·€å&˜BÍw#ÜQÙŠ±\0öôÜn\n×{{Ä¯•@VnîÂ„s	™¸îSS©¾ °§§%‡½½A¢|úq&¬È…-Fù†hÄÐNØ³¿±í\r‡„÷!c4ün2­÷Ì€€lœž\0{z.{=ÍàÍÞÞ\0QÐÍD‰F@á\0VŒ€YèÄà… °gØïÚŽöˆÃ_f!0‰¹È;­4Þ÷TV,…-I\\\0yB‡ø50…#úŠ@wvÕ€)L9Å¦È2\"ÐÇbBÙƒs8Ñ©ÎNauÆúfRØ+3^FŽózgü»óÊ·¡ƒ”ÅÐ°Rx8	]¡¢¯q4ø÷Â§aÊ)6JáŒð3y_ÃÅð~(­§e¸Ï§—BH7ÓŒc2!oŒj½‡‘B§?S…û^~H„¹9®Eã]²(a Øp„ˆ2ãÄ€¤˜öó)\ZïÆ	SƒÃáQP*Ä½X¶d …Cá“*!J„’÷r#…©ñKB!®ÌÈ„‚I(ŠWE¬pðP¸Š…¼•P%V¬0U¿,ÊŽ×pBA•QEÕ-L¥Bd™‘UF!-üxán±		ÇkpaŽûºj€PPP5rXßÏb\ZR©PXFÕBþ™††Ð/6A!tß«6/†j¹iýb¢W\nP¼N€„<¢Ž0ÕjøxBP)ä4áZÂ¡ÙŠ„J Zmn´„î^¸EˆmHB5 ŒT=¡³nbö½b!\0†+ªžÐÙ7…Ze&\"„\0AÂQSÈöÂM!º!å	ËF\\ú5…©¡Í_¨YfBÂèá¯0‘!²½ðnu¡¬UÃ•¼m.¼à_™ÑéfÂÂ~I³­%d›)ÛT˜\Zôr˜Ò6„9ñ~P_ØXõ…©>Wˆ<^ãAE/LŒ…©u&Ôî\n¥›	¡?M„)&4\0ºÂx\nâ…^—j$\\ï3£®3B5„lÙ°„)£:BÌÕ&Åq# Q\n;Fà5T_˜x<¿€H+Ìf—ñWC˜H,ŒëT}avdCçÃj	këð+ÝTÂ‰íÇZŸUO˜HléUMa6»©ùIu…‰ÊÎ¸–QK8=²ZI„‰ÄW÷þ¡15„Ó#¿Òÿ˜B6/àKZÈ|zBÈŒ°yD\n§GžùŒ…Ìx7QÂ¬aþH„l>îŒ×á‰„³#óPÈêêÖ:8‘Pavd{‹â³ÑY¬-Á	NOLlO?¨„,–ïAF«Z8=1òP£ÿ¡Ð­©®\n!›|·f_3H…,*Ë)i*%B–¼éeR^‚^èÄÚÖ=¦Œ>Ò&N³Üu<Ú\\‹áÓÄ!tâ«åãŒq†…Y7òä&íÐl‰¸„n¬=Þ\\xÐW¯3é÷|©/˜Îf³ŒÖñå£Íå8R×ˆX…nT*k—7wvîY_ïcÂcÇ¶·¿ØØØØ\\^^«hoÀñÅ~­¾Ji\0\0\0\0IEND®B`‚'),(4,'Sravan','Samala','1234','sravan@gmail.com','9505455877','Hyderabad','500018','Male','Hyderabad','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0·\0\0\0JÆ\0\0\0ŠPLTEÿÿÿ333///***&&&---\r\r\r$$$ààà\"\"\"\Z\Z\Zîîîsssùùùììì===âââ‘‘‘¼¼¼¤¤¤ÍÍÍ666ÙÙÙhhh™™™VVVÂÂÂ³³³GGGOOOfff}}}^^^‹‹‹­­­ƒƒƒŸŸŸ•••UUUÉÉÉqqqKj\0\0ÐIDATxœÝk—¢<€_ÚrWDE@Ñ/¸:ãüÿ¿÷êÌÎ®B¹¤¤-îómÏÙ3-±MÒ$MÿûO#³Å2IããºØG+Ã0VÑ¾Xã4Y.f:§¥‹q¨ãZ£”ãB(eå:ô\'cÝ“TÈrS8nÀL£	“®Sl–º\'«€qZøv‹8cûEúO¯—,6¼iÅdäq¦{êr˜o—åñsÍ\\÷ “|8¢ù-ç#Ñý˜„Ë‚n™*Ä²6¡îOAbqôû-‘¿0ÿ¸Ðý9dkŸ\"Iäõ×¯®o§«ÝíŠé^y­„S[\"_Rñ§/«WÞQwÍ#Ô×ýqB$K³ò`ìõ,ó¼p%JäŽ[¼˜—JQ$Ï˜~ªû3Ì÷–t‰Ü±ö/³Trtû[‡éäº?¶Ÿ²5É#î§îÏíÀb%Ë\0ó¡«Á{p‰ßÿ°ƒø·ÊïŽb‰ÜqíÀ}Ú\ZDbö€•Ê^¦çÚÛëþô\Zf‘Zíú™\n‰˜WB(ì‰ëyž;±FÅt´IxTž‹|a¶M/É2›‡a8Ï–Ée\Zù6ùStp>m( æEñµºæg×8òàš‰Ð­”€Ó6{¯Ofß8ªM†µ}f+ .!“]›§•ì&@©˜«!)Ú=ÐâXÑ¶Ã_ÝFÀã5I>Àv¿éu\r|¤lý±ƒÔïp‚ýœvÑ}ß‡Ì3¶N¿@î¦\rŒŽ¥>è¯{¹œ„‘&mŽ )«lÚ?þ\0Rb3cB#¸½AgBõŸ2aAÃ\02k´@þB0)DÒ7ÁQÞ B±5‡óeÒÃ}\0­_o42(½Â@½‰G€Ÿ/ès	ÀH£íÁŒ!;§§‘™|__©ä° {k>ˆ6\';”ï™%À§7EMÎ_Þ\0¾›¥ÉöÌ >½Ó?¶Bò$žÏí°Æï–ô,=\"¢`É\neÈ@iQ³ímã¤/€šEP``–\0m‚æDA<7Oý•ˆ¶r¤As€¥So¯“î³3,´a!½ÉmØn@–	Åž\0¶NõBYBj‘\\¼ÐW\ZW­Fyƒ×âÀ q•šžâR\"nØæ1•±Ù)dfV—üVW¶-K§ˆ#·‚Bõf\Z7%N|uä(ïGQÇeaÙuì&@¹ms:ö\Z”íÁTï,!þšÁp1hNT™c†5F¿Pÿ	«Ó²°\ZXT³4<7sŒ:x-	°Œ\0wù.…jŠ¬aZÎ˜à:NH™akø:€åã.nVn¼õ¡dó\07´n™ «3>g`íÚ70:†íƒžQ‡ç- ×«O°Ýh.X¥–n»s;nÉ¯2€ùLº5zè>#˜{Ÿnš2…þ&\n\\Yp!<jH	Tú‚¡ŽÏaU\'Ø@PÔóOö…\r¨wrÃF\0üvte¿D‚ê´A]¶lƒ8>àaçN#ŽŸCj¸¾‘~ä¸ß†ªøÁfï.Äñ9ÌDî»ˆ¹÷ïÈ­Ï{Öwl¼ÄíUä3òé¢Œ€Ù¹m¼+ÑŸ\"×u%°ùZš–XúÙ“.÷\"ï YCOÀ@÷¤Ëˆ¨}Ïmk‡ ùÄ÷¬¿áäã.B;Wv}¤ ì”rUPAî£LäÞIí…²|7.fí!½Çém[\n÷›ñ¾¼!7ö›þ¶x3/©Ž,¬úã‰ÞŽ›»ö\rjL™21&ý<§TäT1t™~•²Ödƒ–‰áˆg¿Æ½úy\rX&†%\Z÷ë9d™@,¹ú5Â²L\"ÊÈ Ía”Ê¤‡òËØöTj ­öÿÆ‡Æ\r6cJ‘Å\"ºŽÐàÑÝ²\nÈ¯6+‡¼ý%‘m$÷¼>SËûˆ“óÓ‡²ê‰õ$ÎsxÔ¡•|.ÆO÷øÝ€mú”–q‹nögñÜè;ø:\\Ï®G–ä‘?×òëÏ6™>í:Ó?¶»*óãs£oëO¼aö‹@¤\"9ÎˆÇÒçÎù93Ci³YÎ¦ÎóXîSV:ÌDn<¶{ÜÞ>”œ‚KÉ~Po—Ö-–yºóJßì—Â—á¡spVrÜ¾s~‡Ó]kë””9Ñi[–Ë|{ŠœòW„ã×tîÈ%9¿Ó5èðRó¨²ÊÈÍ.Yûiœæy’çi<Ýßþ]µ·£ˆ·¢®9ÉyÀŽŽ¬W3‹3·ƒ7¡Œw¿{,ñkê9³nG\rÉùânÀúHÉr¯•Võ®Óö‘}‰§KýIc/½s¹¨ÓtèÒCPzýI‡ì$k®\\€gy¨l>Óž;ÌGvR»ái÷¤çÇŽïâ1§Ýµk?mH¯gk¯{ìÒK*ÜP»m±ÜþG—§ïÚ{OI¯{l­mÙ9¸N=»öK¨íM;Vò´îù÷m\'«»á»žVŽU6¿7Ãl9«S÷Ò¦YËnVPGÝRolœn7Ÿ‘}ïloYÖ½Ë½}n¶°PaK›%õö-÷2„R á\"[^¯×e¶\nœ6»\nîe4ßß	äÿ(U~5.÷wšïyI¯÷çÒ¤e•ÜójòPöx¤©‚’û€M÷Fºõ‰ÐÔáOÍ¥ëú#b!,Œú:ESª¿}†X0\r£¾¼ZÑ=ôúÍ£GÃÞ©U(ž¢	Ô¹²’cÁMÔÅÎ•µÂ¬ë¢¬ÙÈ§Tst“›‚l¦NÇ)›\0ßÐÓ²õ7üf¶’³ð¯G:ßsL¸þ½¯°Û0WË::›óŒ¡Ò•Ëíã‡ÓKX”ïWRÚk˜S_ UpŠ©ö5N_PÔ+³p8—lUw\Z®ö•œl£šµ%ª_<«öVåE×Q‰ÿ©oH]^(úžc¨›ú‡ñÊ}Ë5«Øª’UÚ<ö7¥þöšBl)9×¦Ž§Kï Jb|\rlŸ\ržÇšžëÀôI×t$2¥kœ#=³øáüœ‹³5½ˆWzG ”RQ¾ëšHÉü©È¸ÕPÊNj°Ã?”Ô,1t=á83ž¯á•Þ}~±/¥7-Ù•I”ª„F\nÊ?0}þi4›Àò;’¶Ž—ùâRvÇ×Üú¯úB§Þ½”Nµ\rO”ß¥uT¿B—–b~TM·å&*ï+JY$D]ú¢žJá¡£rû\\Ê‘aÍÒþ¦RËìªË‘žÊ1PGgBåS9	g«2ÉÓr=¥ñEÚgå¼àèC…G;û(×`2ýúõ•g¨)‘¿­¤2ª¾cN•Ùª\\»D¤oì¤|mÌ0#]ç-.!©ä6<¹Úc%NOÈ DrJµvžEòR“ã¨RÚ@¨žÃæU¡ò]O4.Õ;t„j>åðIµÒÚÉX*ã]µÇ$ƒ[%wfQ5M||ÿíÄ¹hIWƒÉ=§~‰1äwoýÀÔëŸ¼:ÕÉ/q»ÜñŠù¬¹jUÞyÅ:Ä+pò”YáñÊ}5¨H¸·ªMA*YáðªÚ‰Ÿ÷Ÿ¶\\+nQ¤éíû¥¶{[çO‰ŽÇà¡|òû­›n„û³m¨Í/Ê†«]É¹küó‹þ	³¤ðkêé‰¯=öÚ•ù¾®¬Ùüuq%Â|íu—c‚Ý ‚jIýÚK>7±ìÞ—]–Ëlù¾«Èm‘hMmÁ™\r¯8fû»sžÕf–åço³†‹÷öþ•É7	k¼‰Lh0qXq¾äÛl<gwÂù8Ûæ—sÁœIK\'6¦¯r ïí\r,e5q=Ï¹ãyîÄ\nøaž0ýók˜›*á´^­ôÀt¯·mþ²8ÔÙeq‰xoz«“û“­-`Ú¡N¡ï6‹cË—ˆ¿~õ5òC¸±¬žmq{—b÷4Àø¢8ÉGÇ~Au0o—ëþtæÃ°øŽ¿d±á•»¶B˜KOÿ‚^­eœ7—½«}&Ìò?.ÿŠZmb¹)7hŒyóýý·÷ë«ú«Œ“ø@÷îÉÓ‡¼*!æ—·ïŒŠ8ÿG5H3³Å2IããºØG÷kŸ«h_¬qš/ZWÇÿm²ýÚ®¥\0\0\0\0IEND®B`‚');

/*Table structure for table `weight` */

DROP TABLE IF EXISTS `weight`;

CREATE TABLE `weight` (
  `user` varchar(200) DEFAULT NULL,
  `music` int(11) DEFAULT NULL,
  `movies` int(11) DEFAULT NULL,
  `television` int(11) DEFAULT NULL,
  `books` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `weight` */

insert  into `weight`(`user`,`music`,`movies`,`television`,`books`) values ('ZGluZXNoLmtvbmR1cmlAZ21haWwuY29t',0,0,0,0),('cGF2YW5AZ21haWwuY29t',0,1,0,0),('c2l2YUBnbWFpbC5jb20=',0,1,0,0),('c3JhdmFuQGdtYWlsLmNvbQ==',0,0,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
