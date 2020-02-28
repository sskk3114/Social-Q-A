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

insert  into `users`(`uid`,`name`,`lname`,`pwd`,`email`,`tele`,`city`,`zip`,`gen`,`addr`,`profilepic`) values (1,'Dinesh','Konduri','1234','dinesh@gmail.com','8143070865','hyderabad','500018','Male','Hyderabad','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0�PLTEq�����8��\';zI��((&�ωIIH�������Јݫb��̎��8h��Փ00.+E�O��e��\0C/c�%5w3x7�֯�Ȇ��T�j���v���Z�ρ���\0\0B\Z�ֆ���������֍��\0\06G><����υu�����\0\"o\0\0<\'������\'���\0\0D���ABD\"\0F:7������Ror���97/ïv[n�!������m��\"*r���_����t��J��/r{���4��79?]�����e��\0n�դS�����iw�1S�\"c�Bx�`��lq�.��������\Z?h^s�+��L^�.]w��IOq5Mr���59b^k�������?GhJ��q����q��wʽ�_\\T,PToeI��aQK:aYBM\\]��fX��?ei3�����������s���ö����Ο�̸�������Ϝ\0\0��ӥ̲��,\0\0TIDATx��݋[�\0�M�Q��\"��<-���\"�T|$U��qQ�RK��V�mo����{��|g$��y�3ss����O���̙3��Y+{T2��T�T̳��p��X*M\n�J����_^)L������T!Vg\\�J���¢��o�Rl�8������Vq&%���\n��d���@��BQ[��e�I(4�5��H*a�d��|�U�}2\Z���\Z���g#VJ�]d���\Z3T��o,\ZVC!����F#a�>��po|�F}ai�|�����)��@���T����5�����pOh�Qk�j{<@[��F���Y�\Z��3o,�>���F��\r���9Q��(�Ѱ�~#,�i[#0!<�	��F,�pa[���@�T��=�`3��(̼i\'��LXh�za��\rH8Վ@h���$�m���6h��h��6Z�y�&��m<D�PT�p�Xn	�����8�����rme��Gggg\'�?_[Z��\n�TH,�|8::�������3g\'_,]!Cʗ~�0C,�t�:O�����kW������+4����lWWT�\"_�%R҆K�y����h�@����%b^GHs����X]!0J��B!�J_^����皹�>�R��PyB6	�*U��DȌg���F $�2n��nM�A��M�e��0?�\0ݵc�2A\n�p��l�/[���m�10!�3f����s�&>�Z�\n�O��k	����\r-t���5�N��*r�&E�\'Y� B7�ե���dp��>�\nw0ZBgF���5%!B�1\ZiѴ�>m�ӈР��9���Й��������ϲVTs)�<�)��~or0�!��$��șFX��������O�xbD��I��/�xb�y\n+@X\nQ��ɤ�\"���A@��lR�XM:�\Z��b�g>�!W��� ��\nl�j	�ĢHh�B�j����!��*4I!t\Z\"+�\'I-b�/4�����GlMb��$����D�#yB���\Z\ZQĖ5�)4:}\Z!����4�f�O�Bc\"D�Bë�P��Aln1\ZB�3`h�1\"�����j(�g�\nI�Ʈ�d�/z]���C]iuqq�\Z�N\nM/��\n�]�WWW�=�5vOz�ݳS�������>ط���f�|�Pb1 4��.>s|N|p�7Tѧ�D�Uh|ŷ!���q�y4�ؓ(}�?L-�A�63�E4���R�F,��/���f�z��ƪ��m�D��B��<a����A#Fx�_(��aj,�\raW���U�p\ZB��������	O�z��n\"³�i$�w�f{_7���7F�V��ZtR��Dwl�o��pR�*z�\\����x���c� ��-�E�V�;���62�o�����/F��G���?��9���Yq%�����bTU>/�J�����w�t��19q񣏾��������S���s��/$�J���*/E�B�0�vN�������+���LD��&��YX\n=�*N����(��\"ZD����Y��4�G=�D��͢����B�0}*�\'P(%�]!E\n?~�X�N��& ڎ���|��c�r�D;Ä��8!L��a�EVj,�\'���@�0�\Z�D!ўbB���B�p\n�Lh^J1�\'�bL�3�1��+6!x��y�f��-�|�]���vr�v�2_,�d��v�\"���\'|\'����A߶���=e���Y6���@�d,�m�ӈ�E!f\"b�Rd���ɓ���Ѵ��y��w,���i��F��B=_�H$D�D�_kF�4���B�_�Ž&��S��#��F̈́	�^��!�������R��ա��?L�hlD�E�,��cWr,�}-D�Z��T-�\n�Y����Ö0.8���BՎ_.��c��r��KɅ�(}.1O���|C,�O��D��S(䋿LHYfvc�b�	���a_�f�ƩDH?F]!�7�5��EQ,$��^��KyD�TuNe���3onh�0�[pC؟����Q��Bp��j#����Q��~�\'\n6�±?㘄,�i�c�\\al�d��:>���L��܋!\"��\"G8�nl����4B\"\'�Qa�L�2T�D	❓W��q�QGHv_�Px��B8v0Na?ݽ�B�We��c���_*�x(�U��\"�GX*dƫ<��W�!��[!l���1��(��W_-t3y�=W8���+�>o��j�[�;M��L�\n3t�=��0I��Z{\n��?lKan����V�nKa��Yn~�0a�I�e�{���ՓacXx�����#�P~�7�����I����_�;��F����Ow{���������EY���1t���F�{����ó5za\"(�_����ǃó��ZHH}eOu���ǃó��4���e˶�0����:�g�C��pџI�P�U���7�Ώ�\'���y1����o\'I�7ɝ�\r�D�Uwn<]O��C}baw7/}���ؾu�n�ԙKD��Gn�r�΍���z}p0Ţ�)�?tY��G�\'sb���w�O�b�#��3ݍ��Ĺ6?��	�G���K��gt|v��:\'��P��)[O׃8O� �՗��Lw��e�ح�5l-�j,O�Ca��L(\"^�=��-�p�����ߗJ\r>��x�t3y�Ɩ�|��Ӻ���-���7�\"aG��-\\\n!.�G$@�E�� K�g�)��>��H}��#�ᇑ2$n#R(�>oD�ȁl��͹�!��P�����@\n5�W�|[:D�a\Z(6�zz>�����n�����&�B�w#�Qي�\0���n\n�{{į�@Vn�s	���SS�� ���%���A�|�q&�ȅ�-F��h��Nس���\r����!c4�n2��̀�l��\0{z.{=�����\0Q��D��F@�\0V��Y���� �g��ڎ���_f!0���;�4��TV,�-I\\\0yB��50��#��@�wvՀ)L9Ŧ�2\"��bBكs8���Nauƍ�f�R�+3^F��zg���ʷ����аRx8	]���q4��§a�)6J���3y_���~(��e����BH7ӌc2!o�j���B�?S��^~H��9�E�]�(a��p��2�Ā����)\Z��	S���QP*ĽX�d �C�*!J���r#���KB!��Ȅ�I(�WE�p��P������P%V�0U�,ʎ�pBA�QE�-L�Bd��UF!-�x�n�		�kpa���j�PPP5rX��b\ZR�PXF�B�����/6A!t߫6/�j��i�b�W\n�P�N��<��0�j�xBP)�4�Z¡��ِ��J�Zmn���^�E�mHB5 �T=��nb��b!\0�+����7�Ze&\"�\0A�QS���M!�!�	�F\\�5����_�YfB��ᯁ0�!���nu���U���m.��_���f��~I��%d�)�T�\Z�r��6�9�~P_�X���>W�<^�AE/L���u&��\n��	�?M�)&4\0��x\n�^�j$\\�3��3B5�lٰ��)�:B��&�q#�Q\n;F�5T_�x<��H+�f��WC�H,��T}avdC��j	k��+�T��Z�UO�Hl�UMa6���Iu���θ�QK8=��ZI���W���15��#����B6/�KZ�|z�BȌ�yD\n�G�����x7Q¬a�H�l>��ቄ�#�P����:8�Pavd{���Y�-�	NOLlO?��,��AF�Z8=1�P�������\n!�|�f_3H�,*�)i*%B���eR^�^����=��>�&N��u<�\\����!t���q��Y7��&��l���n�=�\\x�W�3��|�/��f�������8R׈X�nT*k��7wv�Y_�c�cǶ������\\^^�ho���~��Ji\0\0\0\0IEND�B`�'),(2,'Pavan','Chitineedi','1234','pavan@gmail.com','9618951936','Hyderabad','500018','Male','Hyderabad','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0��^�\0\0\0�PLTE���\0\0\0���\r\r\r���<<<���&&&���wwwZZZHHHOOOppp���������\"\"\"RRR������������{{{111���ddd���...��ݲ�����BBB^^^������777���V��`\0\0\n�IDATx��]炪:^���\"\"X`e���~�JH0@&p����H�dz���0��[{�*�n��_Ucy�9�h��@���RaA�z��� ��Dd�����Y\rm��N�kc�a׋ecۜd����3p�E�à�5S��@�7��&j:�\\t��^��ԣM9���P�e_8E�ڐq�~\'�ǖt��tM�V� H�����\"�P�U�Ƥ_[	��v�\'���x`�%B�ヤ3:4�\nb�!m�G	��g�t(F�A+����T>�^<���\'d�A��Hw�����7,%.M���|�vXt(�T�55�QV2	��ѡ(�<:�&!Cy� ����`\r�C��%\\:UV���L��XD�M�b�q���!e�qL���8ɠ�d�ϖ���#�e-�� 6|:|t(c|BRQ�&RXD�\0n�*��_l:4� \rGlB��������2�	�c>z�p#D��^�����\\��f���!eX�{��\'�[lͩO=�BH�L50���?�	�@�]׋���d��$;G[ǭ�)�e.p�)\r�ȄP��昲#F:��\"By$�\0c͊-�\\� ��Q��,��y�v\Z���b���a~8�K/{�����M�^aK�t�+�њ{\\B�G�:�I�sʡ5��VYj�?����!�_�l�U�E_��u9Za<�STÎdW�q���E���_�$�t��\\&�����i,W�b�ZEǉ���t�2��\'���\n�x��S��\'wk�<�#d��`��;��Q����pS���q�a����~=�NX��ZNVD����ML��d>Վ�[��k�@O��7)�܎�m��(�}���u�=��nS�q���,9B����~��(���\\N����8�Ѯs�2x�d���!���1�DS5}Kߑm��Q�+(ѧ0��p�i�\'�>8!#N��x�${W��C��f�m��¦�}\n����	Q�;�**�S2+�%1\n��ֱP���^�.�Zo����� ZOje���J���g�#��?0\"$,�W5@\n��J��!�^�I �\r�\0�f$Z���ΐy�6�#��ea��?���#v9[!7����f�/��1[���[�E���ENn�-ɞ��<�D2qx��st)O��t�FuK4�!�Y]��D�*��@�\'-IK��aD�9a��]�\n�$�a�^�t��\"+_F��ߐBQ���V��6ʨ���2�\\�|e���|H^�:�����ru&��f�Ti�I�pAP�\n�M��|��@\ZC��nY�];�8]B����$\"zQ�A [��:�������N��=iJ԰��E��Ķ�7H�\\@p�sH��\'{���k�֥�R���ښ?�^�.n����yd��t1�\r�y-���r��IH$��l�|�� ;T�DT�-��a���ꑂ�Aa�GWS�@wO��\r�Ӻڐ\\\\cq��{5@�qS�,��1t�/i��,P��F�>\Z��P��6�В�ɐ0�������nt!A\nװ&�� B&�)bު[��\00�݃a߰aXCÐ���r���_\0�.�~L,`��ə����Ծ�+�` ]��s%�j�b�����+��0���c��yJ�j��J���q?]�F�!�S���c:������m�\r����ᡔ�O\'ru)����\Z�t7&�iV8)����?J�QƂ�cw�$�!�W�W��GXk��ۣ���8��?����b�����y��<|\'��n�+�i�8]��Ԓ�j9_HY\n!�@U�Y�,p^�]\nX�\n���K�◿����+���)�9��#�l��X�x�ʕ��\"�L�9?����]ýQ_y�3S��O�4i-�K��}N�b���n�d�R�:�D���i89R�	J�Ǆ�I��3��TL�o1W�ݞ��K����6]��9��bu���f�a�5������7&ܜZf�b�=�>�ﻘ��C�枖��M�5�32:���]��]�f����q�;պ��4�˫9�0�@�����~l����?ǅ�S�m�;Ћ\0\Z�ő\n\0����&F\\�EM��~�e��&3��5dXë����O+��\\T�77V1w�\Z�cĴ�A�N���>\'9h>�\Z�3�Ѐ�զ/쮵8L��>�~�2�Z����0a��crnb�Ta#N�0�BI�rV$�C�m]@�T6��+hs�\0\'�vڕX�i���f����{Y�́�ќ�?����_��|�a.�=7�L\'H��(��s��\'#�8^5�1s5(a(�^\0��;eT*Ï���t���h���7�4R�@xRM�b��o.+(S�>edfa�1˺�Ep�������g���އN��P�\\vw}���t)�;�+�:�bR�%to~O����|Y�d3Z�ĝ�\'^l]r3�4��-}�Ӄ��#uթ�C�J�D���)_\Z�Z�f����1U{�0.�v*�u5w~�t7W`+����C�釲dC4�?�Ekqnӣދ��,��&/��������������l��Y��[��bc�#D��\rV�f����M_������ŎA����E�򍿸�\rw�.9DA���zo\\\n��\\&j�X�y�Q�1�$��R���P=z�$���`���Y\'I7i�� �NQ[�?a�=e�I7�6����%��91�q�jZ��/�����kZ���c��Y��j+�9�}\'�3��~���+Zl��Ֆ@���Μx ��XAx�\'�̽.\ra7�_ݓ7�a*�8���D��Კ8^2[͏��v?^ڦat]U_���u}`����ף;_�����a������	��9m3:\0\0\0\0IEND�B`�'),(3,'Siva','Sai Krishna','1234','siva@gmail.com','9441981166','Hyderabad','500018','Male','Hyderabad','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0�PLTEq�����8��\';zI��((&�ωIIH�������Јݫb��̎��8h��Փ00.+E�O��e��\0C/c�%5w3x7�֯�Ȇ��T�j���v���Z�ρ���\0\0B\Z�ֆ���������֍��\0\06G><����υu�����\0\"o\0\0<\'������\'���\0\0D���ABD\"\0F:7������Ror���97/ïv[n�!������m��\"*r���_����t��J��/r{���4��79?]�����e��\0n�դS�����iw�1S�\"c�Bx�`��lq�.��������\Z?h^s�+��L^�.]w��IOq5Mr���59b^k�������?GhJ��q����q��wʽ�_\\T,PToeI��aQK:aYBM\\]��fX��?ei3�����������s���ö����Ο�̸�������Ϝ\0\0��ӥ̲��,\0\0TIDATx��݋[�\0�M�Q��\"��<-���\"�T|$U��qQ�RK��V�mo����{��|g$��y�3ss����O���̙3��Y+{T2��T�T̳��p��X*M\n�J����_^)L������T!Vg\\�J���¢��o�Rl�8������Vq&%���\n��d���@��BQ[��e�I(4�5��H*a�d��|�U�}2\Z���\Z���g#VJ�]d���\Z3T��o,\ZVC!����F#a�>��po|�F}ai�|�����)��@���T����5�����pOh�Qk�j{<@[��F���Y�\Z��3o,�>���F��\r���9Q��(�Ѱ�~#,�i[#0!<�	��F,�pa[���@�T��=�`3��(̼i\'��LXh�za��\rH8Վ@h���$�m���6h��h��6Z�y�&��m<D�PT�p�Xn	�����8�����rme��Gggg\'�?_[Z��\n�TH,�|8::�������3g\'_,]!Cʗ~�0C,�t�:O�����kW������+4����lWWT�\"_�%R҆K�y����h�@����%b^GHs����X]!0J��B!�J_^����皹�>�R��PyB6	�*U��DȌg���F $�2n��nM�A��M�e��0?�\0ݵc�2A\n�p��l�/[���m�10!�3f����s�&>�Z�\n�O��k	����\r-t���5�N��*r�&E�\'Y� B7�ե���dp��>�\nw0ZBgF���5%!B�1\ZiѴ�>m�ӈР��9���Й��������ϲVTs)�<�)��~or0�!��$��șFX��������O�xbD��I��/�xb�y\n+@X\nQ��ɤ�\"���A@��lR�XM:�\Z��b�g>�!W��� ��\nl�j	�ĢHh�B�j����!��*4I!t\Z\"+�\'I-b�/4�����GlMb��$����D�#yB���\Z\ZQĖ5�)4:}\Z!����4�f�O�Bc\"D�Bë�P��Aln1\ZB�3`h�1\"�����j(�g�\nI�Ʈ�d�/z]���C]iuqq�\Z�N\nM/��\n�]�WWW�=�5vOz�ݳS�������>ط���f�|�Pb1 4��.>s|N|p�7Tѧ�D�Uh|ŷ!���q�y4�ؓ(}�?L-�A�63�E4���R�F,��/���f�z��ƪ��m�D��B��<a����A#Fx�_(��aj,�\raW���U�p\ZB��������	O�z��n\"³�i$�w�f{_7���7F�V��ZtR��Dwl�o��pR�*z�\\����x���c� ��-�E�V�;���62�o�����/F��G���?��9���Yq%�����bTU>/�J�����w�t��19q񣏾��������S���s��/$�J���*/E�B�0�vN�������+���LD��&��YX\n=�*N����(��\"ZD����Y��4�G=�D��͢����B�0}*�\'P(%�]!E\n?~�X�N��& ڎ���|��c�r�D;Ä��8!L��a�EVj,�\'���@�0�\Z�D!ўbB���B�p\n�Lh^J1�\'�bL�3�1��+6!x��y�f��-�|�]���vr�v�2_,�d��v�\"���\'|\'����A߶���=e���Y6���@�d,�m�ӈ�E!f\"b�Rd���ɓ���Ѵ��y��w,���i��F��B=_�H$D�D�_kF�4���B�_�Ž&��S��#��F̈́	�^��!�������R��ա��?L�hlD�E�,��cWr,�}-D�Z��T-�\n�Y����Ö0.8���BՎ_.��c��r��KɅ�(}.1O���|C,�O��D��S(䋿LHYfvc�b�	���a_�f�ƩDH?F]!�7�5��EQ,$��^��KyD�TuNe���3onh�0�[pC؟����Q��Bp��j#����Q��~�\'\n6�±?㘄,�i�c�\\al�d��:>���L��܋!\"��\"G8�nl����4B\"\'�Qa�L�2T�D	❓W��q�QGHv_�Px��B8v0Na?ݽ�B�We��c���_*�x(�U��\"�GX*dƫ<��W�!��[!l���1��(��W_-t3y�=W8���+�>o��j�[�;M��L�\n3t�=��0I��Z{\n��?lKan����V�nKa��Yn~�0a�I�e�{���ՓacXx�����#�P~�7�����I����_�;��F����Ow{���������EY���1t���F�{����ó5za\"(�_����ǃó��ZHH}eOu���ǃó��4���e˶�0����:�g�C��pџI�P�U���7�Ώ�\'���y1����o\'I�7ɝ�\r�D�Uwn<]O��C}baw7/}���ؾu�n�ԙKD��Gn�r�΍���z}p0Ţ�)�?tY��G�\'sb���w�O�b�#��3ݍ��Ĺ6?��	�G���K��gt|v��:\'��P��)[O׃8O� �՗��Lw��e�ح�5l-�j,O�Ca��L(\"^�=��-�p�����ߗJ\r>��x�t3y�Ɩ�|��Ӻ���-���7�\"aG��-\\\n!.�G$@�E�� K�g�)��>��H}��#�ᇑ2$n#R(�>oD�ȁl��͹�!��P�����@\n5�W�|[:D�a\Z(6�zz>�����n�����&�B�w#�Qي�\0���n\n�{{į�@Vn�s	���SS�� ���%���A�|�q&�ȅ�-F��h��Nس���\r����!c4�n2��̀�l��\0{z.{=�����\0Q��D��F@�\0V��Y���� �g��ڎ���_f!0���;�4��TV,�-I\\\0yB��50��#��@�wvՀ)L9Ŧ�2\"��bBكs8���Nauƍ�f�R�+3^F��zg���ʷ����аRx8	]���q4��§a�)6J���3y_���~(��e����BH7ӌc2!o�j���B�?S��^~H��9�E�]�(a��p��2�Ā����)\Z��	S���QP*ĽX�d �C�*!J���r#���KB!��Ȅ�I(�WE�p��P������P%V�0U�,ʎ�pBA�QE�-L�Bd��UF!-�x�n�		�kpa���j�PPP5rX��b\ZR�PXF�B�����/6A!t߫6/�j��i�b�W\n�P�N��<��0�j�xBP)�4�Z¡��ِ��J�Zmn���^�E�mHB5 �T=��nb��b!\0�+����7�Ze&\"�\0A�QS���M!�!�	�F\\�5����_�YfB��ᯁ0�!���nu���U���m.��_���f��~I��%d�)�T�\Z�r��6�9�~P_�X���>W�<^�AE/L���u&��\n��	�?M�)&4\0��x\n�^�j$\\�3��3B5�lٰ��)�:B��&�q#�Q\n;F�5T_�x<��H+�f��WC�H,��T}avdC��j	k��+�T��Z�UO�Hl�UMa6���Iu���θ�QK8=��ZI���W���15��#����B6/�KZ�|z�BȌ�yD\n�G�����x7Q¬a�H�l>��ቄ�#�P����:8�Pavd{���Y�-�	NOLlO?��,��AF�Z8=1�P�������\n!�|�f_3H�,*�)i*%B���eR^�^����=��>�&N��u<�\\����!t���q��Y7��&��l���n�=�\\x�W�3��|�/��f�������8R׈X�nT*k��7wv�Y_�c�cǶ������\\^^�ho���~��Ji\0\0\0\0IEND�B`�'),(4,'Sravan','Samala','1234','sravan@gmail.com','9505455877','Hyderabad','500018','Male','Hyderabad','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0�\0\0\0�J�\0\0\0�PLTE���333///***&&&---\r\r\r$$$���\"\"\"\Z\Z\Z���sss������===��⑑����������666���hhh���VVV��³��GGGOOOfff}}}^^^���������������UUU���qqqKj\0\0�IDATx�ݝk��<�_�rWDE@�/�:�������ήB���-��m��3-�M�$M��O#��2I���G+�0VѾX�4Y.f:���q��Z���B(e��:�\'cݓT�rS8n�L�	��Sl��\'��qZ�v�8c�E�O��,6�i�d�q�{�r�o���s��\\���|8��-�#����˂n�*Ĳ6��OAbq��-��0����9dk�\"I��ׯ�o�����^y��S[\"_R�/�W�Qw�#���qB$K��`��,�p%J�[���JQ$Ϙ~��3���t�ܱ�/�Trt�[���?���5�#�����b%�\0��{p���������b��q��}�\ZDb����^�������\Zf�Z����\n��WB(��y�;�F�t�IxT��|a�M/�2��a8ϖ�e\Z�6�Stp>m( �E��g�8����Ё�����6{�Of��8�M��}f+�.!�]����&@���!)�=��XѶ�_�F��5�I>�v��u\r|�l�����p���v�}߇�3�N�@\r���>�{������&m��)�l�?�\0Rb3�cB#��AgB��2aA�\02k�@�B0)D�7�Q� B�5��e��}\0�_o42(��@��G��/�s	�H����!;����|__����{k>�6\';���%��7EM�_�\0������ >��?�B�$��������,=\"�`�\ne�@iQ���m�/��EP``�\0m��DA<7O����r�As��So����3,�a!��m�n@�	��\0�N�BYBj�\\��W\ZW�Fy�����q����R\"n��1���)dfV��VW�-K��#��B�f\Z7%N|u�(�GQ�ea�u�&@�ms�:�\Z���T�,!���p�1h�NT�c��5F�P�	�Ӳ�\ZXT�4<7s�:x-	��\0w�.��j��aZΘ�:NH�ak�:���.nVn���d�\07�n� �3>g`��70:����Q��- ׫O��h.X��n�s;nɯ2��L�5z�>#�{�n�2��&\n\\Yp!<jH	T�����aU\'�@P��O��\r�wr�F�\0�v�te�D��A]�l�8>�a�N�#��Cj���~��߆���f�.��9�D������ȭ�{�wl���U�3�颌�ٹm�+џ\"�u%��Z��X�ٓ.�\"�YCO�@��ˈ�}�mk� ��������.B;Wv}����rUPA�L��I���|7.f�!���m[\n�����!7����x3/��,���ގ����\rjL�21&�<�T�T1t�~���d����g�ƽ�y\rX&�%\Z���9d��@,��5��L\"�Ƞ�a�ʤ�����Tj�����Ƈ�\r6cJ��\"�����ݲ\nȯ6+���%�m$��>S�����Ӈ���$�sxԡ�|.�O��݀m���q�n�g���;�:\\ϮG��?����6�>�:�?��*��s�o�O�a��@�\"9�������93C�i�YΦ��X�SV:�Dn<�{��>���K�~Po��-�y��J���spVrܾs~��]k디9�i[��|{���W���t��%9��5��R����.Y�i��y��i<���]��������9�y����W3�3��7��w�{,�k�9�nG\r���n��H�r��V�����}��K�Ic/��s���t��CPz�I��$k�\\��gy�l>Ӟ;�Gv�R��i���ǎ��1�ݵk?mH�gk�{��K*�P�m���G����{OI�{l��m�9�N=���K��M;V����m\'��ỞV�U6�7�l9�S�ҦY�nVPG�Rol�n7��}�loYֽ˽}n��PaK�%��-�2�R��\"[^��e�\n�6�\n�e4��	��(U~5.�w��yI���Ҥe���j�P�x������M�F������Oͥ��#b!,��:ES��}�X0\r���Z�=��ͣG�ީU(��	Թ��c�M��Ε�¬������Tst���l�N�)�\0��Ӳ�7�f�����G:�sL������0W�::��ҕ����KX��WR�k�S_�U�p���5N_P�+�p8�lUw\Z������l���%�_<��V�E�Q���oH]^(��c�������}�5�ت�U�<�7����Bl)9צ��K� Jb|\rl�\r��ǚ����I�t$2�k�#=�������5��WzG���RQ���H���ȸ�P�Nj��?��,1t=�83�����}~�/�7-ٕI����F\n�?0}�i4���;������Rv������B��ޝ��N�\rO�ߥuT�B��b~TM��&*�+JY$D]���Jᡣr�\\ʑa͏���R��ˑ��1PGgB�S9	g�2��r=���E�g���C�G;�(�`2����g�)����2��cN�٪\\�D�o�|m�0#]�-.!��6<��c%NOȠDrJ�v�E�R��R�@����U���]O4.�;t�j>��I����X*�]��$�[%wfQ5�M||��ĹhIW�ɍ=�~�1�wo�������:��/q������jU�y�:�+p�Y���}5��H���MA*Y��ډ����\\+nQ������{�[�O����|����n���m��/ʝ��]ɹk���	���k�鉯=�ڕ������uq%�|�u�c�� �jI��K>7��ޗ]��l����m�hMm��\r�8f��s��f���o��������7	k��Lh0qXq���l<gw��8��s��IK\'6��r���\r,e�5q=Ϲ�y��\n��a�0��k��*�^���t��m��8��eq�xoz�����-`ڡN��6�c�����~�5�C����mq�{�b�4���8�G�~Au0o���t�������d�ᕻ�B�KO��^�e�7���}&��?.��Zmb�)7h�y�����������@���Ӈ�*!旷8�G5H3��2I���G�k��h_��q�/ZW��m�����\0\0\0\0IEND�B`�');

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
