-- phpMyAdmin SQL Dump
-- version 
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 22.10.2021 klo 08:12
-- Palvelimen versio: 5.7.31-percona-sure1-log
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laurinyk_emmaniko`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `category`
--

INSERT INTO `category` (`id`, `name`, `sort`) VALUES
(1, 'ILLUSIONS', 6),
(2, 'Ekpyrotics', 8),
(3, 'Perfect square', 10),
(8, 'White light', 11),
(9, 'Unclimbed Puula', 15),
(10, 'Unclimbed', 16),
(16, 'Energy', 14),
(17, 'DARKNESS', 13),
(18, 'All of Me, All of You', 9),
(25, 'All and the rest', 17),
(20, 'Koivupuisto', 0),
(23, 'Le feu de la glace', 7),
(24, 'Calligraphies', 5),
(26, 'VALO ( LIGHT)', 12),
(27, 'Kosmogoni', 4),
(28, 'KOIVU grafiikka', 18),
(29, 'KOIVU prints', 3),
(30, 'KOIVU paintings', 2),
(31, 'KOIVUPUISTO inside rooms', 1),
(32, 'In the Birch Park in The National Museum 2019', NULL),
(33, 'transient', NULL),
(34, 'katoavainen', NULL),
(35, 'SEEING', NULL),
(36, 'tables', NULL);

-- --------------------------------------------------------

--
-- Rakenne taululle `feedback`
--

CREATE TABLE `feedback` (
  `fb_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fb_phone` int(10) NOT NULL,
  `fb_content` text CHARACTER SET utf8 NOT NULL,
  `fb_email` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `feedback`
--

INSERT INTO `feedback` (`fb_name`, `fb_phone`, `fb_content`, `fb_email`) VALUES
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('Miro', 407315047, 'testing', 'miro.kamppi@hotmail.com'),
('k', 0, 'testtttt', 'k'),
('Lauri Nykopp', 405003228, 'testi ke aamu', 'lauri.nykopp@gmail.com'),
('mlqjzwu', 2147483647, 'OGnqTB  <a href=\"http://sobfxbalraci.com/\">sobfxbalraci</a>, [url=http://pxdobriuhiaq.com/]pxdobriuhiaq[/url], [link=http://dusasigxnzju.com/]dusasigxnzju[/link], http://gwsnzgqeaskc.com/', 'rakwhd@zhwyuf.com'),
('Tuomas', 11111, 'Moi Lauri,\r\nTämä on testi.', 'jjjjj'),
('Morty', 877, 'Hello, my name is Morty Goldman; I just stumbled upon your site - www.laurinykopp.com - I\'m sorry to write in such an odd manner, I thought to call you but I didn\'t want to take up your time. What I have to say may be of great interest to you. Did you know that an overwhelming majority of businesses, organizations and celebrities buy likes and followers? What, you thought your competitor\'s likes and followers are organic and naturally gained? Ha ha. Just recently Gangman Style ( http://www.youtube.com/watch?v=9bZkp7q19f0 ) reached a record 2 billion views. Now imagine the scale of Gangnam Style\'s popularity being applied to your business! This is exactly how I deliver results to my clients - and I assure you that you\'ll be overwhelmingly pleased with the outcome. \r\n \r\nGive us a call: +1 (877) 410-4002 \r\nor visit us at http://www.SuperbSocial.net', 'support@superbsocial.net'),
('Morty', 877, 'Hello, my name is Morty Goldman; I just stumbled upon your site - www.laurinykopp.com - I\'m sorry to write in such an odd manner, I thought to call you but I didn\'t want to take up your time. What I have to say may be of great interest to you. Did you know that an overwhelming majority of businesses, organizations and celebrities buy likes and followers? What, you thought your competitor\'s likes and followers are organic and naturally gained? Ha ha. Just recently Gangman Style ( http://www.youtube.com/watch?v=9bZkp7q19f0 ) reached a record 2 billion views. Now imagine the scale of Gangnam Style\'s popularity being applied to your business! This is exactly how I deliver results to my clients - and I assure you that you\'ll be overwhelmingly pleased with the outcome. \r\n \r\nGive us a call: +1 (877) 410-4002 \r\nor visit us at http://www.SuperbSocial.net', 'support@superbsocial.net'),
('Lucile Mantyla', 123456, 'Do you have a Facebook page,Twitter profile or YouTube Video. You can increase Fans/likes,followers,views with our affoardable promotional Packages. \r\n \r\nPackages: \r\n \r\n1) 5,000 Facebook Fans/Likes ($70) = Order at:- http://tinyurl.com/mpdnkle \r\n2) 5,000 Twitter followers ($70) = Order at:- http://tinyurl.com/mbuwx56 \r\n3) 50,000 YouTube views ($60) = Order at:- http://tinyurl.com/k964qre \r\n \r\nYou can also order smaller or bigger package from our official website.For query, please contact the official website. \r\n \r\nThank You', 'pepdealc@gmail.com'),
('Jukka Helttula', 445678000, 'Moi Lauri,\r\n\r\nEn tiedÃ¤, muistatko enÃ¤Ã¤ minua. Tai no, tuskin olet unohtanut :) Olen vuosien varrella miettinyt, mitÃ¤ sinulle kuuluu. TÃ¤nÃ¤Ã¤n sitten googletin ja lÃ¶ysin mm. tÃ¤mÃ¤n sivun. Olet omistautunut taiteelle. Kiehtovaa...siksikin, ettÃ¤ itse olen suhteellisen pihalla ko. aihepiiristÃ¤.\r\n\r\nPaljon on vettÃ¤ virrannut vettÃ¤ Aurajoessa(kin) sitten viime tapaamisemme, mutta koska molemmat edelleen olemme elÃ¤vien kirjoissa, olisi kiintoisaa kohdata sopivassa kÃ¤Ã¤nteessÃ¤. \r\n\r\nTiedoksesi: vÃ¤ittelen Tampereen yliopiston johtamiskorkeakoulussa aiheesta \"Sattuma yhteiskuntaa muokkaavana voimana\" perjantaina 27.2. klo 12.00. Paikka on rakennuksen Pinni B sali 1907. VÃ¤itÃ¶stilaisuus on yleisÃ¶lle avoin.\r\n\r\nTerveisin Jukka, mies City-menneisyydestÃ¤\r\n\r\n', 'jukkahelttula@gmail.com'),
('Sandra', 0, 'Hi my name is Sandra and I just wanted to drop you a quick note here instead of calling you. I came to your Contact - Lauri Nykopp page and noticed you could have a lot more hits. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your niche. There is a company that you can get targeted traffic from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://www.arvut.org/1/dft', 'xdaaihulw@udkdoles.net'),
('Riitta Moisander', 2147483647, 'Lauri, voisitko soittaa?\r\nOlisi taideasiaa!!!\r\nyt. Riitta Moi', 'riitta.moisander@spyder.fi'),
('Sarah', 0, 'Hi my name is Tammy and I just wanted to drop you a quick message here instead of calling you. I came to your Contact - Lauri Nykopp website and noticed you could have a lot more traffic. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://fpslynx.se/9e5c', 'weffdgda@perkrad.com'),
('teemu', 12345315, 'testi', 'teemu.salomaa@esedulainen.fi'),
('Sarah Hughes', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE website traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://go.kevin-busch.com/-ei21																				Unsubscribe here: http://tdil.co/5p', 'cgccgpfvw@gpmetd.com'),
('Ann Weaver', 0, 'I discovered your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://rofel.me/1																			Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'zccjmjzqnvj@lohopv.com'),
('Ann Weaver', 0, 'I came to your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Start your free trial: http://stpicks.com/27																			Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'igqxjlv@hduhqavnon.com'),
('Ann Weaver', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://v-doc.co/nm/jkfq0																				Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'qpzkiymj@ohzmuafceb.com'),
('Panu', 469691994, 'Terve Lauri,\r\n\r\nolen verkostoitumassa Pohjois-Karjalan ja Savon alueelle alan tekijöiden kanssa. Asun tällä hetkellä metsästysmajassa itärajalla Kiteen rajavyöhykkeellä. Olisi mukava vaihtaa pari sanaa siitä missä menet ja mitä tuleman pitää.\r\n\r\nEn kehdannut soittaa koska tunsin sellaisen lähestymistavan kiusallisemmaksi kuin ottaa yhteyden tätä kautta.\r\n\r\nSitten kun sinulla on aikaa niin soittele tai laita sähköistä postia. Terveisin Panu', 'panu.raninen@me.com'),
('Ann Weaver', 0, 'This is a message to the Contact - Lauri Nykopp webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your site: http://pcgroup.com.uy/15 - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)																				Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'fdgnkum@iyqpwwe.com'),
('Ann Weaver', 0, 'I came to your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Start your free trial: http://stpicks.com/27																			Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'nvbjbydszc@asmwmhj.com'),
('Ann Weaver', 0, 'This is a message to the Contact - Lauri Nykopp webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your site: http://tdil.co/3p - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)																				Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'ycnbcy@hfaagjczw.com'),
('Ann Weaver', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE website traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://pcgroup.com.uy/15																				Unsubscribe here: http://pcgroup.com.uy/2a', 'kwxzcac@elbfnhikpq.com'),
('Ann Weaver', 0, 'I discovered your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://stpicks.com/27																			Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'wofbiik@yjxgnwqmmoj.com'),
('Sarah Carlson', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://v-doc.co/nm/jkfq0																													Unsubscribe here: http://pcgroup.com.uy/2a', 'xxhwcnib@cdwduhre.com'),
('Sarah Carlson', 0, 'I came to your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://url.euqueroserummacaco.com/ifa 															Unsubscribe here: http://pcgroup.com.uy/2a', 'smhagzovyvv@uyygkudmifd.com'),
('Sarah Carlson', 0, 'I came to your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://priscilarodrigues.com.br/url/v 															Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'wpgwehjxpck@ixmvmczfx.com'),
('Kari', 50, 'Moi,\r\nvaimo otti talteen 10.9. Hesarin jutun, luin sen vasta nyt. \r\nKoska vaimollani on norsun muisti, hän heti huomasi, että tuohan on sama Kurre Nykopp (tai Lauri Toivinen (tosin minä muistin että Toiviainen)), joka toi minulle muinoin Buffet Super Dynaction -sopraanosaksofonin Pariisista - onpa miehellä ollut monta rautaa tulessa!\r\nNyt siis vietät seesteisiä päiviä ja teet taidetta maaseudun rauhassa, niin se maailma menee. Tuo foni on edelleen minulla, ei ollut turha ostos.\r\n\r\nHyvää syksyä ja antoisia luovia hetkiä!\r\n\r\nterv. Kari\r\n', 'Tyllilä'),
('Sarah Carlson', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE website traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://v-doc.co/nm/jkfq0																													Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'psqwyn@yslpwo.com'),
('Andrea	Gibson', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: https://flxv.tk/6																													Unsubscribe here: http://pcgroup.com.uy/2a', 'ylmwzk@phikogqbs.com'),
('Andrea Gibson', 0, 'This is a comment to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your site: http://segundaibc.com.br/go/1i - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :) 																				Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'pbzjcwmvsvi@nlsqvjybpda.com'),
('Andrea Gibson', 0, 'This is a message to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your website: http://priscilarodrigues.com.br/url/v - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :) 																				Unsubscribe here: http://corta.co/f5m', 'pwkmcife@xamhhntbee.com'),
('Erma Bowman', 0, 'I am reaching out since we saw a link to your website and thought you would be a good candidate for our traffic service. We provide targeted website traffic to virtually any type of website. We target our visitors by both country and keywords that you either submit to us or we can do keyword research for you. We offer a seven day FREE trial period with free traffic so that you can try our service to make sure it will work for you. Which of your websites needs the most growth? Find out more here:http://segundaibc.com.br/go/1i																													Unsubscribe here: http://priscilarodrigues.com.br/url/11', 'edmwqunm@rbrxsris.com'),
('Erma Bowman', 0, 'I am reaching out since we saw a link to your website and thought you would be a good candidate for our traffic service. We provide targeted website traffic to virtually any type of website. We target our visitors by both country and keywords that you either submit to us or we can do keyword research for you. We offer a seven day FREE trial period with free traffic so that you can try our service to make sure it will work for you. Which of your websites needs the most growth? Find out more here:http://v-doc.co/nm/jkfq0																													Unsubscribe here: http://priscilarodrigues.com.br/url/11\r\nErma Bowman http://priscilarodrigues.com.br/url/v', 'hryphsrplq@zgcdpcqtck.com'),
('Erja Laurila-Hellman', 405325254, 'Hei,\r\nLöysin sivustosi googlaamalla, toivottavasti saamme sinuun yhteyden tätä kautta!  Tapasimme ohimennen to 16.11., kun olimme saattamassa Jones Jonesin Vladimir Tarasovia Töölön asunnolle. Teit ilmeisesti silloin triosta haastattelun. Olisi kiva tietää missä ja milloin se ilmestyy / on ilmestynyt - voisitko ehkä ilmoittaa meille..? Kuten kerroinkin, olemme Vladimirin kanssa oikein vanhoja ystäviä, tutustuimme 70-luvun lopulla Moskovassa. \r\n\r\nYst. terv.\r\nErja ja Ben Hellman', 'erjalh@gmail.com'),
('Virginia Williams', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://0nulu.com/rjv																				Unsubscribe here: http://0nulu.com/nbz', 'ggfmjmic@tvpgnkvt.com'),
('Virginia Williams', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://0nulu.com/sdq																				Unsubscribe here: http://0nulu.com/mvx', 'acrpjbwuld@gmail.com'),
('Virginia Williams', 0, 'This is a comment to the Contact - Lauri Nykopp webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your site: http://0nulu.com/rjv - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://0nulu.com/mvx', 'lgjbrmind@gmail.com'),
('Heidi Reynolds', 0, 'This is a message to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your website: http://0nulu.com/sdq - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://0nulu.com/mvx', 'eevrvw@gmail.com'),
('Heidi Reynolds', 0, 'This is a comment to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your website: http://0nulu.com/sdq - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://0nulu.com/mvx', 'bnycvgc@gmail.com'),
('Heidi Reynolds', 0, 'I discovered your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://0nulu.com/csy		 																	Unsubscribe here: http://0nulu.com/mvx', 'wafoffk@gmail.com'),
('Heidi Reynolds', 0, 'I came to your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://0nulu.com/opx		 																	Unsubscribe here: http://0nulu.com/nbz', 'txrhffd@gmail.com'),
('Heidi Reynolds', 0, 'This is a comment to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your site: http://0nulu.com/sdq - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://0nulu.com/nbz', 'fajyrhyjbhz@gmail.com'),
('Heidi Reynolds', 0, 'I discovered your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://0nulu.com/rjv		 																	Unsubscribe here: http://0nulu.com/mvx', 'megbccco@gmail.com'),
('Website Traffic', 0, 'This is a comment to the Contact - Lauri Nykopp webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will  dramatically increase your traffic to your website: http://0nulu.com/csy - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://0nulu.com/nbz', 'slbaudupme@gmail.com'),
('Carla French', 0, 'I am reaching out since we saw a link to your website and thought you would be a good candidate for our traffic service. We provide targeted website traffic to virtually any type of website. We target our visitors by both country and keywords that you either submit to us or we can do keyword research for you. We offer a seven day FREE trial period with free traffic so that you can try our service to make sure it will work for you. Which of your websites needs the most growth? Find out more here:http://0nulu.com/opx																				Unsubscribe here: http://0nulu.com/mvx', 'rfykzctjzi@gmail.com'),
('Carla French', 0, 'I am reaching out since we saw a link to your website and thought you would be a good candidate for our traffic service. We provide targeted website traffic to virtually any type of website. We target our visitors by both country and keywords that you either submit to us or we can do keyword research for you. We offer a seven day FREE trial period with free traffic so that you can try our service to make sure it will work for you. Which of your websites needs the most growth? Find out more here: http://pzr.eu/17																				Unsubscribe here: http://pzr.eu/18', 'eynkitqouq@gmail.com'),
('Rebecca Sutton', 0, 'I discovered your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Start your free trial: http://gd.is/y/nfhpq																					Unsubscribe here: http://pzr.eu/18', 'imdnymqtnz@gmail.com'),
('Barbara Kennedy', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://insl.co/m																				Unsubscribe here: http://gd.is/y/mun53', 'rzgovxalf@gmail.com'),
('Ramona Jordan', 0, 'This is a message to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will dramatically increase your traffic to your site: http://url.euqueroserummacaco.com/3ewon - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://xahl.de/q', 'dtcrqrb@gmail.com'),
('Ramona Jordan', 0, 'This is a comment to the Contact - Lauri Nykopp webmaster. Your website is missing out on at least 300 visitors per day. Our traffic system will dramatically increase your traffic to your website: http://stpicks.com/2rusd - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://xahl.de/q', 'hecjtsknabb@gmail.com'),
('Kerry Beck', 0, 'I came across your Contact - Lauri Nykopp website and wanted to let you know that we have decided to open our POWERFUL and PRIVATE web traffic system to the public for a limited time! You can sign up for our targeted traffic network with a free trial as we make this offer available again. If you need targeted traffic that is interested in your subject matter or products start your free trial today: http://xahl.de/p																				Unsubscribe here: http://xahl.de/q', 'evyhrvmp@gmail.com'),
('Kerry Beck', 0, 'I discovered your Contact - Lauri Nykopp page and noticed you could have a lot more traffic. I have found that the key to running a website is making sure the visitors you are getting are interested in your subject matter. We can send you targeted traffic and we let you try it for free. Get over 1,000 targeted visitors per day to your website. Check it out here: http://insl.co/11																					Unsubscribe here: http://xahl.de/q', 'mwpaipezggt@gmail.com'),
('AcheecofRify', 2147483647, ' The ED resulting from that surgery can be either temporary or permanent.  Thus, when the muscles in the penile area are relaxed, more blood will type in the penis and a bigger harder erection will occur. \r\nhttps://www.cialissansordonnancefr24.com/prix-du-viagra-et-du-cialis/ ', 'raihooveiy@bestmailonline.com'),
('Kerry Beck', 0, 'This is a comment to the Contact - Lauri Nykopp admin. Your website is missing out on at least 300 visitors per day. Our traffic system will dramatically increase your traffic to your site: http://insl.co/11 - We offer 500 free targeted visitors during our free trial period and we offer up to 30,000 targeted visitors per month. Hope this helps :)											 					Unsubscribe here: http://xahl.de/q', 'luwsvevanzl@gmail.com'),
('Lila Hely', 79, 'Hi\r\n\r\nShop the full Range of Mens and Womens Oakley Sunglasses here at discount prices $19.95! Check out all our sunnies - Complete collection available @ http://k.tlnk.men/3mZL0v\r\n\r\nKind Regards,\r\n\r\n\r\nIf you prefer not to receive future emails, please click http://www.unsubscribe.review/unsubscribe?list-manage=laurinykopp.com\r\n\r\n\r\n\r\n\r\nContact - Lauri Nykopp --- https://laurinykopp.com\r\nFacebook|Twitter', 'adam.cafealt@gmail.com'),
('Markku Saarits', 505276521, 'Hei.\r\n\r\nOnko niin, että isäsi Tola Toivinen täyttää 9.6.2018 tasan 100 vuotta ?\r\n\r\nterv. markku ja satu saarits.\r\n\r\nKerro terveisiä myös äidillesi Annelle\r\n', 'marksaarits@gmail.com'),
('Robin Hodgetts', 70, 'Hey there\r\n\r\nBuy MK Designer Handbags & Accessories as a gift with more than 80% DISCOUNT only today at http://lsls.ga/clicksave=laurinykopp.com\r\n\r\nKind Regards,\r\n\r\n\r\nContact - Lauri Nykopp --- https://laurinykopp.com\r\nFacebook | Twitter', 'sales@dyl.com'),
('Brenda Erwin', 570, 'For a limited time we have lowered the rate on targeted website traffic. We have visitors from virtually every country on Earth. Each visitor is targeted by both country and keywords that you submit when you start your free trial period. If you need more visitors or product sales try our service free for seven days and we will send you 500 free visitors during the trial. There are no contracts and if you cancel during the trial period you will not be charged anything! Start your trial today: http://stpicks.com/2rusd\r\n\r\n\r\n\r\n\r\n\r\n\r\nUnsubscribe here: http://stpicks.com/2ruse', 'erwin.brenda60@gmail.com'),
('Elizabeth Gonzalez', 0, 'Have you seen this?\r\n\r\nhttp://businesshacks.online/may/2018/new-lead-gen-method\r\n\r\nIts so simple, I had to check it out to believe it. \r\n\r\nElizabeth G\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nMy apologies if this commercial message was not relevant for you. To prevent any future correspondence please visit: http://businesshacks.online/out.php/?site=laurinykopp.com\r\n', 'elizabethghoa2gonzalez@aol.com'),
('Megan Rodriguez', 0, 'Hi,\r\n  Based on your google rank Id say you are doing at least ok on your link building, but if your rank increased could you handle more visitors?  \r\n\r\nWe provide the Best Quality Contextual Link Building to Boost Your Site’s Ranking in Search Engines.\r\n\r\nWe also offer a 7 day free trial with free links so you have nothing to lose:\r\n\r\nhttps://www.leadaccelerator.online/seo?=laurinykopp.com\r\n\r\nRegards,\r\nMegan\r\nLink Building Specialist\r\nSEO Vale\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding links for your website, please opt out here: https://www.leadaccelerator.online/out.php/?site=laurinykopp.com\r\n', 'meganmg96krodriguez@aol.com'),
('Brian Sherman', 111, 'Hi,\r\n\r\nWould you like 12,000 visitors coming to your website in one week?\r\nThese are people who are interested in seeing what you have to offer.\r\n\r\nVisitors come from online publications in your niche via\r\nfull page popups of your website. \r\n\r\nOur service is like no other.\r\n\r\nCyber Monday Sale:\r\nGet 12,000 interested visitors in 7 days for just $74.99.\r\n\r\nLarger packages available\r\n\r\nFor more info please go to https://traffic-stampede.com\r\n\r\nHope to see you on our site.\r\n\r\nBest,\r\nBrian\r\nTS\r\n\r\n', 'cybermondaysale@email.com'),
('Emma Parker', 573, 'Hi, wanted to say what a great site you have.  Was wondering could your company handle more customers?\r\n\r\nWe connect people interested in your niche with businesses that do busienss in that niche.  Learn how we can drive more visitors to your site and help you grow your business.\r\n\r\nhttps://promoyoursite.icu/t3-visitors?=laurinykopp.com\r\n\r\nRegards\r\nEmma\r\nTraffic Expert\r\nChoice Traffic\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nIf you did not like this commercial message you  may opt out here:  https://promoyoursite.icu/unsubscribe.php?site=laurinykopp.com \r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'emmahdu30parker@aol.com'),
('Elossa 24h - ohjelma', 0, 'Hei,\r\n\r\nkiitos taannoin antamastasi ajasta Elossa 24h - ohjelman kuvauksissa.\r\n\r\nKuvasimme kymmenissä eri kohtaissa eri puolilla Suomea. Näistä noin 75 eri paikassa kuvatusta materiaalista osa päätyi ohjelmaan ja osa valitettavasti ei ole mukana tv-ohjelmassa.\r\nSinuun liittyvä kuvaus valitettavasti ei ole mukana tv-toteutuksessa.\r\n\r\nSyitä kuvattujen osuuksien poisjäämiselle voi olla useita. Tavallisimmin syy on usein se, että kuvatusta materiaalista ei jälkituotannossa ole onnistuttu tuottamaan sellaista lopputulosta, joka olisi ohjelmaan sopiva. Saattaa olla, että kuvauksissa ei ole saatu taltiotua materiaalia odotetulla tavalla, materiaalissa on jotain teknistä virhettä, aika kuvauksissa on loppunut kesken toimivan lopputuloksen kannalta tai osuus ei vain \"mahdu\" mukaan ohjelma-aikaan. \r\nNäin kävi noin kymmenelle lokakuussa kuvatulle tarinalle.\r\n\r\nTämä on meille harmittava tilanne, mutta erityisesti sinulle ja muille kanssasi meille aikaansa antaneille.\r\nPyydän anteeksi, että emme pystyneet kuvatusta materiaalista ohjelmaosuutta toteuttamaan. \r\n\r\nOhjelma alkaa sunnuntaina 6.1. klo 20, TV1 ja ensimmäiset materiaalit ovat nähtävissä kanavalla lyhytohjelmien muodossa sekä Areenassa.\r\n\r\nhttps://areena.yle.fi/1-3783740\r\n\r\n \r\n\r\nKiitos antamastasi ajasta ja vaivannäöstä.\r\n\r\n \r\n\r\nYstävällisin terveisin,\r\n\r\nEeva Rantanen', 'eeva.rantanen@itv.com'),
('Megan Rodriguez', 0, 'Hi,\r\n  Based on your google rank Id say you are doing at least ok on your link building, but if your rank increased could you handle more visitors?  \r\n\r\nWe provide the Best Quality Contextual Link Building to Boost Your Site’s Ranking in Search Engines.\r\n\r\nWe also offer a 7 day free trial with free links so you have nothing to lose:\r\n\r\nhttps://www.leadaccelerator.online/seo?=laurinykopp.com\r\n\r\nRegards,\r\nMegan\r\nLink Building Specialist\r\nSEO Vale\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding links for your website, please opt out here: https://www.leadaccelerator.online/out.php/?site=laurinykopp.com\r\n', 'meganmg96krodriguez@aol.com'),
('Rachel Miller', 0, 'Hey, this is really cool, helps get traffic\r\n\r\nhttp://trafficstorm.top/st/?=laurinykopp.com\r\n\r\nKind of nice to have another option up my sleeve when it comes to marketing my site.  Hope it helps you too.\r\n\r\nRachel M\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4 Long Shoals Rd\r\nSte B\r\nArden, NC 28704\r\n\r\nMy apologies if this commercial message was not relevant for you. To prevent any future correspondence please visit: http://trafficstorm.top/agone.php/?site=laurinykopp.com\r\n', 'cumdths@aol.com'),
('Taneli Haro', 40, 'Moi\r\n\r\nTies missä ollaan nähty viimeks - ainakin Helsingin kaupunginmuseossa jossa me esitettiin jotain merkillistä jonkun taiteilijan kirjeisiin perustuvaa dialogia ja sä soitit fonia - eipä näitä montaa esitystä ollut, joskus ammoin 80-luvun alussa kun vielä hilluin YTllä. Sittemmin ehkä Radio Cityn merkeissä, olin siellä toimittajana 85-87 ...kenties jossain näissä merkeissä. \r\n\r\nNyt vaivaa sellanen hämärä muistikuva jolla ei ole mitään merkitystä mihinkään - mutta tsekkailin miltä näyttää uusi urheiluauto Alpine ja siinä yhteydessä tuli mieleen että mahdollisesti sinä ajoit Ranskasta Suomeen jollain todella makeella urheiluautolla joka oli ihan hirvee tykki ja muotoilultaan upea. Yhdistän tämän visuaalisen muiston vahvasti sinuun. Auto oli sinulla täällä Suomessa vain vähän aikaa, sitten en enää nähnyt sitä. Toinen mahdollisuus olis Teppo Turkki, mutta Tepolla oli ruskea Lancia, ei muistaakseni mitään supersport kiituria. \r\n\r\nTuleeko mitään mieleen? \r\n\r\nTällä hetkellä puuhailen Marikki Hakolan ohjaamassa oopperaproduktiossa / leffassa  TV-monikameraohjaajana.\r\nKaija Saariahon musiikki, 4 tanssijaa ja Riikka Hakola solistina. Virtuaalilavastettu green screen proggis . \r\n\r\nmuinaismuistoisin terveisin, Taneli Haro\r\n\r\n \r\n\r\n', 'taneli.haro@gmail.com'),
('Kelley Rodgers', 0, 'Hi,\r\n\r\nWe are the supplier of ready made AliExpress dropshipping business websites.\r\nWould you like a new business in addition to the one you have now?\r\n\r\nNo stock, No headaches, all items are dropshipped direclyt from the suppliers.\r\nThere are no monthly fees -  domain and hosting are also n/c.\r\n\r\nYou keep 100% profit of every of every sale. \r\n\r\nTo learn more please go to https://dropshippingincome.com\r\n\r\nBest,\r\nKelley\r\nDSI', 'ecommercepros@outlook.com'),
('Madison Williams', 0, 'Hi,\r\n  Your website seems to indicate that you have a successful business, but could you handle even more customers?  \r\n\r\nWe provide targeted website visitors that you can convert into leads and customers.  \r\n\r\nWe also offer a 7 day free trial so you have nothing to lose:\r\n\r\nhttps://www.businesstraffic.top/traffic?=laurinykopp.com\r\n\r\nRegards,\r\nMadison\r\nLead Specialist\r\nSEO Vale\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding traffic for your business, please opt out here: https://www.businesstraffic.top/out.php/?site=laurinykopp.com\r\n', 'madisondtn49williams@aol.com'),
('Megan Rodriguez', 0, 'Hi,\r\n  I had a look at your Instagram Instagram and it looks pretty good.  \r\n \r\nThe question I have is this, is your Instagram giving you the traffic and engagement that you deserve?  \r\n \r\nWe help people organically increase their followers and engagement.  Discover how we can help you get the genuine followers you deserve:\r\n\r\nhttps://www.leadaccelerator.online/insta?=laurinykopp.com\r\n\r\nRegards,\r\nMegan\r\nInstagram Growth Specialist\r\nSEO Vale\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding Instagram for your website, please opt out here: https://www.leadaccelerator.online/out.php/?site=laurinykopp.com\r\n', 'meganmg96krodriguez@aol.com'),
('Gina Cortez', 917, 'Hey, My name is Gina. Today is a special day, because I want you to focus on what you do best and allow me to handle my passion, photography editing. When I was a kid, my father had converted the basement into a Dark Room. I would sit with him as he meticulously developed each roll of film. Chemicals and darkrooms have gone away as technology developed but I stayed up to date and realized my editing skills are way better and more fun!\r\n\r\n\r\nI am an expert editor with 10 years experience. Let me prove my skills with a no obligation Free Trial. ginaphotoediting@gmail.com\r\n', 'ginaphotoediting@gmail.com'),
('Leandro Khull', 0, 'Hello,\r\n\r\nWould you like a cloud accounting app that makes operating your small business painless, fast and also secure? Automate things such as invoicing, planning expenditures, keeping track of your schedule but also following up with clientele in just a couple of clicks?\r\n\r\nCheck the video : http://loost.xyz/Y1AT9 and try it at no cost for 30 days.\r\n\r\nAll The Best,\r\n\r\nLeandro\r\n\r\nAbsolutely not interested by cloud accounting?  We wont email you again : http://loost.xyz/XfLQG\r\n\r\nSubmit as junk e-mail : http://loost.xyz/IdeCx', 'noreply@mycloudaccounting6074.org'),
('George Martin', 385, 'Would you be interested in submitting a guest post on georgemartjr.com or possibly allowing us to submit a post to laurinykopp.com ? Maybe you know by now that links are essential\r\nto building a brand online? If you are interested in submitting a post and obtaining a link to laurinykopp.com , let me know and we will get it published in a speedy manner to our blog.\r\n\r\nHope to hear from you soon\r\nGeorge', 'george1@georgemartinjr.com'),
('Kurtis Schreiner', 951, 'Hello There,\r\n\r\nAre you presently utilising Wordpress/Woocommerce or perhaps will you project to implement it as time goes on ? We provide more than 2500 premium plugins as well as themes absolutely free to download : http://briefsy.xyz/IuPtE\r\n\r\nThank You,\r\n\r\nKurtis', 'noreply@thewordpressclub5533.pw'),
('Jen Harrel', 555, 'Hi,\r\n\r\nThis is Jen over at DSI are you familiar with us?\r\n\r\nWe are the supplier of ready made AliExpress dropshipping business websites.\r\n \r\nAre you looking for an e-commerce business but don’t have time to build it from scratch?\r\nAverage markup on products is 300% you keep all the profits.\r\n\r\nNo stock, No headaches, all items are dropshipped directly to your customers.\r\nThere are no monthly fees.  \r\nSocial media marketing plan, domain and hosting are also included at n/c.\r\n\r\nFor more info and to see available sites live please go to https://dropshippingincome.com\r\n\r\nWe look forward to seeing you there.\r\n\r\nBest,\r\nJen\r\nDSI\r\n\r\n\r\n', 'excellence1@tutanota.com'),
('Wellu Hämäläinen', 50, 'Hei Lauri!\r\n\r\nOnko teillä tarvetta laadukkaille valokuville referenssikohteestanne Mikkelin Perhetalosta?  Olen arkkitehtuurivalokuvaaja ja sain toimeksiannon valokuvata tämän näyttävän kohteen Mikkelissä.\r\n\r\nValokuvat ovat lisenssikuvia ja toimitan niitä hankkeen eri osapuolille. Jos teillä on tarvetta tällaisille referenssikuville, niin kuviin voi\r\ntilata käyttölisenssejä kappaleittain. Käyttölisensseillä voitte kuvia käyttää vapaasti omassa viestinnässänne ja markkinoinnissanne sähköisessä\r\nmediassa tai printissä.\r\n\r\nTässä linkki valmiiksi käsiteltyihin kuviin:\r\n\r\nhttps://showcase.dropbox.com/doc/Perhetalo--Ajm9AicRwRaWQ19_ShtWP4_HAQ-oekTPacCGFrKtrj2yyTgA\r\n\r\nKuvien kappalehinnat ovat 89 euroa + alv / kpl ja hinta sisältää 2048px leveän kuvatiedoston, joka sopii lähes kaikkeen nettikäyttöön\r\nja pienikokoisiin printtijulkaisuihin. Kuvista on mahdollista tilata myös tarkempia HIRES-kuvia, jotka sopivat vaativampaan käyttöön ja\r\ntarkkoihin isokokoisiin tulostuksiin. Jos HIRES-kuville tai laajemmille käyttölisensseille on tarvetta, niin lasken mielelläni tarjouksen niistä erikseen kuvatarpeidenne mukaan.\r\n\r\n\r\nYstävällisin terveisin:\r\nWellu Hämäläinen\r\nP.050 3536030 ', 'wellu@welluhamalainen.com'),
('Brooke Smith', 0, 'Hi,\r\n  You have a great website.  May I ask how your SEO is doing?\r\n\r\nDo you have enough people coming to your website?\r\n\r\nWe can help improve your SEO.  \r\n\r\nhttps://businessseo.top/wal/?=laurinykopp.com\r\n\r\nRegards,\r\nBrooke\r\nSEO Expert\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding seo for your business, please remove yourself here: https://www.businessseo.top/out.php/?site=laurinykopp.com\r\n', 'brookecvsulsmith@aol.com'),
('Scott Harrel', 0, 'Hi,\r\n\r\nI came across your website and thought you may be interested.\r\n \r\nWe are the supplier of turnkey dropshipping stores.\r\nThe average markup on products is 300%\r\n\r\nYou keep all of the profit on every sale.\r\nNo stock, No headaches, all items are dropshipped direcly from the supplier.\r\n\r\nSocial media marketing materials included to help get you sales.\r\nThere are no monthly fees -  domain and hosting are also n/c.\r\n\r\nTo see our latest available dropship stores please visit us at https://dropshippingincome.com\r\n\r\nWe look forward to seing you there. \r\n\r\nBest,\r\nScott\r\nDSI\r\n\r\n\r\n', 'topshops@tutanota.com'),
('Wilhemina Garten', 29, 'Hi There,\r\n\r\nAre you currently using Wordpress/Woocommerce or maybe will you think to make use of it eventually ? We provide much more than 2500 premium plugins along with themes free to get : http://shortic.xyz/7Hhyj\r\n\r\nThank You,\r\n\r\nWilhemina', 'noreply@gplforest5186.org'),
('Sammyfef', 2147483647, 'Good day \r\n \r\nWe are a manufacturer. We wholesale LV bags at a wholesale price.  Please check our albums and email me your order list.  I will send you the price details ASAP. \r\n \r\nLV albums: https://dream2017.x.yupoo.com/collections/486603 \r\nUGG Boot: https://sxxy2009.x.yupoo.com/albums \r\nMoncler/Canada Goose Jacket: https://x.yupoo.com/photos/down-jackets/albums \r\n \r\nAlso please send me what you want if the products are not listed on our albums. \r\n \r\nEmail Us: onlinesalevip@gmail.com \r\n \r\nTo your success, \r\n \r\n \r\nContact - Lauri Nykopp - http://www.laurinykopp.com', 'bxsi56@sina.com'),
('Savannah Garland', 573, 'You look like a solid company based on your site, I assume you do well. \r\n\r\nDo you have the infrastructure/sales/support in place to handle considerably more sales?\r\n\r\nWe find people that are interested in your niche and send them to you.  Discover how we can send you more potential leads:\r\n\r\nhttps:///webcustomers.icu/up?=laurinykopp.com\r\n\r\nSavannah\r\nChoice Traffic\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nNot the right marketing message for you?  If not, please opt out here:  https:///webcustomers.icu/unsubscribe.php?site=laurinykopp.com\r\n\r\n\r\n\r\n\r\n\r\n', 'savannah@webcustomers.icu'),
('Ryan C', 0, 'Are you hiring?\r\n\r\nIf so, we can help you hire the right person, fast.\r\n\r\n- Top job sites with one submission\r\n- All candidates in one place\r\n- No charge for TWO WEEKS\r\n\r\nPost Jobs Now for FREE for Two Weeks:\r\n\r\nhttp://www.TryProJob.com\r\n\r\n* Use offer code 987FREE -- Ends Friday, Nov. 29th at 11:59pm *\r\n\r\nPro Job Network \r\n10451 Twin Rivers Rd #279 \r\nColumbia, MD 21044 \r\n\r\nTo OPT OUT, please email ryanc@pjnmail.com with \"REMOVE laurinykopp.com\" in the subject line.', 'ryanc@pjnmail.com'),
('Kelly Wilson', 224, 'Hey I see you are doing amazing as a company, good job!  It seems hard work is a rare things these days.  \r\n\r\nI wanted to offer you a chance at even more customers, is that something you would like?\r\n\r\nIt is the holiday season after all, so check it out:\r\nhttps://webtraffic4you.top/up/?=laurinykopp.com\r\n\r\nCheers!\r\n\r\nKelly\r\n\r\n\r\n\r\n\r\n\r\nWeb Traffic 4 You\r\n410 E Santa Clara Street Unit #814\r\nSan Jose, CA 95113\r\n\r\nIf you are unintersted in this type of marketing:\r\nhttps://webtraffic4you.top/unsubscribe.php/?site=laurinykopp.com', 'kelly@webtraffic4you.top'),
('Jenny Cathcart', 79, 'Acquiring GOV backlinks is one of the most sought-after link building strategies that’s still popular among SEO experts today.\r\n\r\nAlthough Matt Cutts (the former head of Google search quality team) has said that Google does not give any special importance to .gov domains, seasoned SEO practitioners have proven that powerful backlinks from government websites can improve your website’s overall search visibility.\r\n\r\nMore info:\r\nhttps://www.monkeydigital.io/product/gov-backlinks/\r\n\r\nthanks and regards\r\nMike\r\nmonkeydigital.co@gmail.com\r\n', 'cathcart.jenny@hotmail.com'),
('Lisa Rose', 224, 'Hi,\r\n\r\nI know this is a crazy month, but are you happy with how your website is doing?\r\n\r\nCould you use a little more traffic? How about a lot more?\r\n\r\nWe help businesses get thousands more visitors -- without hassle or a huge expense:  \r\nhttps://targetmarkettraffic.top/up/?=laurinykopp.com\r\n\r\nCheers to a prosperous 2020, \r\nLisa\r\n\r\n\r\n\r\n\r\n\r\nTarget Market Traffic\r\n410 E Santa Clara Street Unit #814\r\nSan Jose, CA 95113\r\n\r\n\r\n\r\n\r\n\r\n\r\nIf you are unintersted in this type of marketing:\r\nhttps://targetmarkettraffic.top/unsubscribe.php/?site=laurinykopp.com', 'lisa@targetmarkettraffic.top'),
('DanielLit', 2147483647, 'Hi there \r\n \r\nWe are the factory to wholesale LV, Guess, Nike, Adidas, Moncler, Canada Goose, Coach, Armani, Chanel, Burberry, Dior and CL products at wholesale prices. Please check our site: xpresswholesale.store \r\n \r\nAll the best, \r\n \r\nContact - Lauri Nykopp - laurinykopp.com', 'info@laurinykopp.com'),
('Everette Nowlin', 952, 'https://www.ghostdigital.co/product/local-seo-package/\r\n\r\n', 'everette.nowlin@yahoo.com'),
('Lisa Rose', 224, 'Hi,\r\n\r\nI know this is a crazy month, but are you happy with how your website is doing?\r\n\r\nCould you use a little more traffic? How about a lot more?\r\n\r\nWe help businesses get thousands more visitors -- without hassle or a huge expense:  \r\nhttps://targetmarkettraffic.top/up/?=laurinykopp.com\r\n\r\nCheers to a prosperous 2020, \r\nLisa\r\n\r\n\r\n\r\n\r\n\r\nTarget Market Traffic\r\n410 E Santa Clara Street Unit #814\r\nSan Jose, CA 95113\r\n\r\n\r\n\r\n\r\n\r\n\r\nIf you are unintersted in this type of marketing:\r\nhttps://targetmarkettraffic.top/unsubscribe.php/?site=laurinykopp.com', 'lisa@targetmarkettraffic.top'),
('Christal Dowden', 62, '\r\nHere is your quotation regarding the promotion of your Google Maps listing\r\n\r\nhttps://www.ghostdigital.co/google-maps-citations/\r\n\r\n\r\n', 'noreply@ghostdigital.co'),
('tuula martikainen', 505528164, 'Hei , \r\naluksi haluaisin saada selville!\r\nOletteko oikea henkilö, jota yritän tavoittaa.\r\nOnko isänne Tola Toivinen ja mummonne Agnes Toivinen Juho Martikaisen, Lapinlahdelta , sisar \r\n\r\nLämpimin terveisin \r\nPauli Martikaisen, CV kuvataiteilijamatrikkelissa,\r\npuolesta \r\nTuula Martikainen\r\n', 'tuula_martikainen@live.fi'),
('Jacques Mitford', 498, '\r\nhi there\r\nHere is your quotation regarding the unique domains links that you inquired about\r\n\r\nhttps://www.arteseo.co/quotation/\r\n\r\n', 'noreply@arteseo.co');
INSERT INTO `feedback` (`fb_name`, `fb_phone`, `fb_content`, `fb_email`) VALUES
('Louisa Arscott', 420, 'Hi,\r\n\r\nDo you have a Website? Of course you do because I am looking at your website laurinykopp.com now.\r\n\r\nAre you struggling for Leads and Sales?\r\n\r\nYou’re not the only one.\r\n\r\nSo many Website owners struggle to convert their Visitors into Leads & Sales.\r\n\r\nThere’s a simple way to fix this problem.\r\n\r\nYou could use a Live Chat app on your Website laurinykopp.com and hire Chat Agents.\r\n\r\nBut only if you’ve got deep pockets and you’re happy to fork out THOUSANDS of dollars for the quality you need.\r\n\r\n=====\r\n\r\nBut what if you could automate Live Chat so it’s HUMAN-FREE?\r\n\r\nWhat if you could exploit NEW “AI” Technology to engage with your Visitors INSTANTLY.\r\n\r\nAnd AUTOMATICALLY convert them into Leads & Sales.\r\n\r\nWITHOUT spending THOUSANDS of dollars on Live Chat Agents.\r\n\r\nAnd WITHOUT hiring expensive coders.\r\n\r\nIn fact, all you need to do to activate this LATEST “AI” Website Tech..\r\n\r\n..is to COPY & PASTE a single line of “Website Code”.\r\n\r\n==> http://www.zoomsoft.net/ConversioBot\r\n\r\n======\r\n\r\nJoin HUGE Fortune 500 companies like:\r\n\r\nFacebook Spotify Starbucks Staples The Wall Street Journal Pizza Hut Amtrak Disney H&M & Mastercard\r\n\r\nThey all use similar “AI” Chat Technology to ConversioBot - the Internet’s #1 Chatbot for Website Owners.\r\n\r\nThe founders of ConversioBot have used their highly sophisticated ChatBot to:\r\n\r\n- AUTOMATICALLY build a massive Email List of 11,643 Subscribers in just 7 Days\r\n\r\n- AUTOMATICALLY add 6,386 Sales in only 6 Months\r\n\r\n- AUTOMATICALLY explode their Conversion Rate by 198% in only 6 Hours.\r\n\r\n=====\r\n\r\nNow it’s your turn to get in on this exciting NEW Cloud-Based App.\r\n\r\nYou can start using ConversioBot today by copying and pasting ONE line of “Automated Bot Code\" to your Website.\r\n\r\nWatch this short video to find out how >> http://www.zoomsoft.net/ConversioBot\r\n\r\nRegards,\r\n\r\nConversioBot Team\r\n\r\nP.S. This “AI” Technology works with: - Affiliate Review Sites - List-Building Pages - WordPress Blogs (it comes with a Plugin) - Sales Letters - eCommerce Websites - Local Business Sites - Webinar Registration Pages - Consultancy Websites - Freelance Websites\r\n\r\nAlmost ANY Website you can think of..\r\n\r\n==> This could be happening on your Website TODAY.. http://www.zoomsoft.net/ConversioBot\r\n', 'arscott.louisa@gmail.com'),
('Fleta Kirke', 417, 'Good Morning\r\n\r\nBe Free from Neck Pain\r\nTry NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\n✅ Designed By Doctor & Chiropractor\r\n✅ Ergonomic Design - Fits Everyone\r\n✅ Circulation To Head\r\n✅ Stimulating Key Result Area\r\n\r\nThe Best,\r\n\r\nContact - Lauri Nykopp - laurinykopp.com', 'info@laurinykopp.com'),
('Fabien C', 2147483647, 'Hi There,\r\n\r\nAre you unsatisfied with your current webhost? Slow speed? Downtimes? Incompetent and/or unresponsive support? Excessive cost? Or do you simply want to examine other solutions?\r\n\r\nTake a look at our offers : http://lowty.online/q2vbG\r\n\r\nThanks,\r\n\r\nFabien', 'p.apa.be.s.t.ho.st.i.ng+carick@gmail.com'),
('Rubin Melson', 0, 'Hi\r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: thawking.online\r\n\r\nAll the best,\r\n\r\nContact - Lauri Nykopp - laurinykopp.com', 'info@laurinykopp.com'),
('Leonie Outhwaite', 0, 'hi there\r\nI have just checked laurinykopp.com for the ranking keywords and seen that your SEO metrics could use a boost.\r\n\r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support.\r\n\r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/\r\n\r\nStart increasing your sales and leads with us, today!\r\n\r\nBe safe and best regards\r\n\r\nMike\r\nHilkom Digital Team\r\nsupport@hilkom-digital.de', 'leonie.outhwaite@outlook.com'),
('Vera', 388, 'Hello there\r\n\r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n\r\nSincerely,\r\n\r\nContact - Lauri Nykopp - laurinykopp.com', 'info@laurinykopp.com'),
('Marian', 473, 'Good day\r\n\r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n\r\nThanks and Best Regards,\r\n\r\nLauri Nykopp - laurinykopp.com', 'info@laurinykopp.com'),
('Eloise Buvelot', 812, 'Dear laurinykopp.com owner,\r\n\r\nIn an alarming 10 Dec 2019 article in CNN, Morgan Stanley has proclaimed \r\nthat we may see the “MOTHER OF ALL RECESSIONS” in 2020.  The recession has already started.\r\n\r\nWhat are you doing to prepare for it?\r\n\r\nClick here for a bona-fide solution http://www.zoomsoft.net/PerpetualIncome\r\n\r\nIn the recent minor recession of 2018, people lost jobs, livelihoods and \r\nassets. Imagine what would happen if the major one hits?\r\n\r\nIt will be an economic tsunami! You have an obligation to protect your \r\nfinances at any cost.\r\n\r\nHere’s a way to thrive in any market. http://www.zoomsoft.net/PerpetualIncome\r\n\r\nHere’s to a breakthrough 2020.\r\n\r\nBest,\r\n\r\nP.S. If you’re living from paycheck to paycheck, you’re in the most \r\ndanger if things go wrong and companies start cutting jobs.\r\nClick here for a Plan B that can even make you rich http://www.zoomsoft.net/PerpetualIncome\r\n\r\nUNSUBSCRIBE http://www.zoomsoft.net/unsubscribe', 'buvelot.eloise@gmail.com'),
('Donnell', 6, 'Hi\r\n\r\nWear with intent, live with purpose. Fairly priced sunglasses with high quality UV400 lenses protection only $9.99 for the next 24 Hours ONLY.\r\n\r\nOrder here: kickshades.online\r\n\r\nTo your success,\r\n\r\nLauri Nykopp', 'contact@laurinykopp.com'),
('Jodie Owen', 0, 'Hi,\r\n\r\nI thought you may be interested in our services. \r\n\r\nWould you like thousands of interested people coming to your website every day? \r\n\r\nPeople will come to your site from the exact online publications in your niche.\r\nWe are the only service out there who drives visitors to you like this.\r\n\r\nStarter campaigns of 5,000 visitors just 57.99. Larger campaigns are available.\r\n\r\nFor more info please visit us at https://traffic-stampede.com \r\n\r\nThank you for your time and hope to see you there.\r\n\r\nKind regards,\r\nJodie\r\nTS', 'jumpstart.1@hotmail.com'),
('Brianna Logan', 555, 'Hi,\r\n\r\nI came across your website and thought you may be interested.\r\n\r\nWe are one of the largest suppliers of social media marketing services.\r\nFacebook, Twitter, Instagram and Youtube.\r\n\r\nGive Your social media a huge amount of followers,\r\nlikes, shares, subscribers and views fast at a great price.\r\n\r\nWe look forward to skyrocketing your social media needs.\r\n\r\nBest,\r\nBrianna L.\r\nhttps://social-media-blast.com\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'siteboost@lavache.com'),
('Roseanne', 77, 'Hey there\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nThanks and Best Regards,\r\n\r\nLauri Nykopp', 'info@laurinykopp.com'),
('McCready', 491, 'Hi\r\n\r\nWork out to a whole new level with our P-Knee™ power leg knee joint support! \r\n\r\nOrder here: p-knee.online\r\n\r\n60% OFF + FREE Worldwide Shipping - TODAY ONLY!\r\n\r\nTo your success,\r\n\r\nLauri Nykopp', 'info@laurinykopp.com'),
('Javier Stickler', 397, 'Hi, I would like to have a talk with you regarding commercial videos. I will be available for one week so it will be great if you give me an appointment before that. I suggest something like this: https://www.youtube.com/watch?v=IxZdvejWGJ4\r\nKind regards', 'javier.stickler12@gmail.com'),
('Ilya Gilshtein', 2147483647, 'Hi dear Sir Lauri !\r\nWe have an order from Mr. Silvar Raatas from Estonia, Eurorating Oy, to send you to Finland samples of disposable tableware made of wood veneer. \r\nPlease, please let us know your e-mail, we will send you photos, and a copy to Mr. Raatas, what we are already producing. \r\nWe will also agree on the transfer of samples to you.\r\nBest regards Ilya', 'Ilya_Gilshtein@snake1994.ru'),
('Adolph Boulton', 78, 'have Moz Domain Authority 50+ for laurinykopp.com or your money back\r\n\r\nRead more\r\nhttps://ghostdigital.co/domain-authority/\r\n\r\n', 'adolph.boulton@gmail.com'),
('Katrina', 905, 'Good day \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: sunglassusa.online\r\n \r\n \r\nRegards, \r\n \r\nContact - Lauri Nykopp - laurinykopp.com', 'info@laurinykopp.com'),
('Sherri Avery', 0, 'Hi,\r\n\r\nI thought you may be interested.\r\n \r\nWe supply the best niche turnkey dropshipping stores out there.\r\nYou keep all of the profit. We are the designers this is all we do.\r\n\r\nFree hosting, domain and social media marketing materials included.\r\nJust a one time fee for your dropship store and thats it.\r\n\r\nIf this sounds of interest please see our new available sites at https://dropshippingincome.com\r\n\r\nThank you for your time and hope to see you there.\r\n\r\nKind regards,\r\nSherri \r\nDSI \r\n\r\n\r\n\r\n\r\n', 'topdrop1@reallyfast.info'),
('Pamela Hutchins', 0, 'Hi,\r\n\r\nI thought you may be interested in our services. \r\n\r\nWe can send thousands of interested people to your website daily.\r\nYour visitors will come from online publications in your EXACT niche.\r\nThis means super targeted advertising for your site.\r\n\r\nPackages starting at just $54.99.\r\nWe also have great larger packages (some sold out for 1 month).\r\n\r\nSee how we can drive people to your business. \r\n\r\nHope to see you on our site.\r\n\r\nBest,\r\nPam\r\nhttps://traffic-stampede.com\r\n\r\n', 'site_boost@netcourrier.com'),
('Beatrice Komine', 0, 'Good morning.. do you need any backing soundtrack for your company music? If so, tell us about it and we might give you or make one for you without payment. https://www.youtube.com/watch?v=OhV2NgvkSLg  We will ask only for credits that we did the track. Thank you!', 'beatrice.komine@gmail.com'),
('Ella Glassey', 0, 'Ever wanted to push some competition site`s ranks down for not playing the game fair?\r\n\r\nNow you can:\r\nblackhat.to', 'glassey.ella10@outlook.com'),
('Nadia Askew', 0, 'Our website scanner has established that your website (%domain) might have a low level of spam protection.\r\nWe have tested your site by sending you this message and it confirms that your site is not efficient in blocking spam.\r\nShould you want to block spam messages forever consider buying our anti-spam protection: https://b2bworld.store/captcha/\r\nDelivery date 3 -5 working days.', 'askew.nadia@gmail.com'),
('Margarita', 73, 'Hello \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\n \r\nBest Wishes, \r\n \r\nContact - Lauri Nykopp', 'admin@laurinykopp.com'),
('Margart', 902, 'Morning\r\n\r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nFREE Worldwide Shipping!\r\n\r\nClick here: caredogbest.online\r\n\r\nThe Best,\r\n\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Silvia', 699, 'Hi there \r\n \r\nBuy all styles of Oakley Sunglasses only 19.99 dollars.  If interested, please visit our site: designeroutlets.online\r\n \r\n \r\nCheers, \r\n \r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Jonathon Gwynne', 391, 'Hi %title,\r\nHope you’re well. \r\nI hope that business is good and you’ve been doing well throughout the current situation. \r\nAs I’ve had contact with you in the past, I think your website is not protected from spam, I mean literally, it isn’t cool, you have to protect it \r\nhttp://fund.school/anticaptcha966293\r\nCheck it as they have 70% off', 'jonathon.gwynne@gmail.com'),
('Diane Rogers', 0, 'Hi,\r\n\r\nI thought you might be interested in our social media services. \r\nFacebook, Twitter, Instagram and Youtube.\r\n\r\nGet your social media a huge amount of followers,\r\nlikes, shares, subscribers and views in 48 hours and at a great price.\r\n\r\nFollowers, Likes and a High Amount of Views Improve All of Your Profiles\r\nIncrease the Authenticity of Your Accounts\r\n\r\nFor more info please visit us at https://social-media-blast.com\r\n\r\nWe look forward to hopefully seeing you on our site.\r\n\r\nKind Regards,\r\nDiane R.\r\nSMB\r\n\r\n\r\n\r\n\r\n\r\n', 'followersfast.1@gmail.com'),
('Clarissa', 480, 'Morning \r\n \r\nBlack Friday Offer! Buy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: sunglassusa.online\r\n \r\nThe Best, \r\n \r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Jackson Wesolowski', 6, ' Re:Hello! \r\nHope you’re excellent, and that clients are profitable.\r\nHave a look at the best tool you must have to speed your small business progress finding new clients in your website.\r\n\r\nhttps://1borsa.com/livechat7131\r\n\r\nSincerely,\r\n', 'jackson.wesolowski63@msn.com'),
('Jessie', 373, 'Hello\r\n \r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: hineck.online\r\n\r\nGet it Now 50% OFF + Free Shipping!\r\n\r\nEnjoy,\r\n\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Alison Pinner', 6, 'Hello WWW.laurinykopp.com\r\n\r\n\r\nNotice Expiry ON: Dec 08, 2020 !\r\n\r\n\r\nWe have not received a payment from you.\r\nWe have actually attempted to email you however were unable to contact you about laurinykopp.com\r\n\r\n\r\nSee: https://domainlogging.com/?web=laurinykopp.com\r\n\r\n\r\nFor details as well as to make a optional settlement for your domain website solutions.\r\n\r\n\r\n\r\n12082020194005\r\n', 'laurinykopp.com@laurinykopp.com'),
('Lilly Griver', 415, 'This is an automated message sent from our server. Our website scanner has established that (laurinykopp.com) does not efficiently block automated messages.\r\nOneTwo GmbH\r\nhttps://one-two.online', 'lilly.griver@gmail.com'),
('Mike Cooper', 39, 'https://kulttuuritoimitus.fi/artikkelit/artikkelit-musiikki/tulvien-jalkeista-tulevaisuutta-odottaessa-haastattelussa-abstraktin-bluesin-ajaton-mestari-mike-cooper/?fbclid=IwAR3TTqoeKhC9jO_qJmwp0m8jPcgb0ICin_2uWhvMVfcBgI2cTVmXQTjqKbA\r\n\r\n❤️', 'cooparia@mac.com'),
('Koby', 133, 'Morning\r\n\r\nBuy face mask to protect your loved ones from the deadly CoronaVirus.  We supply N95 Mask, KN95 Mask, and Surgical Masks for both adult and kids.  The prices begin at $0.35 each.  If interested, please visit our site: facemaskusa.online\r\n\r\nAll the best,\r\n\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Jesenia Carron', 26, 'Greetings\r\n\r\nFinally there is a Google Updates Free Service that has given proven results and that is backed by the customers! \r\n\r\nFor more information, check our service here\r\nhttps://speed-seo.net/product/serp-booster/\r\n\r\n\r\nthank you\r\nPeter Carron\r\nSpeed SEO Agency\r\nsupport@speed-seo.net', 'carron.jesenia@gmail.com'),
('Kate Walsh', 0, 'Hi,\r\n\r\nJust a brief moment of your time as our services may be of interest.\r\n\r\nWe can send thousands of interested people to your website every day. \r\n\r\nPeople will come from related major online publications in your EXACT niche.\r\nYou get to approve them BEFORE your campaign begins.\r\n\r\nPrices start at just $54.99.\r\nCheck out our 3 day 10,000 visitors sale.\r\nMost larger packages sold out for 30 days. Please check for availability.\r\n\r\nFor more info please visit us at http://traffic-stampede.com\r\n\r\nThank you for your time and hope to see you there.\r\n\r\nKind regards,\r\nKate W.\r\n\r\n\r\n\r\n', 'ez_visits@fastest.cc'),
('Ute Blanch', 320, 'DOMAIN SERVICES EXPIRATION NOTICE FOR laurinykopp.com\r\n\r\nDomain Notice Expiry ON: Jan 17, 2021\r\n\r\n\r\nWe have actually not gotten a settlement from you.\r\nWe have actually attempted to email you however were incapable to contact you.\r\n\r\n\r\nGo To: https://bit.ly/3nYc04g\r\n\r\nFor info and to process a discretionary settlement for your domain website services.\r\n\r\n\r\n\r\n\r\n011720211525443753688578798laurinykopp.com', 'laurinykopp.com@laurinykopp.com'),
('Noelia Griswold', 163, 'Hi There,\r\n\r\nAre you operating Wordpress/Woocommerce or maybe might you plan to work with it someday ? We provide around 5000 premium plugins along with themes to download : http://urlda.space/qw7YE\r\n\r\nRegards,\r\n\r\nNoelia', 'noelia.griswold@googlemail.com'),
('Oscar Wolken', 492, 'Hi there\r\n\r\nIf you ever need Negative SEO work, we offer it right here\r\nhttps://speed-seo.net/product/negative-seo-service/\r\n\r\n\r\nthank you\r\nPeter Wolken\r\nSpeed SEO Agency\r\nsupport@speed-seo.net', 'oscar.wolken@gmail.com'),
('Aracelis Hartwell', 6, 'Buy Scannable Fake ID – Premium\r\nFake IDs\r\nBuy our premium fake IDs with the best security elements.\r\nAll of our fake ID comes with Scannable features & guaranteed to pass under UV.\r\n\r\nRead our reviews and testimonials\r\nhttps://www.trustpilot.com/review/topfakeid.com\r\nhttps://www.scamadviser.com/check-website/topfakeid.com\r\nhttps://www.sitejabber.com/reviews/topfakeid.com', 'info@topfakeid.com'),
('Magaret Schnieders', 6, 'Hey - laurinykopp.com,\r\n\r\nImagine a community where people share and discuss things they like. When we are about to decide, we consult our friends and other experienced people to get good advice and recommendations from all parties and arrive to the best solution. The concept of guidance has come to search engines in the form of \"Social Signal\". All of your Likes, Tweets, Pins & Shares are considered by search engines as votes of trust. Social Signals, as a result, act like human recommendations for your website.\r\nCheck what we can perform for you: \r\nwww.social-signals.site\r\nKind regards,\r\n\r\n', 'schnieders.magaret99@hotmail.com'),
('Belen Langdon', 0, 'Hi there laurinykopp.com,\r\nI hope this email finds you well, I’m writing this email to brief you about the perks of using our product for neck pain named as NeckBc.\r\nSince health is the most important thing in our life and being healthy should be a part of our overall life style. But most of the people today are so busy with their work that they do not have time to look after their health. Sometimes working in front of computer can lead to neck pain and that is why we came up with the product that will help you through pain relief in a very convenient way.\r\nWe have always considered customer satisfaction as our first priority and due to this attribute, we have got many positive reviews from our valuable clients from diverse business backgrounds. So do not miss out because we are offering 50% off on our product see it here: neckbc.com .\r\nWhen such an amazing product is available to you, I’m sure none of you would want to refrain from buying it. \r\nLooking forward to serve you with the most effective Product for your neck pain relief.', 'belen.langdon@yahoo.com'),
('D', 2147483647, 'I was wondering if you have a need for CATERING SERVICES.\r\n\r\nWe are offering free FOOD SERVICES.\r\n\r\nCheck us out at https://www.instagram.com/baesidegrill/ or call / text 416-670-1862\r\n\r\nEmail us at baesidegrill@gmail.com and try us out!\r\n\r\nThanks,\r\nBindiya\r\n\r\n-------\r\n\r\nReport any unsolicited messages \r\nhttp://help.instagram.com/contact/383679321740945?helpref=page_content\r\n', 'baesidegrill@gmail.com'),
('Gina Deloach', 6347, 'Hi\r\n\r\nIf you ever need Negative SEO work, we offer it right here\r\nhttps://speed-seo.net/product/negative-seo-service/\r\n\r\n\r\nthank you\r\nPeter Deloach\r\nSpeed SEO Agency\r\nsupport@speed-seo.net', 'gina.deloach@gmail.com'),
('Eric King', 202, 'Hello,\r\nI hope life is treating you kind!\r\n\r\nAre you looking for working capital to further grow and expand your business?\r\n\r\nIf so, put the power of a direct lender to work for you.\r\n\r\nWe provide loans up to 500k without requiring good credit or collateral. This is because we base our funding decisions off your \r\ntotal monthly bank deposits, and we approve over 95% of all businesses!\r\n\r\nPlus, we provide you a funding decision within 30 seconds without submitting a single document, and funding the very next day.\r\n\r\nVisit www.bizfunding4you.xyz to see how much you qualify for! Applying does NOT affect your credit!\r\n\r\nAlso, please check out this video to see all the funding options we have available for you.  www.bizfunding4you.xyz/video\r\n\r\nThanks again and we look forward to funding you soon. \r\n\r\nWarm Regards,\r\n\r\nEric King\r\nBiz Funding 4 You\r\nwww.bizfunding4you.xyz\r\n\r\n', 'eric@bizfunding4you.xyz'),
('Marta', 6, 'Good Morning \r\n\r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\nClick here: caredogbest.online\r\n\r\nBest, \r\n\r\nMarta\r\nContact - Lauri Nykopp', 'marta@laurinykopp.com'),
('Willian', 475, 'Hey there\r\n\r\nWholesale Medical Surgical Masks for both adult and kids - Buy Now as Low as $0.19/mask\r\n\r\nShop now: pharmacyoutlets.online\r\n\r\nAll the best,\r\n\r\nWillian\r\nContact - Lauri Nykopp', 'willian.perkinson@gmail.com'),
('Clayton Humble', 416, 'Good morning \r\nHope you’re great, and that the company is good.\r\nTo take your business revenue up, you may need this tool to obtain new clients: \r\nhttps://business-it-services.com/backlinks-generator\r\nWarm regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested? Here is an easy, 1-click unsubscribe link: https://business-it-services.com/?unsubscribe=laurinykopp.com', 'clayton.humble@gmail.com'),
('Veronique Cannon', 250, 'Hi,\r\n\r\nAre you currently using Wordpress/Woocommerce or maybe maybe you plan to use it someday ? We currently offer around 2500 premium plugins along with themes to download : https://shortjs.xyz/yPFWT\r\n\r\nThank You,\r\n\r\nVeronique', 'w.o.r.dp.r.ess.45.5.48.5+compartimentant'),
('Myra Honeycutt', 3372, 'Promote your site without cost here!: http://bit.ly/list-of-sites-where-u-can-submit-a-free-ad', 'myra.honeycutt@gmail.com'),
('Ute Boisvert', 378, '\r\nHave you had enough of expensive PPC advertising? Now you can post your ad on 10,000 advertising websites and you only have to pay a single monthly fee. Never pay for traffic again! \r\n\r\nCheck out our site now: http://bit.ly/get-unlimited-web-traffic', 'boisvert.ute@yahoo.com'),
('Evie', 8056, 'Hey there \r\n \r\nMeet your best Buds - True Wireless Earbuds with amazing sound, convenience, portability, & affordability!\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: musicontrol.online\r\n \r\nBest Wishes, \r\n \r\nEvie\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Willa Gholson', 304, 'I can show you how you can advertise your online business free of charge forever!\r\n\r\nTake a look at this comprehensive list of the best classified ad sites at this page >http://ww.freeadpostingonthesesites.com', 'willa.gholson69@gmail.com'),
('Windy Boshears', 801, 'Hi \r\nHope you’re well, and that the company is good.\r\nTo beat the competitors businesses like yours, you may need this tool to have new business:\r\nhttps://next-marketers.com/backlinks-generator\r\nWarm regards,\r\n\r\nP.S. We offer the best marketing services on our website, still not interested in getting new clients? Here is an easy, 1-click unsubscribe link: https://next-marketers.com/?unsubscribe=laurinykopp.com', 'windy.boshears@gmail.com'),
('Jacob Robinson', 202, 'Hello,\r\n\r\nI hope you are doing well, and business is Great!\r\n\r\nHowever, if you need working capital to further grow and expand your business, we\r\nmay be a perfect fit for you and here’s why. \r\n\r\nOur loans are NOT based on your personal credit, and NO collateral is required.\r\n\r\nWe are a Direct Lender who can approve your loan today, and fund as early as Tomorrow.\r\n\r\nWe offer loans from 5k to 500k with flexible payments and great terms.\r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.bizcapitallenders.xyz  Applying does NOT affect your credit!\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.bizcapitallenders.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nJacob Robinson\r\nBiz Capital Lenders\r\nwww.bizcapitallenders.xyz', 'jacob@bizcapitallenders.xyz'),
('Shonda', 381, 'Hello there\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nCheers,\r\n\r\nShonda\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Normand Menhennitt', 418, 'Good morning \r\nHope you’re good, and that business is good.\r\nGive a see this tool to have your company to the TOP, talk to clients in your site. \r\nhttps://it-web-marketing.com/backlinks-generator\r\nKind regards,\r\n\r\nP.S. We offer the top IT services you may find on our website, still not considering getting new clients? Here is a straightforward, 1-click unsubscribe link: https://it-web-marketing.com/?unsubscribe=laurinykopp.com', 'normand.menhennitt@msn.com'),
('Alice Haigler', 6, 'Hi \r\nHope you’re well, and that business is profitable.\r\nSerious entrepreneurs need quite sure for their business to convert results in clients from their site:\r\nhttps://next-marketers.com/backlinks-generator\r\nRegards,\r\n\r\nP.S. We offer the very best IT services you can check on our online shop, still not enthusiastic about getting clients? Here is an easy, 1-click unsubscribe link: https://next-marketers.com/?unsubscribe=laurinykopp.com', 'alice.haigler@hotmail.com'),
('Albertha Pham', 70, 'Hi there, I hope you’re doing well.\r\n\r\nI handle influencer relations for LeggingsHut. Great to meet you! \r\nI stumbled across your account and thought your content would be perfect for us.\r\nIf you feel we’d make a good fit, I’d love to invite you to our referral program. \r\n\r\nUse this link to visit, http://leggingscashteam.com \r\n\r\nSincerely, \r\nLeggings Cash Team Judy', 'pham.albertha@hotmail.com'),
('Soila Shields', 205, 'Good Afternoon\r\nHope you’re good, and that business is good. Please allow me to introduce to you this service that you may find useful for your business.\r\nNever has it been easier to market your website. Just enter your URL, and we will take over from there.\r\nhttps://it-web-marketing.com\r\nRegards,\r\n\r\nP.S. We offer the top marketing services you can find on our shop, still not interested in getting clients? Here is an easy, 1-click unsubscribe link: https://it-web-marketing.com/?unsubscribe=laurinykopp.com', 'shields.soila@msn.com'),
('Lucille', 8336, 'Hi there \r\n\r\nGet The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes!\r\n\r\nAct Now And Receive A Special Discount For Our Magic Sand Free Beach Mat!\r\n\r\nGet Yours Here:  magicmat.shop\r\n\r\nBest, \r\n \r\nLucille\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Doug Olivas', 71, 'Hi \r\nHope you’re great, and that clients are good.\r\nGive a check this out tool to get your small business to the TOP, consult with clients on your own site. \r\nhttps://genius-seo.com/backlinks-generator\r\nRegards,\r\n\r\nP.S. We offer the top marketing services you can order on our online shop, still not considering getting new customers? Here is a straightforward, 1-click unsubscribe link:  https://genius-seo.com/?unsubscribe=laurinykopp.com', 'doug.olivas@hotmail.com'),
('Joel Gentle', 127, 'Hi\r\nI guess you might want to make laurinykopp.com faster and cleaner. If so, hire us:\r\nhttps://the-web-marketing.com/technicalseo\r\nHave great day!\r\nSincerely,\r\n\r\nP.S. We offer the very best marketing services you can check on our shop for making big money in a small business, still not interested in getting new clients? Here is an easy, 1-click unsubscribe link: https://the-web-marketing.com/?unsubscribe=laurinykopp.com', 'gentle.joel@gmail.com'),
('Jacob Robinson', 202, 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your Business if the price and terms were acceptable?\r\n\r\nIf so, we can provide you with a funding decision is less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.bizcapitallenders1.xyz\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.bizcapitallenders1.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nJacob Robinson\r\nBiz Capital Lenders\r\nwww.bizcapitallenders1.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.bizcapitallenders1.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nBiz Capital Lenders\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'jacob@bizcapitallenders1.xyz'),
('Madeleine Tost', 612, 'Hi there\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n', 'madeleine.tost@outlook.com'),
('Swen Fiore', 0, 'Good morning\r\nHope you’re good, and that the company is good. Please allow me to introduce to you this service that you may find useful for your business.\r\nAlways seek opportunities to grow your business, because once you’ve reached your top, your competitors will never stop trying to outrank you.\r\nhttps://your-marketers.com\r\nBest regards,\r\n\r\nP.S. We offer the top marketing services you can check on our website for making big money in a small business, still not considering getting new customers? Here is a simple, 1-click unsubscribe link: https://your-marketers.com/?unsubscribe=laurinykopp.com\r\n', 'swen.fiore@gmail.com'),
('Ines', 489, 'Hello \r\n \r\nProviding Premium sunglasses only $19.99 for the next 24 Hours ONLY.  60% OFF today with free worldwide shipping.\r\n\r\nGet Yours: trendshades.online\r\n \r\nBest Wishes, \r\n \r\nInes\r\nContact - Lauri Nykopp', 'ines@laurinykopp.com'),
('Kevin Marks', 202, 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your Business if the price and terms were acceptable?\r\n\r\nIf so, we can provide you with a funding decision is less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.instantapprovalloans1.xyz\r\n\r\nAlso, please check out this video to see how our program works, and all the funding options we have available for you.  www.instantapprovalloans1.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nKevin Marks\r\nInstant Approval Loans\r\nwww.instantapprovalloans1.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.instantapprovalloans1.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nInstant Approval Loans\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'kevin@instantapprovalloans1.xyz'),
('Tonya Dhakiyarr', 365, 'Hey\r\nStandout from the competition, keep laurinykopp.com fresh and optimized, hire us:\r\nhttps://ultimate-marketers.com/technicalseo\r\nHave great day!\r\nSincerely,\r\n\r\nP.S. We offer the very best IT services you can check on our shop for making big money in a small business, still not considering getting new clients? Here is a quick, 1-click unsubscribe link: https://ultimate-marketers.com/unsubscribe=laurinykopp.com', 'dhakiyarr.tonya61@hotmail.com'),
('Shanice', 78, 'Hello \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: lensoutlet.online\r\n \r\nEnjoy, \r\n \r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Jody Shuman', 79, 'Hey\r\nUse our Artificial Intelligence service to submit your web site to thousands of directories and search engines like yahoo.\r\nhttps://your-seo-specialists.com\r\nBest regards,\r\nP.S. We offer the top marketing services you may purchase on our shop for making big money in a small business, still not thinking about getting new customers? Here is an easy, 1-click unsubscribe link: https://your-seo-specialists.com/?unsubscribe=laurinykopp.com\r\n', 'jody.shuman@gmail.com'),
('Salvador Hawley', 428, 'Check this out before you spend another dime on advertising your online business: http://www.freetrafficwebsites.click', 'qgaasim_g@kintul.buzz'),
('Samu Montonen', 503462827, 'Moi!\r\n\r\nTeen taustatutkimusta liittyen Esa Saarisen “Filosofia” LP:hen. Levystä on tulossa uusintapainos, jonka julkaisee Svart Records. Mikäli olet halukas vastaamaan, haluaisin kysyä sinulta muutamia kysymyksiä liittyen rooliisi levyn tekemisessä.\r\n\r\nToinen asia, josta haluaisin keskustella on samoihin aikoihin keikkaillut kokoonpanosi Avant Disco.\r\n\r\nyst. terveisin,\r\nSamu Montonen', 'samumontonen@gmail.com'),
('Robt Conaway', 0, 'Hi \r\nSerious entrepreneurs need many because of their business to convert brings about clients using their site:\r\nhttps://first-class-promotion.com/backlinks-generator/\r\nKind regards,\r\nWe offer the top IT services you can purchase on our online shop for making big money in a small business, still not considering getting new customers? Here is a quick, 1-click unsubscribe link:  https://first-class-promotion.com/?unsubscribe=laurinykopp.com\r\n', 'conaway.robt@gmail.com'),
('Adrian Billiot', 487, 'Hi - laurinykopp.com, \r\n\r\nImagine a community where people share and discuss things they like. When we are about to decide, we consult our friends and other experienced people to get good advice and recommendations from all parties and arrive to the best solution. The concept of guidance has come to search engines in the form of \"Social Signal\". All of your Likes, Tweets, Pins & Shares are considered by search engines as votes of trust. Social Signals, as a result, act like human recommendations for your website.\r\nCheck what we can do for you: \r\nhttps://geeks-marketing.com/socialsignals\r\nRegards,\r\nWe offer the very best marketing services you can check on our online shop for making big money in a small business, still not thinking about getting new customers? Here is an easy, 1-click unsubscribe link: https://geeks-marketing.com/?unsubscribe=laurinykopp.com', 'adrian.billiot@hotmail.com'),
('Georgianna', 70, 'Hi there \r\n\r\nEnjoy the best experiences in using cell phones/tablet to watch the video, play games, facetime, live stream, read, and more with Flexible Adjustable Tablet Holder. Make your life easier at any place, anywhere, anytime. \r\n\r\nShop now with 50% OFF at: universalholder.online\r\n\r\nBest Wishes, \r\n\r\nGeorgianna\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Kevin Marks', 202, 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your business if the price and terms were acceptable?\r\n\r\nWe offer loans from 10k to 500k regardless of credit or collateral, and will give you a funding decision in less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.instantapprovalloans1.xyz\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nKevin Marks\r\nInstant Approval Loans\r\nwww.instantapprovalloans1.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.instantapprovalloans1.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nInstant Approval Loans\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'kevin@instantapprovalloans1.xyz'),
('Amelia Padgett', 0, 'Everyone wants better organic rankings and maximum visibility. Few realize that optimal user experience is a big part of getting there. Improve your visitors experience by making laurinykopp.com run faster:\r\nhttps://your-marketers.com/speedup\r\nWith warm regards,\r\nWe offer the best marketing services you can order on our website for making big money in a small business, still not considering getting new clients? Here is a simple, 1-click unsubscribe link: https://your-marketers.com/?unsubscribe=laurinykopp.com', 'padgett.amelia@outlook.com'),
('Waylon Lett', 77, 'Hey,\r\nHow are you doing regarding your Google Business Reviews?\r\nGoogle reviews influence purchase decisions. Online Google reviews could be exactly what someone must push them from consideration to purchase.\r\nhttps://iseo-store.com/google-business-and-maps-reviews\r\nKind Regards,\r\nWe offer the best IT services you can order on our website for making big money in a small business, still not enthusiastic about getting clients? Here is a simple, 1-click unsubscribe link:  https://iseo-store.com/?unsubscribe=laurinykopp.com', 'waylon.lett@googlemail.com'),
('Charles', 311, 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nAll the best, \r\n\r\nCharles\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Katherine McCloughry', 239, 'Good evening\r\nHope you’re good, and that clients are profitable. Please allow me to introduce to you this service that you may find useful for your business.\r\nUse our Artificial Intelligence service to submit your website to 1000s of directories and search engines like yahoo.\r\nhttps://genius-seo.com\r\nRegards,\r\nWe offer the most effective IT services you may check on our website for making big money in a small business, still not thinking about getting new customers? Here is an easy, 1-click unsubscribe link: https://genius-seo.com/?unsubscribe=laurinykopp.com', 'katherine.mccloughry@gmail.com'),
('George White', 202, 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your business if the price and terms were acceptable?\r\n\r\nWe offer loans from 10k to 500k regardless of credit or collateral, and will give you a funding decision in less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expressbusinessloans.xyz\r\n\r\n\r\nWarm Regards,\r\n\r\nGeorge White\r\nExpress Business Loans\r\nwww.expressbusinessloans.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expressbusinessloans.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nExpress Business Loans\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'george@expressbusinessloans.xyz'),
('Kai Goodrich', 780, 'Greetings\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n', 'beckwithpatt23@gmail.com'),
('Franziska Byars', 336, 'Hey\r\nLook at this tool to get you new customers, asap from the website visitors. \r\nhttps://your-seo-technicians.com/backlinks-generator\r\nRegards,\r\nWe offer the most effective IT services you can find on our shop for making big money in a small business, still not interested in getting new business? Here is a simple, 1-click unsubscribe link:  https://your-seo-technicians.com/?unsubscribe=laurinykopp.com\r\n', 'byars.franziska@hotmail.com'),
('Roseann', 403, 'Hi\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nCheers,\r\n\r\nRoseann\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Del', 393, 'Hi there\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nRegards,\r\n\r\nDel\r\nContact - Lauri Nykopp', 'info@laurinykopp.com'),
('Corrine Chau', 6, 'Hi\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n', 'robertramirez7162@gmail.com'),
('Reta Pettey', 113, 'Indian VS German SEO services..\r\n\r\nHey there, \r\n\r\nThe time has come to ask yourselves does laurinykopp.com bring visitors … and what are you doing to change it?\r\n\r\nNever has it been so easy to promote a website. Just input your URL, and we will do the rest.\r\n\r\nTry this extravagant service you must have to accelerate your company’s progress in getting rich customers over the internet:\r\n\r\nhttps://your-it-technicians.com\r\n\r\n\r\n\r\nRegards,\r\nWe offer the very best IT services you can order on our online shop to make big money in a small business, still not interested in getting new business? Here is an easy, 1-click unsubscribe link: https://your-it-technicians.com/?unsubscribe=laurinykopp.com', 'pettey.reta@gmail.com'),
('Karl Wollstonecraft', 0, 'Tired of Indian marketing? Try German!\r\n\r\nGood evening, \r\n\r\nOnline presence can be pivotal to the success of a business because it provides a shortcut into visibility that would otherwise take way too long to achieve or cost substantially more to buy.\r\n\r\nTo sky rocket your laurinykopp.com effortlessly on the internet you’ll want this fantastic plan:\r\n	\r\nhttps://first-class-marketing.com/backlinks-generator\r\n\r\n\r\nRegards,\r\nWe offer the best marketing services you may order on our online shop to make big money in a small business, still not considering getting new business? Here is a simple, 1-click unsubscribe link: https://first-class-marketing.com/?unsubscribe=laurinykopp.com', 'wollstonecraft.karl@gmail.com'),
('Abbey Duell', 481, 'German Quality. Period.\r\n\r\nGood Afternoon, \r\n\r\nThe best place to hide a dead body is the second page of Google search. Get laurinykopp.com on the first page.\r\n\r\nHere is the extravagant plan you’ll want to get rich clients easily:\r\n	\r\nhttps://your-seo-technicians.com/backlinks-generator\r\n\r\n\r\nRegards,\r\nWe offer the very best IT services you may purchase on our website for making big money in a small business, still not considering getting clients? Here is an easy, 1-click unsubscribe link: https://your-seo-technicians.com/?unsubscribe=laurinykopp.com', 'duell.abbey@outlook.com'),
('Tonja Meehan', 353, 'Hi there\r\n\r\nWe have just checked your laurinykopp.com for the ranking keywords and found that you could use a boost.\r\n\r\nIf interested in getting more out of your organic efforts, kindly email us: support@digital-x-press.com\r\n\r\nthanks\r\nSEO X Press Team', 'trumanthomas7162@gmail.com'),
('George White', 202, 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your business if the price and terms were acceptable?\r\n\r\nWe offer loans from 10k to 500k regardless of credit or collateral, and will give you a funding decision in less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expressbusinessloans.xyz\r\n\r\n\r\nWarm Regards,\r\n\r\nGeorge White\r\nExpress Business Loans\r\nwww.expressbusinessloans.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expressbusinessloans.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nExpress Business Loans\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'george@expressbusinessloans.xyz'),
('Lois Picton', 0, 'You can still advertise you business even if you have no room for advertising in your expense budget. Here are 50 proven ways you can advertise online for free : https://cutt.ly/GQ3oYcg', 'lois.picton@gmail.com'),
('Doyle', 6, 'Hi there\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please check our site: pharmacyoutlets.online\r\n\r\nBest,\r\n\r\nDoyle', 'huddart.doyle@outlook.com'),
('Cory Schilling', 604, 'I think that nobody should have to pay for advertising online any more these days which is why I put together this list of places where you can advertise completely free! Check it out:   https://tinyurl.com/getfreeadshere', '8iraqtoota@contactare.com'),
('Nichol', 6, 'Hi \r\n\r\n50% OFF!! Hurry to get your Baseball Cap Now!\r\n\r\nThese Caps are SO cool! Perfect for this Summer!\r\n\r\nFree worldwide shipping!\r\n\r\nGET IT HERE: capshop.online\r\n\r\nBest Wishes, \r\n \r\nNichol', 'nichol.severance@gmail.com'),
('Marc', 343, 'Hello\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nRegards,\r\n\r\nMarc', 'marc.cavill@gmail.com'),
('George White', 202, 'Hello,\r\n\r\nI hope life is treating you kind and business is AWESOME!\r\n\r\nI just have one quick question for you.\r\n\r\nWould you consider a Working Capital Loan for your business if the price and terms were acceptable?\r\n\r\nWe offer loans from 10k to 500k regardless of credit or collateral, and will give you a funding decision in less than 30 seconds \r\nwithout pulling your credit or submitting a single document. \r\n\r\nJust click on the link to INSTANTLY see how much you qualify for www.expressbusinessloans.xyz\r\n\r\n\r\nWarm Regards,\r\n\r\nGeorge White\r\nExpress Business Loans\r\nwww.expressbusinessloans.xyz\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.expressbusinessloans.xyz/unsubscribe,\r\n\r\nor write to:\r\n\r\nExpress Business Loans\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'george@expressbusinessloans.xyz'),
('Maynard Snowden', 412, 'A maverick Japanese doctor recently leaked the secret ingredients of an ancient Japanese Tonic that targets the root cause of deep belly fat and activates a powerful little-known fat-burning hormone inside you…that MELTS away all your stubborn body fat.\r\n \r\n => Discover the “Done for You” Japanese Tonic to Melt 3 Pounds Every 3.5 Days \r\n==>https://shortest.link/JtV', 'maynard.snowden98@gmail.com'),
('Leona Louis', 444, 'Since everyone needs traffic to their websites, Google, YouTube, Facebook, and LinkedIn are among the top 20 most visited sites in the world. There are so many other sites that you can get traffic to your site from that most marketers haven’t even considered. Here are 5 examples of high traffic sites that you can take advantage of and drive tons of free traffic back to your site.https://shortest.link/IEY', 'qgaasim_g@kintul.buzz'),
('Quinton Burnham', 6, 'How to earn extra cash with your website without doing a thing: https://shortest.link/IEl', 'hshivanisingh950@firt.site'),
('Francine Birtles', 6, 'Hi\r\n\r\nIf you ever need Negative SEO to de-rank any site, you can hire us here\r\nhttps://www.speed-seo.net/product/negative-seo-service/\r\n\r\n', 'francine.birtles@gmail.com'),
('Thurman Gerrard', 66, 'Hey, can you keep a secret?\r\n\r\nBefore you create another \"great website,\" figure out how you will find clients first. The cost of marketing your website is less than the cost of not doing it.\r\n\r\nTo easily win the competition on the internet you’ll want  this mad service:\r\n	\r\nhttps://iseo-shop.com/socialsignals\r\n\r\n\r\nKind regards,\r\nWe offer superb Promotion services you may purchase on our online shop to make big money in a small business, still not thinking about getting new business? Here is a simple, 1-click unsubscribe link: https://iseo-shop.com/?unsubscribe=laurinykopp.com', 'gerrard.thurman@googlemail.com'),
('John Bergen', 202, 'Hello,\r\n\r\nNeed fast cash for your business without all the red tape?\r\n\r\nGet an instant approval in less than 30 seconds without pulling your credit\r\nby clicking on this link www.perfectcapital.xyz\r\n\r\nIf you accept our offer we will fund you the next day.\r\n\r\nApplying does NOT affect your credit and NO collateral or personal\r\nguarantees are required.\r\n\r\nAlso, please check out this video to see all the funding options we have\r\navailable for you. www.perfectcapital.xyz/video\r\n\r\n\r\n\r\nWarm Regards,\r\n\r\nJohn Bergen\r\nPerfect Capital\r\nwww.perfectcapital.xyz\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nThis is an Advertisement.\r\nTo unsubscribe, click here www.perfectcapital.xyz/unsubscribe\r\n\r\nor write to:\r\n\r\nPerfect Capital\r\n9169 W State St #3242\r\nGarden City, ID 83714\r\n\r\n\r\n\r\n', 'john@perfectcapital.xyz');
INSERT INTO `feedback` (`fb_name`, `fb_phone`, `fb_content`, `fb_email`) VALUES
('Renate McAlexander', 650, 'Hi there,\r\n\r\nHire Live Chat Agents - Unlimited chats - 24/7 coverage - Good Communication - Top Notch Support - Increase your sales 3 times with our 24/7 Live Chat Agents to generate more leads and excellent customer support. \r\nhttps://crotonz.com/live-chat.php\r\n\r\nHire Virtual Assistants and Agents for your website & business. Flexible Plans/ Pricing and Expert Employees. 15 days Free Trial. \r\nhttps://crotonz.com/virtual-assistants.php\r\n\r\nBest Regards\r\nSam Miller\r\ninfo@crotonz.com', 'virgot314@gmail.com'),
('Lauren Boyette', 498, 'I can promote your ad to thousands of ad sites every month without any pay per click costs EVER! Have a look: https://ai6.net/5T1AVJ', 'bchakka111975s@ronell.me'),
('Alice Pendergrass', 485, 'Hey, can you keep a secret?\r\n\r\nNeed to skyrocket your company’s website and clean any errors? Finally, an extensive service where you can sit back and hire the best IT Engineers to do everything for you.\r\n\r\nTo accelerate your business easily over the internet you need this amazing service:\r\n	\r\nhttps://it-web-marketing.com/technicalseo\r\n\r\n\r\nWith warm regards,\r\nWe offer the best marketing services you may check on our website for making big money in a small business, still not considering getting new clients? Here is a simple, 1-click unsubscribe link: https://it-web-marketing.com/?unsubscribe=laurinykopp.com', 'pendergrass.alice@gmail.com');

-- --------------------------------------------------------

--
-- Rakenne taululle `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `technic` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `year` int(4) NOT NULL,
  `filelocation` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `images`
--

INSERT INTO `images` (`id`, `name`, `category`, `size`, `technic`, `description`, `year`, `filelocation`, `sort`) VALUES
(1, '... to say good silence by;   good to say by silence;   by silence to say: good-good & goodbye', 'ILLUSIONS', '203cm x 150cm', 'Mixed media on canvas', '', 2012, 'images/Illusions to say good silence by C-Ww.jpg', 0),
(3, '...je marche vers moi et tout que vient', 'ILLUSIONS', '187cm x 150cm', 'Mixed media on canvas', '', 2010, 'images/Illusions je marche vers moi v1-Ww.jpg', 4),
(4, 'Ekpyrotics 050712', 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', '', 2013, 'images/ekpyrotics 050712-Ww.jpg', 0),
(5, 'Perfect square 1', 'Perfect square', '110cm x 110cm', 'fotosec print, edition 7', '', 2007, 'images/perfect square 1 JNC Sinai black image only-Ww.jpg', 0),
(6, 'Perfect square 2', 'Perfect square', '110cm x 110cm', 'fotosec print, edition 7', '', 2007, 'images/perfect square 2 JNC Puula black pf A4 image only-Ww.jpg', 0),
(7, 'Perfect square 3', 'Perfect square', '110cm x 110cm', 'fotosec print, edition 7', '', 2007, 'images/perfect square Les nympheas pf A4 image only-Ww.jpg', 0),
(8, 'Perfect square 4', 'Perfect square', '110cm x 110cm', 'fotosec print, edition 7', '', 2007, 'images/perfect square The mountain pf A4 image only-Ww.jpg', 0),
(19, '...l\'arbre change son nom et vient ', 'ILLUSIONS', '188cm x 135cm', 'Mixed media on canvas', '', 2014, 'images/illusions l\'arbre change son nom 6.jpg', -1),
(21, 'White light 2', 'White light  2007', '120cm x 90cm', 'fotosec print, edition 7', '', 2007, 'images/White light 2-Ww.jpg', 0),
(22, 'White light 1', 'White light  2007', '120cm x 90cm', 'fotosec print, edition 7', '', 2007, 'images/White light 1-Ww.jpg', 0),
(23, 'White light 6', 'White light  2007', '120cm x 90cm', 'fotosec print, edition 7', '', 2007, 'images/White light 6-Ww.jpg', 0),
(24, 'White light 3', 'White light  2007', '120cm x 90cm', 'fotosec print, edition 7', '', 2007, 'images/White light 3-Ww.jpg', 0),
(25, 'White light 5', 'White light  2007', '120cm x 90cm', 'fotosec print, edition 7', '', 2007, 'images/White light 5-Ww.jpg', 0),
(26, 'White light 7', 'White light  2007', '120cm x 9cm', 'fotosec print, edition 7', '', 2007, 'images/White light 7-Ww.jpg', 0),
(27, 'Unclimbed, Lake Puula 1', 'Unclimbed Lake Puula    2007', '110cm x 62cm', 'inkjet print mounted on board,floating in grey frame, edition 5', '', 2006, 'images/Unclimbed Lake Puula 1-Ww.jpg', 0),
(28, 'Unclimbed, Lake Puula 2', 'Unclimbed Lake Puula    2007', '110cm x 62cm', 'inkjet print mounted on board,floating in grey frame, edition 5', '', 2007, 'images/Unclimbed Lake Puula 2-Ww.jpg', 0),
(29, 'Unclimbed, Lake Puula 3', 'Unclimbed Lake Puula    2007', '110cm x 62cm', 'inkjet print mounted on board,floating in grey frame, edition 5', '', 2007, 'images/Unclimbed Lake Puula 3-Ww.jpg', 0),
(30, 'Unclimbed 1', 'Unclimbed Watkins Mountains 2001', '168cm x 100cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 1-Ww.jpg', 0),
(31, 'Unclimbed 7', 'Unclimbed Watkins Mountains 2001', '100cm x 70cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 7-Ww.jpg', 0),
(32, 'Unclimbed 8', 'Unclimbed Watkins Mountains 2001', '100cm x 70cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 8-Ww.jpg', 0),
(33, 'Unclimbed 9', 'Unclimbed Watkins Mountains 2001', '100cm x 70cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 9-Ww.jpg', 0),
(34, 'Unclimbed 5', 'Unclimbed Watkins Mountains 2001', '168cm x 100cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 5-Ww.jpg', 0),
(35, 'Unclimbed 2', 'Unclimbed Watkins Mountains 2001', '168cm x 100cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 2-Ww.jpg', 0),
(36, 'Unclimbed 3', 'Unclimbed Watkins Mountains 2001', '100cm x 70cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 3-Ww.jpg', 0),
(37, 'Unclimbed 6', 'Unclimbed Watkins Mountains 2001', '70cm x 100cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 6-Ww.jpg', 0),
(38, 'Unclimbed 14', 'Unclimbed Watkins Mountains 2001', '100cm x 70cm', 'fotosec print, edition 7', '', 2001, 'images/Unclimbed 14-Ww.jpg', 0),
(39, 'Ekpyrotics 170212', 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', '', 2012, 'images/ekpyrotics 170212-Ww.jpg', 0),
(40, 'Ekpyrotics 120312', 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', '', 2012, 'images/ekpyrotics 120312-Ww.jpg', 0),
(41, '&#57479;Milagros, mi vida!', 'Ekpyrotics', '150cm x 160cm', 'Mixed media on canvas', '', 2012, 'images/Ekpyrotics Milagros mi vida-Ww.jpg', 0),
(42, 'Notre Dame Est 2', 'Ekpyrotics', '80cm x 80cm', 'fotosec print, edition 7', '', 2014, 'images/Notre Dame Est blue-Ww.jpg', 0),
(43, 'Notre Dame Est 3', 'Ekpyrotics', '80cm x 80cm', 'fotosec print, edition 7', '', 2014, 'images/Notre Dame Est pink-Ww.jpg', 0),
(44, 'Notre Dame Est 1', 'Ekpyrotics', '80cm x 80cm', 'fotosec print, edition 7', '', 2013, 'images/Notre Dame Est chestnut-Ww.jpg', 0),
(49, '...ASLAP (as slow as possible)', 'ILLUSIONS', '100cm x 235cm', 'Mixed media on canvas', '', 2013, 'images/ILLUSIONS ASLAP (as slow as possible) II for pf-Ww.jpg', 0),
(50, '...på våra drömmars vingar i landet som icke är', 'ILLUSIONS', '257cm x 110cm', 'Mixed media on canvas', '', 2013, 'images/illusions pa vara drommars vingar-Ww.jpg', 0),
(52, '...jag ser som nitton somrar ser', 'ILLUSIONS', '207cm x 150cm', 'Mixed media on canvas', '', 2008, 'images/illusions_jag_ser_som_nitton_somrar-Ww.jpg', 3),
(53, 'ici, il n\'y a rien de plus veaux que le glacier bleu', 'ILLUSIONS', '189cm x 150cm', 'Mixed media on canvas', '', 2008, 'images/illusions_il_n\'y_a_rien-Ww.jpg', 2),
(54, '...I have nothing to say and I am saying it', 'ILLUSIONS', '300cm x 300cm', 'Mixed media on canvas', '', 2009, 'images/illusions_i have nothing_3-Ww.jpg', 0),
(56, '...human eyes have evolved for survival purposes - seeing stars is purely accidental', 'ILLUSIONS', '183cm x 105cm', 'Mixed media on canvas', '', 2009, 'images/Illusions seeing stars-Ww.jpg', 0),
(57, '...Ristikallio, rukous', 'ILLUSIONS', '222cm x 150cm', 'Mixed media on canvas', '', 2011, 'images/Illusions Ristikallio rukous-Ww.jpg', 0),
(58, '...Oh pretty woman', 'ILLUSIONS', '200cm x 150cm', 'Mixed media on canvas', '', 2010, 'images/illusions oh pretty woman-Ww.jpg', 0),
(59, '...we have all the time in the world', 'ILLUSIONS', '140cm x 150cm', 'Mixed media on canvas', '', 2010, 'images/illusions we have all the time in the world cyan-Ww.jpg', 0),
(60, 'Ekpyrotics 03812', 'Ekpyrotics', '100cm x 100cm', 'Mixed media on canvas', '', 2013, 'images/ekpyrotics 030812-Ww.jpg', -1),
(64, 'DARKNESS #1', 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2006, 'images/DARKNESS 1-Ww.jpg', 1),
(65, 'DARKNESS #4', 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2006, 'images/DARKNESS 4-Ww.jpg', 2),
(66, 'DARKNESS #3', 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2006, 'images/DARKNESS 3-Ww.jpg', 3),
(67, 'DARKNESS #7', 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2007, 'images/DARKNESS 7-Ww.jpg', 4),
(68, 'DARKNESS #6', 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2007, 'images/DARKNESS 6-Ww.jpg', 5),
(69, 'DARKNESS #8', 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2007, 'images/DARKNESS 8-Ww.jpg', 6),
(70, 'DARKNESS #2', 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2007, 'images/DARKNESS 2-Ww.jpg', 7),
(71, 'DARKNESS #5', 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', '', 2007, 'images/DARKNESS 5-Ww.jpg', 8),
(72, 'DARKNESS intro', 'DARKNESS', '37cm x 62cm', 'book page', '', 2008, 'images/DARKNESS Fortum Tower 0 frontpage.jpg', 9),
(73, 'concept sketch A for All of Me, All of You', 'All of Me, All of You', '29cm x 40cm', 'sketch', '', 2008, 'images/All of me Sketch A-Ww.jpg', 1),
(74, 'concept sketch B detail for All of Me, All of You', 'All of Me, All of You', '29cm x 40cm', 'sketch', '', 2008, 'images/all of me Sketch B detail-Ww.jpg', 2),
(75, 'All of Me, All of You (Mikkeli)', 'All of Me, All of You', '400cm x 200cm', 'photos glued onto mirrors', '', 2012, 'images/All of me image 1-Ww.jpg', 3),
(76, 'All of Me, All of You (Mikkeli)', 'All of Me, All of You', '400cm x 200cm', 'photos glued onto mirrors', '', 2012, 'images/All of Me image 5-Ww.jpg', 4),
(77, 'All of Me, All of You (Mikkeli) detail', 'All of Me, All of You', '35cm x 24cm', 'photos glued onto mirrors', '', 2012, 'images/All of me detail-3083530 image-Ww.jpg', 5),
(78, 'All of Me, All of You (Mikkeli) detail', 'All of Me, All of You', '35cm x 24cm', 'photos glued onto mirrors', '', 2012, 'images/All of me detail-3083544 image-Ww.jpg', 6),
(81, '...liberte, egalite, fraternite', 'ILLUSIONS', '190cm x 240cm', 'Mixed media on canvas', '', 2012, 'images/illusions_liberte-Ww.jpg', 7),
(82, '...seven heavens', 'ILLUSIONS', '100cm x 100cm', 'fotosec print, edition 7', '', 2014, 'images/illusions seven heavens A-Ww.jpg', 6),
(84, '...como una ola de fuerza e luz', 'ILLUSIONS', '184cm x 210cm', 'Mixed media on canvas', '', 2014, 'images/illusions_como_una_ola-Ww.jpg', 1),
(87, 'energy Puula 12', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 12 image-Ww.jpg', 3),
(88, 'energy Puula 11', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 11 image-Ww.jpg', 4),
(89, 'energy Sundar', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2004, 'images/energy sundaro 2 image-Ww.jpg', 5),
(90, 'energy Vodlozero 1', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2005, 'images/energy vodlozero 1 image-Ww.jpg', 6),
(91, 'energy Puula 1', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 01 image-Ww.jpg', 2),
(93, 'Energy Puula 8', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2003, 'images/energy puula 08 image-Ww.jpg', 9),
(94, 'energy Vodlozero 2', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2005, 'images/energy vodlozero 2 image-Ww.jpg', 10),
(95, 'energy Puula 6', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 06 image-Ww.jpg', 12),
(96, 'energy Puula 5', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 05 image-Ww.jpg', 11),
(97, 'energy Puula 3', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 03 image-Ww.jpg', 14),
(98, 'energy Puula 2', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2006, 'images/energy puula 02 image-Ww.jpg', 15),
(100, 'energy Puula 9', 'Energy', '123cm x 91cm', 'fotosec print, edition 7', '', 2007, 'images/energy puula 09 image-Ww.jpg', 7);

-- --------------------------------------------------------

--
-- Rakenne taululle `images_uusi`
--

CREATE TABLE `images_uusi` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `dzi_file` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `dzi` int(1) DEFAULT '0',
  `category` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `size` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `technic` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `filelocation` varchar(500) COLLATE utf8_swedish_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `images_uusi`
--

INSERT INTO `images_uusi` (`id`, `name`, `dzi_file`, `dzi`, `category`, `size`, `technic`, `year`, `filelocation`, `sort`) VALUES
(14, 'and we walk on the leaves of trees var_2', 'and_we_walk_var_2__image_only-Ww', 1, 'All and the rest', '127cm x 102cm', 'Mixed media on canvas', 2012, '', 11),
(24, 'Unclimbed Lake Puula 2', 'Unclimbed_Lake_Puula_2_io', 1, 'Unclimbed Puula', '110cm x 62cm', 'inkjet print mounted on board,floating in grey frame, edition 5', 2006, '', 2),
(25, 'Unclimbed Lake Puula 1', 'Unclimbed_Lake_Puula_1_io', 1, 'Unclimbed Puula', '110cm x 62cm', 'inkjet print mounted on board,floating in grey frame, edition 5', 2006, '', 1),
(26, 'Unclimbed Lake Puula 3', 'Unclimbed_Lake_Puula_3_io', 1, 'Unclimbed Puula', '110cm x 62cm', 'inkjet print mounted on board,floating in grey frame, edition 5', 2006, '', 3),
(29, 'All of me, all of you, Kalevankangas School, Mikkeli installation 1', 'All_of_me_image_1', 1, 'All of Me, All of You', '400cm x 200cm', '4x3xm photos glued on mirrors', 2012, '', 7),
(33, 'All of me, all of you, Kalevankangas School, Mikkeli installation 4', 'All_of_Me_image_4', 1, 'All of Me, All of You', '400cm x 200cm', '4x3xm photos glued on mirrors', 2012, '', 4),
(34, 'All of me, all of you, Kalevankangas School, Mikkeli installation 5', 'All_of_Me_image_5', 1, 'All of Me, All of You', '400cm x 200cm', '4x3cm photos glued on 8 100x100cm mirrors', 2012, '', 3),
(36, 'All of me, all of you, Kalevankangas School, Mikkeli installation detail 2', 'All_of_me_detail-3083534_image', 1, 'All of Me, All of You', '40cm x 30cm', '4x3cm photos glued on 8 100x100cm mirrors', 2012, '', 5),
(37, 'All of me, all of you, Kalevankangas School, Mikkeli installation detail 3', 'All_of_me_detail-3083544_image', 1, 'All of Me, All of You', '40cm x 30cm', '4x3cm photos glued on 8 100x100cm mirrors', 2012, '', 6),
(60, 'Perfect squared square The Mountain', 'perfect_square_The_mountain_io_web', 0, 'Perfect square', '110cm x 110cm', 'pigment print mounted aluminium, ed.5', 2008, '', 1),
(61, 'Perfect squared square Les Nympheas Rouges', 'perfect_square_Les_nympheas_io_web', 0, 'Perfect square', '110cm x 110cm', 'pigment print mounted on aluminium, ed.5', 2008, '', 2),
(62, 'Perfect squared square JNC Sinai', 'perfect_square_1_JNC_Sinai_black_io_web', 0, 'Perfect square', '110cm x 110cm', 'pigment print mounted on aluminium, ed.5', 2008, '', 3),
(63, 'Perfect squared square JNC Lake Puula', 'perfect_square_2_JNC_Puula_black_io_web', 0, 'Perfect square', '110cm x 110cm', 'pigment print mounted on aluminium, ed.5', 2008, '', 4),
(64, 'DARKNESS Fortum Tower 1', 'DARKNESS_Fortum_Tower_1_io_web', 1, 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2006, '', 2),
(65, 'DARKNESS Fortum Tower 2', 'DARKNESS_Fortum_Tower_2_io_web', 1, 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2007, '', 3),
(66, 'DARKNESS Fortum Tower 3', 'DARKNESS_Fortum_Tower_3_io_web', 1, 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2006, '', 4),
(67, 'DARKNESS Fortum Tower 4', 'DARKNESS_Fortum_Tower_4_io_web', 1, 'DARKNESS', '95cm x 195cm', 'Mixed media on canvas', 2007, '', 5),
(68, 'DARKNESS Fortum Tower 6', 'DARKNESS_Fortum_Tower_6_io_web', 1, 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2007, '', 6),
(69, 'DARKNESS Fortum Tower 7', 'DARKNESS_Fortum_Tower_7_io_web', 1, 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2007, '', 7),
(70, 'DARKNESS Fortum Tower 8', 'DARKNESS_Fortum_Tower_8_io_web', 1, 'DARKNESS', '84cm x 205cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2007, '', 8),
(71, 'DARKNESS Fortum Tower 5', 'DARKNESS_Fortum_Tower_5_io_web', 1, 'DARKNESS', '95cm x 195cm', 'inkjet print mounted on board, floating , with heavy black frame, edition 5', 2007, '', 9),
(72, 'ILLUSIONS..... and all these moments disappear like tears in the rain', 'ILLUSIONS_and_all_these_moments_io_web', 1, 'ILLUSIONS', '190cm x 110cm', 'Mixed media on canvas', 2016, '', 23),
(73, 'ILLUSIONS..... salaam', 'Illusions__Salaam-9004592-Edit_io_web', 1, 'ILLUSIONS', '110cm x 149cm', 'Mixed media on canvas', 2016, '', 30),
(123124, 'ILUSI&Oacute;NES...como una ola de fuerza e luz', 'ILLUSIONS_como_una_ola_F_io_web', 1, 'ILLUSIONS', '188cm x 210cm', 'Mixed media on canvas', 2009, '', 6),
(123135, 'Le feu de la glace, mesure 18', 'le_feu_de_la_glace_mesure_18_io_web', 1, 'Le feu de la glace', '100cm x 75cm', 'pigment print floating in black frame, ed. 5', 2015, '', 1),
(123136, 'Le feu de la glace, mesure 23', 'le_feu_de_la_glace_mesure_23__io_web', 1, 'Le feu de la glace', '100cm x 75cm', 'pigment print floating in black frame, ed. 5', 2015, '', 1),
(123137, 'Le feu de la glace, mesure 29', 'le_feu_de_la_glace_mesure_29__io_web', 1, 'Le feu de la glace', '100cm x 75cm', 'pigment print floating in black frame, ed. 5', 2015, '', 1),
(123138, 'Le feu de la glace, mesure 32', 'le_feu_de_la_glace_mesure_32__io_web', 1, 'Le feu de la glace', '100cm x 75cm', 'pigment print floating in black frame, ed. 5', 2015, '', 1),
(123139, 'Le feu de la glace, mesure 35', 'le_feu_de_la_glace_mesure_35__io_web', 1, 'Le feu de la glace', '100cm x 75cm', 'pigment print floating in black frame, ed. 5', 2015, '', 1),
(123140, 'Le feu de la glace, mesure 39', 'le_feu_de_la_glace_mesure_39__io_web', 1, 'Le feu de la glace', '100cm x 75cm', 'pigment print floating in black frame, ed. 5', 2015, '', 1),
(123141, 'As far as the ear can hear', 'As_far_as_the_ear_can_hear_Otava_for_A3', 1, 'Calligraphies', '250cm x 200cm', 'laser-cut LP records on painted wall', 2015, '', 4),
(123142, 'As far as the I can see #1', 'as_far_as_the_eye_BLACK', 1, 'Calligraphies', '100cm x 100cm', 'oil paint and laser-cut on board', 2016, '', 7),
(123143, 'In heaven 2', 'Taivaassa_2-9004586-Edit', 1, 'Calligraphies', '100cm x 100cm', 'oil paint and laser-cut on board', 2016, '', 9),
(123144, 'In heaven', 'In_heaven_pentagram_8004559', 1, 'Calligraphies', '100cm x 100cm', 'oil paint and laser-cut on board', 2016, '', 10),
(123145, 'When I no longer see like a child, I might as well be dead', 'Kun_en_enaa_nae_lapsen_lailla_DIPTYYKKI', 1, 'Calligraphies', '210cm x 100cm', 'oil paint and laser-cut on board', 2016, '', 11),
(123146, 'The 2016 Duchamp Games', 'The_2016_Duchamp_Games', 1, 'Calligraphies', '330cm x 160cm', 'oil paint and laser-cut on board', 2016, '', 12),
(123147, 'There is no solution', 'There_is_no_solution_both_sides', 1, 'Calligraphies', '100cm x 100cm', 'oil paint on canvas, two sides', 2016, '', 13),
(123148, 'Om&ouml;jligt att tvinga andan tillbaka i flaskan', 'omojligt_att_tvinga_tillbaka__image', 1, 'Calligraphies', '150cm x 150cm', 'Mixed media on canvas', 2015, '', 16),
(123150, '&iexcl;Milagros, mi vida!', 'Milavida_mi_vida_F_io_web', 1, 'ILLUSIONS', '150cm x 160cm', 'Mixed media on canvas', 2013, '', 1),
(123151, 'ILLUSIONS..... je marche vers moi et tout que vient 3', 'illusions_je_marche_version_1_F_io_web', 1, 'ILLUSIONS', '190cm x 150cm', 'Mixed media on canvas', 2011, '', 20),
(123152, 'ILLUSIONS...... les quatre temps', 'les_quatre_temps_multi_2nd_sketch_wip1_3_io_web', 1, 'ILLUSIONS', '248cm x 150cm', 'Mixed media on canvas', 2015, '', 15),
(123154, 'ILLUSIONS..... mono no aware', 'Illusions_mono_no_aware_F2_io_web', 1, 'ILLUSIONS', '180cm x 90cm', 'Mixed media on canvas', 2009, '', 19),
(123155, 'ILLUSIONS..... we have all the time in the world', 'Illusions_we_have_all_the_time_B_io_web', 1, 'ILLUSIONS', '145cm x 150cm', 'Mixed media on canvas', 2010, '', 28),
(123156, 'ILLUSIOITA..... Ristikallio, rukous...', 'Illusions_Ristikallio_rukous_F_io_web', 1, 'ILLUSIONS', '222cm x 150cm', 'Mixed media on canvas', 2007, '', 24),
(123157, 'ILLUSIONS...... the wheels of fortune   and destruction', 'illusions_wheel_of_fortune_io_web', 1, 'ILLUSIONS', '253cm x 185cm', 'Mixed media on canvas', 2011, '', 25),
(123158, 'ILLUUSIOITA...maailmaa hallitaan silmilla, mutta mina en hallitse silmiani', 'ILLUSIONS_nakeva_silma_VER_1_F_io_web', 1, 'ILLUSIONS', '298cm x 150cm', 'Mixed media on canvas', 2016, '', 4),
(123159, 'ILLUSIONS....... oh pretty woman', 'Illusions_Oh_pretty_woman_comp150_F_ver1_io_web', 1, 'ILLUSIONS', '187cm x 150cm', 'Mixed media on canvas', 2010, '', 9),
(123161, 'ILLUSIONS...une étoile caresse les seins d&#039;une nêgresse', 'Illusions_un_etoile_F_io_web', 1, 'ILLUSIONS', '203cm x 150cm', 'Mixed media on canvas', 2008, '', 27),
(123162, 'ILLUSIONS..... ASLAP (as slow as possible)', 'Illusions_ASLAP_F2_cropped_io_web', 1, 'ILLUSIONS', '200cm x 100cm', 'Mixed media on canvas', 2013, '', 13),
(123163, 'ILLUSIONS...... on ne voit bien que avec la coeur', 'Illusions_on_ne_voit_bien_que_io_web', 1, 'ILLUSIONS', '203cm x 150cm', 'Mixed media on canvas', 2008, '', 10),
(123164, 'The renewal of memories of moments of perfection', 'the_renewal_of_memories-3004466-Edit_io_web', 1, 'Calligraphies', '150cm x 150cm', 'Mixed media on canvas', 2016, '', 15),
(123165, 'and we walk on the leaves of trees var_3', 'and_we_walk_on_the_leaves_of_the_trees_3_io_web', 1, 'All and the rest', '150cm x 170cm', 'Mixed media on canvas', 2012, '', 10),
(123166, 'As far as the I can see #2', 'as_far_as_the_eye_can_see005_IKB_white_flat', 1, 'Calligraphies', '100cm x 100cm', 'oil paint and laser-cut on board mounted on a mirror', 2016, '', 6),
(123167, 'ILLUSIONS...libert&eacute;, c&#039;est q&#039;une opera, me disait le fantomet', '3_cannons_HIGH_F_io_web', 1, 'ILLUSIONS', '190cm x 241cm', 'Mixed media on canvas', 2009, '', 26),
(123168, 'Al-Nur', 'Al-Nur_WITH_DETAIL_flat', 1, 'Calligraphies', '70cm x 170cm', 'a chili plant and print on cardboard', 2014, '', 14),
(123169, 'On Art', 'Taiteesta_alku_ja_loppu_io_web', 1, 'All and the rest', '40cm x 70cm', 'a bomb in a cabbage head on a plexi rod', 2016, '', 1),
(123170, 'This life we live', 'This_life_we_live_painting_io_web', 1, 'All and the rest', '181cm x 47cm', 'Mixed media on canvas', 2013, '', 3),
(123172, 'ILLUSIONS.....  je te donne tout le jardin', 'Illusions_je_te_donne_F_110_io_web', 1, 'ILLUSIONS', '268cm x 110cm', 'Mixed media on canvas', 2008, '', 5),
(123175, 'ILLUSIONER att &aring;ngra har aldrig ogjort n&aring;got', 'Illusions_Centre_Pompidou_talo_wip2_io_web', 1, 'ILLUSIONS', '215cm x 135cm', 'Mixed media on canvas', 2015, '', 17),
(123176, 'Beatus Nycopensis, illustration 4', 'beatus_ill4_sketch', 1, 'All and the rest', '70cm x 75cm', 'illustrated manuscript page', 2013, '', 9),
(123177, 'ILLUSIONER...... jag ser som nitton somrar ser', 'birches_in_spring_2_B_F_io_web', 1, 'ILLUSIONS', '175cm x 150cm', 'Mixed media on canvas', 2008, '', 12),
(123178, 'This being human 2', 'This_being_human_2_io_web', 1, 'All and the rest', '118cm x 81cm', 'Mixed media on canvas', 2013, '', 4),
(123179, 'ILLUSIONER.....   jag ser som nitton v', 'illusions_jag_ser_som_nitton_F8_io_web', 1, 'ILLUSIONS', '209cm x 150cm', 'Mixed media on canvas', 2008, '', 11),
(123180, 'ILLUSIONS..... de Saint Eustache, le meurtrier', 'st_eustache_mono_no_aware_io_web', 1, 'ILLUSIONS', '174cm x 100cm', 'Mixed media on canvas', 2015, '', 18),
(123181, 'Ekpyrotics 170212', 'ekpyrotics_170212_io_web', 1, 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', 2012, '', 1),
(123183, 'As far as the eye can see', 'silmankantamattomiin_Mikkeli_market_square_mirrored_photos_io_web', 1, 'Calligraphies', '1750cm x 200cm', 'Two-sided mirrors on suspension lines', 2016, '', 5),
(123184, 'Ekpyrotics 120312', 'ekpyrotics_120312_io_web', 1, 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', 2012, '', 2),
(123185, 'Ekpyrotics 050712', 'ekpyrotics_050712_io_web', 1, 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', 2012, '', 3),
(123187, 'Ekpyrotics 040613', 'ekpyrotics_040613_ver3_io_web', 1, 'Ekpyrotics', '150cm x 150cm', 'Mixed media on canvas', 2015, '', 4),
(123189, 'A pair of empty branes, version blue', 'Notre_Dame_Est_blue_80_io_web', 1, 'Ekpyrotics', '87cm x 80cm', 'fotosec print, edition 7', 2014, '', 8),
(123190, 'A pair of empty branes, version chestnut', 'Notre_Dame_Est_chestnut_80_io_web', 1, 'Ekpyrotics', '87cm x 80cm', 'fotosec print, edition 7', 2014, '', 7),
(123191, 'A pair of empty branes, version pink', 'Notre_Dame_Est_pink_80_io_web', 1, 'Ekpyrotics', '87cm x 80cm', 'fotosec print, edition 7', 2014, '', 6),
(123192, 'Ekpyrotics 030812', 'Ekpyrotics_030812_uusi_io_web', 1, 'Ekpyrotics', '100cm x 100cm', 'Mixed media on canvas', 2013, '', 5),
(123193, 'ILLUSIONER...p&aring; v&aring;ra dr&ouml;mmars vingar i landet som icke &auml;r', 'illusions_pa_vara_drommars_io_web', 1, 'ILLUSIONS', '234cm x 1100cm', 'Mixed media on canvas', 2013, '', 14),
(123194, 'Seven Heavens', 'star_trails_10_newman_curved_100_io_web', 1, 'Ekpyrotics', '100cm x 100cm', 'fotosec print, edition 7', 2006, '', 9),
(123196, 'energy Puula 1', 'Puula_e_5078041_FF_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 1),
(123197, 'energy Puula 2', 'Lake_Puula_reflections_7060452_12490D_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 2),
(123198, 'energy Puula 4', 'Lake_Puula_reflections_3002_FA_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2002, '', 4),
(123199, 'energy Puula 5', 'Lake_Puula_Karttuunselka_May_00015_e3020_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2003, '', 8),
(123200, 'energy Puula 3', 'Puula_e_5088100_FG_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 11),
(123201, 'energy Puula 6', 'Lake_Puula_reflections_8070693_12490_io_web', 0, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 9),
(123202, 'energy Puula 7', 'Lake_Puula_reflections_80706887695_12490_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 10),
(123203, 'energy Puula 8', 'Lake_Puula_reflections_in_Autumn_DSC08728_FB_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2003, '', 7),
(123204, 'energy Puula 9', 'Lake_Puula_reflections_7030359_95124_FC_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 6),
(123205, 'energy Puula 11', 'Lake_Puula_reflections_7310493_12490E_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 12),
(123206, 'energy Puula 12', 'Lake_Puula_reflections_7310502_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2006, '', 13),
(123207, 'energy Sundar&ouml; 2', 'Sea_reflection_34003_F_io_web', 1, 'Energy', '123cm x cm', 'oval pigment print on aluminium', 2004, '', 3),
(123210, 'energy Vodlozero 3', 'vodlozero_9251731_e_ccK_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2005, '', 14),
(123212, 'energy Vodlozero 2', 'vodlozero_9241607_FJ_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2005, '', 15),
(123213, 'energy Vodlozero 1', 'vodlozero_9261792_e_F_io_web', 1, 'Energy', '123cm x 91cm', 'oval pigment print on aluminium', 2005, '', 5),
(123214, 'Unclimbed from the Base Camp', 'Unclimbed_Watkins_Mountains_118_F_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 2),
(123215, 'Unclimbed 2', 'Unclimbed_Watkins_Mountains_129_F_168110_vaal_io_web', 1, 'Unclimbed', '168cm x 100cm', 'fotosec print, edition 7', 2001, '', 3),
(123216, 'Unclimbed 1', 'Unclimbed_Watkins_Mountains_119_F_167110_lighter_io_web', 1, 'Unclimbed', '168cm x 100cm', 'fotosec print, edition 7', 2001, '', 4),
(123218, 'Unclimbed 3', 'Unclimbed_Watkins_mountains_098_wip2_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 5),
(123219, 'Unclimbed 4', 'Unclimbed_Watkins_Mountains_114_F_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 9),
(123220, 'Unclimbed 9', 'Unclimbed_Watkins_Mountains_099_gf10070_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 8),
(123221, 'Unclimbed 5', 'Unclimbed_Watkins_Mountains_095_10070_vaal_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 10),
(123222, 'Unclimbed 8', 'Unclimbed_Watkins_Mountains_120_light10070_vaal_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 7),
(123223, 'Unclimbed 6', 'Unclimbed_Watkins_Mountains_116_F3_io_web', 1, 'Unclimbed', '70cm x 100cm', 'fotosec print, edition 7', 2001, '', 11),
(123224, 'Mountains are people', 'mountains_are_people_io_web', 1, 'Unclimbed', '70cm x 100cm', 'inkjet print mounted on aluminium, edition 5', 2005, '', 1),
(123225, 'Unclimbed 7', 'Unclimbed_Watkins_Mountains_117_10070_vaal_io_web', 1, 'Unclimbed', '100cm x 70cm', 'fotosec print, edition 7', 2001, '', 6),
(123226, 'The desert, Aswan', 'Libyan_desert_41030_pano_large_F52_BMY4Sepia_pink_io_web', 1, 'All and the rest', '146cm x 50cm', 'inkjet print mounted on board,floating in grey frame, edition 5', 2004, '', 7),
(123227, 'ILLUUSIOITA.... totisesti, min&auml; el&auml;n synkk&auml;&auml; aikaa', 'pihlaja-luminen-202875_WIP_sm_flat_VER_2_io_web', 1, 'ILLUSIONS', '150cm x 113cm', 'Mixed media on canvas', 2015, '', 29),
(123228, 'Russelv, September sunset', 'Russelv_September_sunset__8239895', 1, 'All and the rest', '80cm x 60cm', 'pigment print mounted on aluminium, ed.5', 2004, '', 6),
(123229, 'This one is for children, Gazaing, at death', 'Dedications_children_C195401_io_web', 1, 'All and the rest', '86cm x 70cm', 'fotosec print, edition 7', 2008, '', 5),
(123230, 'Perfect squared square concept', 'perfect_square_workshop_EN2', 1, 'Perfect square', '21cm x 29cm', 'concept', 2009, '', 1),
(123231, 'Fire walk with me', 'Fire_triptyque_io_web', 1, 'All and the rest', '70cm x 215cm', 'triptyque, fotosec prints, edition 7', 2003, '', 2),
(123233, 'ILLUSIONS.....    ici, il n&#039;y a rien de plus vieux que le glacier bleu', 'Illusions_Pont_Louis_Philippe_esq2_F150_io_web', 1, 'ILLUSIONS', '191cm x 150cm', 'Mixed media on canvas', 2008, '', 8),
(123234, 'Courmayer, Pr&eacute; de Pascal', 'Pre_de_Pascal_io_web', 1, 'All and the rest', '109cm x 48cm', 'inkjet print mounted on board,floating in grey frame, edition 5', 2010, '', 8),
(123235, 'Pimeytt&auml; ei ole', 'pimeytta_ei_ole', 1, 'DARKNESS', '40cm x 100cm', 'concept', 2007, '', 1),
(123236, 'Karttuunselk&auml; July midday', 'Lake_Puula_Karttuunselka_61764_F_70214_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2006, '', 2),
(123237, 'Karttuunselk&auml; June midnight', 'valo_61701_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2002, '', 12),
(123239, 'Karttuunselk&auml; January midday', 'VALO_617284_F_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2009, '', 7),
(123240, 'Karttuunselk&auml; January morning', 'VALO_617276_F_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2007, '', 8),
(123241, 'Karttuunselk&auml; October morning', 'Lake_Puula_Karttuunselka_61792_F_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2006, '', 5),
(123242, 'Karttuunselk&auml; December afternoon', 'Lake_Puula_Karttuunselka_61735_70214_-24_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2004, '', 6),
(123243, 'Karttuunselk&auml; April evening', 'Lake_Puula_Karttuunselka_617181_F214_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2008, '', 10),
(123246, 'Karttuunselk&auml; September midday', 'Lake_Puula_Karttuunselka_617101_F2_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2005, '', 4),
(123247, 'Karttuunselkä July night', 'Lake_Puula_Karttuunselka_61793_F_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2003, '', 1),
(123253, 'Karttuunselk&auml; August night', 'Light_617227_F_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2008, '', 3),
(123255, 'Karttuunselk&auml; May early morning', 'Lake_Puula_Karttuunselka_61767_70124_08_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2006, '', 11),
(123256, 'Karttuunselk&auml; February morning', 'Lake_puula_Karttuunselka_617140_F_io_web', 1, 'VALO ( LIGHT)', '70cm x 214cm', 'pigment print mounted on aluminium, edition 7', 2007, '', 9),
(123261, 'White Light 2', 'white_light_64501_wip4_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 2),
(123263, 'White Light 4', 'whitelight2007-04-02_26_edit2_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 3),
(123264, 'White Light 7', 'whitelight2007-04-02_30_edit_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 4),
(123265, 'White Light 3', 'whitelight2007-04-02_06_edit2_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 6),
(123266, 'White Light 5', 'whitelight2007-04-02_34_edit2_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 5),
(123267, 'White Light 8', 'whitelight2007-04-02_16_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 7),
(123268, 'White Light 9', 'whitelight2007-04-02_19_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 8),
(123270, 'White Light 1', 'whitelight2007-04-02_01_edit2_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 1),
(123274, 'White Light 10', 'whitelight2007-04-02_38-cc_io_web', 1, 'White light', '120cm x 90cm', 'fotosec print, edition 7', 2007, '', 9),
(123276, 'ILLUSIONS... l&#039;arbre change son nom et vient &Atilde;&iexcl; moi 4', 'ILLUSIONS_larbre_change_son_nom_ver_4_io_web', 1, 'ILLUSIONS', '187cm x 135cm', 'Mixed media on canvas', 2014, '', 22),
(123277, 'ILLUSIONS... l&#039;arbre change son nom et vient &Atilde;&iexcl; moi 3', 'ILLUSIONS_l_arbre_change_son_nom_3_io_web', 1, 'ILLUSIONS', '190cm x 135cm', 'Mixed media on canvas', 2016, '', 21),
(123278, 'ILLUSIONS... human eyes have evolved for survival purposes, seeing stars is purely accidental', 'Illusions_La_defense_fan_new_F_110_io_web', 1, 'ILLUSIONS', '110cm x 190cm', 'Mixed media on canvas', 2009, '', 3),
(123279, 'ILLUSIONS....... i have nothing to say, and I am saying it', 'Illusions_boc_io_web', 1, 'ILLUSIONS', '145cm x 145cm', 'Mixed media on canvas', 2009, '', 7),
(123280, 'ILLUSIONS..... to say good silence by, good to say by silence, by silence to say: good-good & goodby', 'Illusions_to_say_good_silence_by_io_web', 1, 'ILLUSIONS', '203cm x 135cm', 'Mixed media on canvas', 2012, '', 16),
(123284, 'Katajainen kansa window west', 'katajainen_window_west', 1, 'KOIVU paintings', '163cm x 103cm', 'pigment print on transparent film, the white parts are transparent', 2017, '', 20),
(123285, 'Katajainen kansa window east', 'Katajainen_window_east', 1, 'KOIVU paintings', '133cm x 103cm', 'pigment print on transparent film, the white parts are transparent', 2017, '', 21),
(123291, 'Koivupuisto (The Birch Park) south left', 'koivupuisto_E_vasen_koko', 1, 'Koivupuisto', '780cm x 1540cm', 'printed glass wall', 2017, '', 10),
(123294, 'Koivupuisto (The Birch Park) west wall', 'Koivupuisto_lansi', 1, 'Koivupuisto', '4611cm x 1535cm', 'printed glass wall', 2017, '', 1),
(123297, 'Koivupuisto (The Birch Park) east wall', 'KOIVUPUISTO_Ita', 1, 'Koivupuisto', '4804cm x 1895cm', 'printed glass wall', 2017, '', 8),
(123298, 'Koivupuisto (The Birch Park) north left', 'KOIVUPUISTO_P_V', 1, 'Koivupuisto', '1540cm x 1645cm', 'printed glass wall', 2017, '', 7),
(123299, 'Koivupuisto (The Birch Park) south right', 'KOIVUPUISTO_E_O', 1, 'Koivupuisto', '551cm x 1895cm', 'printed glass wall', 2017, '', 9),
(123307, 'Koivupuisto (The Birch Park) north right', 'koivupuisto_p_oikea', 1, 'Koivupuisto', '1994cm x 1535cm', 'printed glass wall', 2018, '', 6),
(123309, 'Koivutaulu PV-1', 'Koivupuisto_P_taulu_III12-13_90x150_F', 1, 'KOIVU paintings', '150cm x 90cm', 'Mixed media on canvas', 2018, '', 19),
(123310, 'Koivutaulu I-2-9', 'Koivupuisto_I_taulu_2-9_110x150_F', 1, 'KOIVU paintings', '150cm x 110cm', 'Mixed media on canvas', 2018, '', 16),
(123311, 'Koivutaulu I-2-7', 'Koivupuisto_I_taulu_2-7_110x150_F', 1, 'KOIVU paintings', '150cm x 110cm', 'Mixed media on canvas', 2018, '', 2),
(123313, 'Koivutaulu I-5', 'KOIVUPUISTO_I_taulu_5_150x120_F', 1, 'KOIVU paintings', '120cm x 180cm', 'Mixed media on canvas', 2018, '', 9),
(123317, 'Birches in Spring 2017', 'KOIVUPUISTO_EV_taulu_3_150x200', 1, 'KOIVU paintings', '400cm x 300cm', 'Mixed media on canvas', 2017, '', 15),
(123319, 'Koivutaulu I-3-3', 'Koivupuisto_I_taulu_3_ver4-3_150x150_F2', 1, 'KOIVU paintings', '150cm x 150cm', 'Mixed media on canvas', 2018, '', 8),
(123327, 'Flying Leaves', 'Koivupuisto_flying_leaves_100x100', 1, 'KOIVU paintings', '100cm x 100cm', 'Mixed media on canvas', 2017, '', 11),
(123330, 'The Birch Park visualisation south-west', 'KOIVUPUISTO_visualisation_sw_cr', 1, 'Koivupuisto', '5600cm x 1600cm', 'visualisation', 2018, '', 2),
(123332, 'As far as the I can see #3', 'As_far_as_the_eye_can_see_3_5150010', 1, 'Calligraphies', '100cm x 100cm', 'oil paint on canvas', 2018, '', 8),
(123334, 'Koivutaulu I-2-10', 'KOIVUPUISTO_TAULU_I_2-10_REAL', 1, 'KOIVU paintings', '150cm x 110cm', 'Mixed media on canvas', 2018, '', 18),
(123336, 'imagination', 'imagination_5310023_cr', 1, 'Calligraphies', '61cm x 84cm', 'oil paint on canvas', 2018, '', 1),
(123339, '111111111*111111111', 'universal_soldier', 1, 'Kosmogoni', '90cm x 90cm', 'oil paint on canvas', 2018, '', 11),
(123343, 'kaukana', 'Kosmogonia_kaukana_6210032', 1, 'Kosmogoni', '90cm x 90cm', 'oil paint on canvas', 2018, '', 10),
(123345, 'one and two and maybe more', 'One_and-Two_and_maybe_more_P8150033', 1, 'Kosmogoni', '90cm x 90cm', 'oil paint on canvas', 2018, '', 12),
(123350, 'si tu meurs, je te tue', 'si_tu_meurs_contrast_sRGB', 1, 'Kosmogoni', '90cm x 120cm', 'oil paint on canvas', 2018, '', 3),
(123356, 'Koivupuisto northwest on a grey Novenber day', 'koivupuisto_b050017cr', 1, 'Koivupuisto', '5000cm x 1900cm', 'printed glass wall', 2018, '', 5),
(123357, 'Dark was the Night, Cold was the Ground', 'Dark_Was_the_Night', 1, 'Kosmogoni', '74cm x 114cm', 'oil paint and pigment wax on board', 2018, '', 2),
(123363, 'a portrait of L', 'muotokuva_L', 1, 'Kosmogoni', '100cm x 100cm', 'oil paint on canvas', 2018, '', 6),
(123369, 'I am I and therefore I am', 'I_am_I_2', 1, 'Kosmogoni', '120cm x 120cm', 'oil paint on canvas', 2018, '', 9),
(123370, 'a bout de souffle', 'Kosmogoni_7_cc', 1, 'Kosmogoni', '90cm x 120cm', 'oil paint on canvas', 2018, '', 1),
(123373, 'yo painaa paahasi pimean seppeleen', 'jotta_en_sinua_nakisi_1010029', 1, 'Kosmogoni', '100cm x 100cm', 'oil paint on canvas', 2018, '', 4),
(123386, 'Koivutaulu I-6-2', 'KOIVUPUISTO_I_taulu_6_ver2', 1, 'KOIVU paintings', '93cm x 123cm', 'Mixed media on canvas', 2019, '', 10),
(123398, 'a portrait of K', 'muotokuva_K_45', 1, 'Kosmogoni', '142cm x 142cm', 'oil paint on canvas', 2018, '', 5),
(123399, 'a portrait of H', 'muotokuva_H_45cc', 1, 'Kosmogoni', '142cm x 142cm', 'oil paint on canvas', 2019, '', 7),
(123400, 'round - most that is good is', 'Imagination_C080005cc', 1, 'Kosmogoni', '150cm x 150cm', 'oil paint on canvas', 2018, '', 13),
(123401, 'si tu meurs, je te tue 2', 'si_tu_meurs_2cc', 1, 'Kosmogoni', '50cm x 50cm', 'mixed media on canvas', 2018, '', 8),
(123404, 'The Birch Dream of Junipery People', 'ESPER_L_katajainen', 1, 'KOIVU paintings', '150cm x 110cm', 'Mixed media on canvas', 2019, '', 4),
(123405, 'Birches in Spring 2018', 'birches_in_spring_2_WIP5', 1, 'KOIVU paintings', '150cm x 110cm', 'coloured hardened glass on stand for outdoors', 2018, '', 5),
(123408, 'Satu #1       Fairytale #1', 'KOIVU_lehti_1_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2019, '', 8),
(123410, 'Satu #4     Fairytale #4', 'KOIVU_lehti_4_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2018, '', 11),
(123411, 'Satu #9       Fairytale #9', 'KOIVU_lehti_9_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2018, '', 13),
(123412, 'Satu #2     Fairytale #2', 'KOIVU_lehti_2_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2019, '', 9),
(123413, 'Satu #7     Fairytale #7', 'KOIVU_lehti_7c_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2019, '', 12),
(123414, 'Satu #3     Fairytale #3', 'KOIVU_lehti_3_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2019, '', 10),
(123415, 'Pirjon lehdet', 'Pirjon_lehdet_1180029b', 1, 'KOIVU prints', '61cm x 37cm', 'photogravure, framed', 2019, '', 7),
(123418, 'Koivutaika III', 'Koivutaika_III_2010026', 1, 'KOIVU prints', '42cm x 44cm', 'photogravure, framed', 2019, '', 5),
(123421, 'Koivut koivut', 'Koivuristikko_150cm', 1, 'KOIVU paintings', '150cm x 110cm', 'coloured hardened glass on stand for outdoors', 2018, '', 3),
(123423, 'Birch Magic', 'pentagramspiraali_on_grey', 1, 'KOIVU paintings', '245cm x 255cm', 'fotosec', 2018, '', 7),
(123424, 'Koivutaulu I-4-4', 'Koivupuisto_I_taulu_4_4', 1, 'KOIVU paintings', '150cm x 90cm', 'Mixed media on canvas', 2018, '', 17),
(123425, 'Koivut I-3-4', 'Koivu_spiraali_I-3-4_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2019, '', 3),
(123428, 'Why oh Y', 'Why_oh_Y', 1, 'All and the rest', '100cm x 100cm', 'oil paint on canvas', 2018, '', 1),
(123429, 'The Butterfly Mandala III', 'The_Butterfly_mandala_IIIb_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'pigment print, framed', 2019, '', 15),
(123432, 'The Improbable End of No Beginning', 'KOIVU_lehti_1_ver3_F', 1, 'KOIVU paintings', '150cm x 110cm', 'coloured hardened glass on stand for outdoors', 2019, '', 1),
(123433, 'Koivutaulu I-2-12', 'Koivupuisto_I_taulu_2-12', 1, 'KOIVU paintings', '150cm x 110cm', 'coloured hardened glass on stand for outdoors', 2019, '', 13),
(123434, 'The Butterfly Mandala II', 'PERHOSspiraali_on_blue_50cm', 1, 'KOIVU prints', '64cm x 66cm', 'pigment print, framed', 2018, '', 14),
(123435, ' Koivutaulu EO-2', 'koivupuisto_EO_taulu_2_110x150_F', 1, 'KOIVU paintings', '150cm x 110cm', 'Mixed media on canvas', 2019, '', 14),
(123437, 'The Birch Park visualization northwest', 'KOIVUPUISTO_visualisation_n-w_cr2', 1, 'Koivupuisto', '7900cm x 1800cm', 'visualisation', 2017, '', 3),
(123439, 'Koivuaurinko (The Birch sun)', 'koivuaurinko_flatweb', 1, 'KOIVU prints', '61cm x 59cm', 'heliogravure, framed', 2019, '', 2),
(123441, 'Koivutaika IV', 'koivutaika_IV_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'heliogravure, framed', 2019, '', 6),
(123442, 'Koivutaika I', 'koivutaika_I_1180035_flatweb', 1, 'KOIVU prints', '62cm x 64cm', 'heliogravure, framed', 2019, '', 4),
(123443, 'The Butterfly Mandala I', 'The_Butterfly_mandala_III', 1, 'KOIVU paintings', '120cm x 110cm', 'coloured hardened glass on stand for outdoors', 2019, '', 6),
(123444, 'The Butterfly Mandala V', 'PERHOSET_mandala_F_138x115', 1, 'KOIVU paintings', '115cm x 138cm', 'Mixed media on canvas', 2019, '', 12),
(123446, 'The Birch Park view from room 56', 'koivupuisto_huone_5130056_HDR_ccflat', 1, 'KOIVUPUISTO inside rooms', '200cm x 180cm', 'printed glass window', 2019, '', 2),
(123447, 'The Birch Park view from room 46', 'koivupuisto_huone_5130046_HDR_ccflat', 1, 'KOIVUPUISTO inside rooms', '90cm x 170cm', 'printed glass window', 2019, '', 3),
(123448, 'The Birch Park view from room 6', 'koivupuisto_huone_5130061_HDR_ccflat', 1, 'KOIVUPUISTO inside rooms', '180cm x 170cm', 'printed glass window', 2019, '', 1),
(123449, 'The Birch Park view from room 84', 'koivupuisto_huone_5130084_HDR_ccflat', 1, 'KOIVUPUISTO inside rooms', '180cm x 170cm', 'printed glass window', 2019, '', 4),
(123450, 'The Birch Park view from room 91', 'koivupuisto_huone_5130091_HDR_ccflat', 1, 'KOIVUPUISTO inside rooms', '180cm x 170cm', 'printed glass window', 2019, '', 1),
(123452, 'Koivutaulu i-2-7 work in progress 2', 'Koivutaulu_i-2-7_teline_3290042', 0, 'In the Birch Park in The National Museum 2019', '151cm x 210cm', 'coloured hardened glass on stand for outdoors', 2019, '', 1),
(123456, 'National Museum Birch Park', 'koivupuistossa_KM_4300043', 1, 'In the Birch Park in The National Museum 2019', '151cm x 210cm', 'coloured hardened glass on stand for outdoors', 2019, '', 2),
(123457, 'National Museum Birch Park', 'koivupuistossa_KM_4300044', 1, 'In the Birch Park in The National Museum 2019', '151cm x 210cm', 'coloured hardened glass on stand for outdoors', 2019, '', 5),
(123458, 'National Museum Birch Park', 'koivupuistossa_KM_4300042', 1, 'In the Birch Park in The National Museum 2019', '151cm x 210cm', 'coloured hardened glass on stand for outdoors', 2019, '', 6),
(123459, 'National Museum Birch Park', 'koivupuistossa_KM_4300045', 1, 'In the Birch Park in The National Museum 2019', '151cm x 210cm', 'coloured hardened glass on stand for outdoors', 2019, '', 4),
(123460, 'National Museum Birch Park', 'koivupuistossa_KM_4300046', 1, 'In the Birch Park in The National Museum 2019', '151cm x 210cm', 'coloured hardened glass on stand for outdoors', 2019, '', 3),
(123462, 'katoavainen 3', 'katoavainen3', 1, 'katoavainen', '90cm x 65cm', 'pigment film on stainless steel', 2020, '', 3),
(123463, 'katoavainen 1', 'katoavainen1', 1, 'katoavainen', '67cm x 77cm', 'pigment film on curved stainless steel', 2020, '', 2),
(123464, 'the four seasons', 'koivikko_PANO70X88_F', 1, 'katoavainen', '70cm x 88cm', 'pigment film on curved stainless steel', 2020, '', 5),
(123465, 'The Improbable End of no Beginning 3', 'koivun_lehti_hippie100', 1, 'transient', '100cm x 122cm', 'pigment film on curved stainless steel', 2020, '', 2),
(123468, 'katoavainen 4', 'katoavainen4', 1, 'katoavainen', '110cm x 141cm', 'pigment film on stainless steel', 2020, '', 4),
(123469, 'katoavainen 2', 'katoavainen2', 1, 'katoavainen', '90cm x 136cm', 'pigment film on stainless steel', 2020, '', 1),
(123470, 'The Improbable End of no Beginning 2', 'The_Improbable_End_of_no_Beginning_2', 1, 'transient', '136cm x 100cm', 'pigment film on stainless steel', 2019, '', 1),
(123471, 'The Improbable End of no Beginning 4', 'TheImprobableEnd4', 1, 'transient', '63cm x 48cm', 'monotype', 2019, '', 3),
(123473, 'Birch Magic #7', 'TheBirchMagic7cc', 1, 'KOIVU prints', '50cm x 50cm', 'monotype', 2019, '', 1),
(123474, 'The admirals of the universe', 'Koivupuisto_P_2_perhoset_amiraali', 1, 'transient', '120cm x 80cm', 'pigment film on stainless steel', 2020, '', 8),
(123475, 'Through the black hole', 'Koivupuisto_P_2_perhoset_spiraali', 1, 'transient', '120cm x 80cm', 'pigment film on stainless steel', 2020, '', 7),
(123477, 'The Improbable End of no Beginning 7', 'TheImprobableEnd7', 1, 'transient', '63cm x 48cm', 'monotype', 2019, '', 4),
(123479, 'Butterfly pentagram 3', 'perhonenP8250019VER3', 1, 'transient', '70cm x 70cm', 'pigment film on stainless steel', 2020, '', 5),
(123480, 'Butterfly pentagram 2', 'perhonenP8250019VER2', 1, 'transient', '120cm x 80cm', 'pigment film on stainless steel', 2019, '', 1),
(123481, 'Birch Magic #8', 'koivutaikaVIIF', 1, 'KOIVU prints', '50cm x 50cm', 'water color on heliograph', 2019, '', 1),
(123483, 'SEEING The Wings of Reason 2', 'SEEING_the_wings_of_reason_2', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 10),
(123484, 'SEEING the universe in a flower 2', 'SEEING_universe_in_a_flower_2', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 8),
(123486, 'SEEING the universe in a flower 1', 'SEEING_universe_in_a_flower_1', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 7),
(123487, 'SEEING The Wings of Reason 1', 'SEEING_the_wings_of_reason_1', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 9),
(123488, 'SEEING Gold 1', 'SEEINGgold', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 1),
(123489, 'SEEING Silver 1', 'SEEINGsilver1', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 2),
(123490, 'SEEING Silver 2', 'SEEINGsilver2', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2003, '', 3),
(123491, 'SEEING the earth', 'SEEING_the_sky1', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 1999, '', 6),
(123492, 'SEEING heavens', 'SEEING_the_skies2', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2002, '', 5),
(123493, 'SEEING in altered states 2', 'SEEING_in_altered_states2', 1, 'SEEING', '80cm x 120cm', 'pigment film on stainless steel', 2004, '', 4),
(123499, 'The Birch Sun G2', 'koivumandala_round_65b', 1, 'tables', '65cm x 65cm', 'printed hardened glass on 40cm high painted steel legs', 2020, '', 1),
(123500, 'katoavainen 4G2	', 'P8250015_round_65cm', 1, 'tables', '65cm x 65cm', 'printed hardened glass on 40cm high painted steel legs', 2020, '', 3),
(123501, 'katoavainen 5G3', 'P6180012_WIP8_round', 1, 'tables', '46cm x 46cm', 'printed hardened glass on 40cm high painted steel legs', 2020, '', 4),
(123504, 'katoavainen 7G1', 'P9060020_cr_4x_round', 1, 'tables', '90cm x 90cm', 'printed hardened glass on 80cm high legs', 2020, '', 2),
(123505, 'the butterfly spiral G0', 'PERHOSET_mandala_wip2_pyöreä_iso', 1, 'tables', '120cm x 120cm', 'printed hardened glass on 80cm high legs', 2020, '', 5),
(123506, 'Birch painting  L-III- 3/6G', 'PERHOSTAULU_testipala_80X120', 1, 'tables', '80cm x 120cm', 'printed hardened glass on 80cm high painted steel legs', 2020, '', 8),
(123507, 'Birch painting  L-II-22G', 'KOIVUPÖYTÄ_L_III_22', 1, 'tables', '80cm x 120cm', 'printed hardened glass on 80cm high painted steel legs', 2020, '', 6),
(123508, 'Birch painting  L-VI-31G', 'Koivutaulu_L-VI-18', 1, 'tables', '80cm x 120cm', 'printed hardened glass on 40cm high painted steel legs', 2020, '', 7),
(123509, 'katoavainen 6G3', 'P9060013_round_vs2b', 1, 'tables', '46cm x 46cm', 'printed hardened glass on 40cm high painted steel legs', 2020, '', 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `music`
--

CREATE TABLE `music` (
  `mus_id` int(11) NOT NULL,
  `mus_title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mus_file` varchar(1565) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mus_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `music`
--

INSERT INTO `music` (`mus_id`, `mus_title`, `mus_file`, `mus_desc`) VALUES
(10, 'Telemanic dreaming', '10 Telemannic dreaming.mp3', 'Lauri Nykopp, sopranino sax; Tuomas Airola, cello; Sten Sandell, piano.\r\nVintage 1982!'),
(11, 'Rit', '4 Rit.mp3', 'Lauri Nykopp, alto sax; Tuomas Airola, cello; Sten Sandell, piano. Vintage 1982!'),
(12, 'Intensity', '1 Intensity.mp3', 'Lauri Nykopp, alto sax; Tuomas Airola, cello; Sten Sandell, piano.  Vintage 1982!'),
(13, 'painting an Agnes Martin painting', 'painting an Agnes Martin painting F.mp3', 'Lauri Nykopp, tenor sax\r\nPart 2 of \"As far as the ear can see\"'),
(14, 'to kill the mind', 'Track 03.mp3', 'Lauri Nykopp, tenor sax\r\nfrom the LP \"Y - an imaginary ritual\"'),
(15, 'pitkä pitkä yö (the long long night)', 'Track 06.mp3', 'Lauri Nykopp, contrabass clarinet and musical saw\r\nPart 6 of \" Y - an imaginary ritual\"');

-- --------------------------------------------------------

--
-- Rakenne taululle `news`
--

CREATE TABLE `news` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `post_date` date NOT NULL,
  `post_content` varchar(2555) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `news`
--

INSERT INTO `news` (`post_id`, `post_title`, `post_date`, `post_content`, `expdate`) VALUES
(55, '', '2018-05-17', '', '0000-00-00'),
(56, '', '2018-05-31', '', '0000-00-00'),
(9, 'full screen', '2014-05-12', 'sivut on suunniteltu katsottavaksi full-screen\r\nThese pages are designed for full-screen viewing', '2017-02-11'),
(15, 'Koivupuisto', '2017-04-20', '<p>&nbsp;</p>\r\n<p>20.02.2017</p>\r\n<p>&nbsp;</p>\r\n<p>ESSOTE (Etel&auml;-Savon sosiaali- ja terveyspalvelujen kuntayhtym&auml;) on tilannut Lauri Nykoppilta taideteoksen sairaalan uuden Perhe-talon julkisivuihin.</p>\r\n<p>&nbsp;</p>\r\n<p>Teos on kooltaan 2280m2 - n.145 metri&auml; leve&auml; ja n.16 metri&auml; korkea.</p>\r\n<p>&nbsp;</p>\r\n<p>Teos toteutetaan talon lasiseen kaksoisjulkisivuun lasitulostamalla.</p>\r\n<p>&nbsp;</p>\r\n<p>Tilaajan ainoa rajoite taiteilijan vapauteen on ett&auml; teoksen pit&auml;&auml; korvata talon paikalla aikaisemmin ollut puisto.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin-bottom: 0cm; line-height: 100%;\">&nbsp;</p>\r\n<p>&nbsp;</p>', '2020-02-20'),
(45, '', '2018-04-25', '', '0000-00-00'),
(46, '', '2018-04-25', '', '0000-00-00'),
(49, '', '2018-04-25', '', '0000-00-00'),
(50, 'taiteilijan luona', '2018-04-25', '<p>&nbsp;</p>\r\n<p><a title=\"koivunlehdet innoittavat\" href=\"https://drive.google.com/file/d/15Q1Oi-MCFUO2d0zB2vWRQ9a7fB-nypqi/view?usp=sharing\" target=\"_blank\" rel=\"noopener\">L&auml;nsi-Savo 25.4.2018</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2020-02-01'),
(48, '', '2018-04-25', '', '0000-00-00'),
(51, '', '2018-05-10', '', '0000-00-00'),
(52, 'The Birch Park insta', '2018-05-10', '<p>&nbsp;</p>\r\n<p>The first glass panel installed on May 9, 2018.&nbsp; By the end of September 2018 all 638 panels should be in place.</p>\r\n<p>See a video by Matti Aalto <a href=\"https://drive.google.com/file/d/1S-SvzvEGGKhXdQlbiUoirISkRwgKhhoF/view?usp=sharing\">The Birch Park, first glass panel installation</a></p>\r\n<p>What a great day!</p>\r\n<p>&nbsp;</p>', '2020-05-10'),
(53, '', '2018-05-17', '', '0000-00-00'),
(54, 'The Birches grow', '2018-05-17', '<p>The first part of The Birch Park (Koivupuisto) is now istalled.&nbsp; Pics soon.</p>\r\n<p>And new paintings added to Portfolio, categories Calligraphies and and Koivupuisto (The Birch Park).</p>', '2020-07-10'),
(18, 'Katajainen kansa', '2017-05-11', '<p>11.05.2017</p>\r\n<p>&nbsp;</p>\r\n<p style=\"\">Kuraattori Veikko Halmetoja on kutsunut Lauri Nykoppin luomaan uusia teoksia, variaatioita Koivupuisto-teoksen ikkunoista, n&auml;yttelyyn Katajainen kansa.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"\">Siin&auml; joukko taiteilijoita muuntaa purkutuomion saaneen 3-kerroksisen asuintalon tilap&auml;iseksi taidemuseoksi M&auml;ntyharjulla 17.06.-15.08.2017.</p>\r\n<p>&nbsp;</p>', '2022-09-20'),
(19, 'The Junipery People', '2017-05-11', '<p>11.05.2017</p>\r\n<p>&nbsp;</p>\r\n<p style=\"\">Curator Veikko Halmetoja has invited Lauri Nykopp to create new works, variations of windows for Nykopp&rsquo;s major work The Birch Park, for the exhibition Katajainen kansa (The Junipery People).</p>\r\n<p>&nbsp;</p>\r\n<p style=\"\">A group of artists shall transform a condemned 3-storey apartment house into a temporary art museum. Open June 17 to August 15 in M&auml;ntyharju, Finland.</p>\r\n<p>&nbsp;</p>', '2025-09-20'),
(23, 'henkilökuva Helsingi', '2017-09-11', '<p>10.09.2017 Helsingin Sanomat julkaisi kokosivun jutun, johon linkki <a title=\"Lauri Nykopp henkil&ouml;kuva\" href=\"http://www.hs.fi/paivanlehti/10092017/art-2000005359732.html\">t&auml;ss&auml;</a></p>', '0000-00-00'),
(25, 'The Birch Park files', '2018-02-13', '<p>17 months of intense work, but now all files for the 634 glass panes, totalling c.2400m2 are ready.&nbsp; Printing takes 2,5 months and then installation 4-5 months.&nbsp; We should see the finished Koivupuisto (The Birch Park) next November</p>', '0000-00-00'),
(57, 'new works', '2018-05-31', '<p>&nbsp;</p>\r\n<p>I have been more productive than is my (slow) norm.&nbsp; Three new ones in Calligraphy and two in Koivupuisto.</p>\r\n<p>&nbsp;</p>', '2019-07-31'),
(33, 'Koivupuisto nousee', '2018-03-13', '<p>talon rungosta kolme kerrosta ylh&auml;&auml;ll&auml;.&nbsp; Ja julkisivulasien, Koivupuiston, printtaaminen menossa.&nbsp;</p>\r\n<p>Toukokuussa alkaa Koivupuiston asentaminen, lokakuussa 2018 pit&auml;isi olla valmis.</p>', '0000-00-00'),
(34, '', '2018-03-26', '', '0000-00-00'),
(38, '', '2018-04-01', '', '0000-00-00'),
(39, '', '2018-04-01', '', '0000-00-00'),
(40, '', '2018-04-01', '', '0000-00-00'),
(41, '', '2018-04-01', '', '0000-00-00'),
(42, 'Mehän voidaan tehdä ', '2018-04-01', '<p>Suomen Kuvalehden laaja artikkeli 1980-luvun lopun kulttuurin murroksesta. Avainhenkil&ouml; Lauri Nykopp.<a href=\"https://suomenkuvalehti.fi/jutut/kotimaa/juppi-saattoi-lentaa-toolosta-helikopterilla-lounaalle-kulosaaren-kasinolle-sk-loysi-1980-luvun-juppejajuppi/\">Orppi eli old, rural and professional</a></p>', '2020-06-01'),
(36, '', '2018-03-26', '', '0000-00-00'),
(37, '', '2018-03-26', '', '0000-00-00'),
(43, '', '2018-04-01', '', '0000-00-00'),
(44, '', '2018-04-22', '', '0000-00-00'),
(58, '', '2019-01-18', '', '0000-00-00'),
(59, '', '2019-02-24', '', '0000-00-00'),
(60, '', '2019-02-24', '', '0000-00-00'),
(61, 'NEW: works on glass ', '2019-02-24', '<p>&nbsp;</p>\r\n<p>The works on glass for my Finnish National Museum exhibition are in production. See Portfolio, <a href=\"../portfolio.php?category=KOIVU%20paintings&amp;sImage=1\" target=\"_blank\" rel=\"noopener\"><strong>KOIVU paintings</strong></a>.</p>\r\n<p>And another new technique: SMALL works on paper.&nbsp; See Portfolio, <a href=\"../portfolio.php?category=KOIVU%20prints&amp;sImage=1\" target=\"_blank\" rel=\"noopener\"><strong>KOIVU prints</strong></a>.</p>\r\n<p>&nbsp;</p>', '2021-02-04'),
(62, '', '2020-04-22', '', '0000-00-00'),
(63, '', '2020-04-27', '', '0000-00-00'),
(64, '', '2020-04-27', '', '0000-00-00'),
(65, '', '2020-04-27', '', '0000-00-00'),
(66, '', '2020-04-29', '', '0000-00-00'),
(67, '', '2020-04-29', '', '0000-00-00'),
(68, '', '2020-04-30', '', '0000-00-00'),
(69, '', '2020-04-30', '', '0000-00-00'),
(70, '', '2020-10-22', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Rakenne taululle `poems`
--

CREATE TABLE `poems` (
  `poem_id` int(11) NOT NULL,
  `poem_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `poem_file` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `poems`
--

INSERT INTO `poems` (`poem_id`, `poem_title`, `poem_file`) VALUES
(1, 'Kuin Espanja, olen sidoksissa menneisyyteen', 'Kuin Espanja 3.pdf'),
(2, 'Thinking light(ly)', 'thinking light(ly).pdf');

-- --------------------------------------------------------

--
-- Rakenne taululle `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `post_date` date NOT NULL,
  `post_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `post_link1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `post_link2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `expdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_date`, `post_content`, `post_link1`, `post_link2`, `expdate`) VALUES
(34, 'Silmankantamattomiin', '2016-11-01', '<p>Laaja retrospektiivi <a href=\"http://www.mikkeli.fi/taidemuseo\" target=\"_blank\" rel=\"noopener\">Mikkelin Taidemuseossa </a></p>', '', '', '2016-11-10'),
(43, 'Katajainen kansa', '2017-06-09', '<p><a href=\"https://www.katajainenkansa.fi/\" target=\"_blank\" rel=\"noopener\">Katajainen kansa</a> avajaiset 17.6. 17-19, Keskustie 19, Mantyharju.&nbsp; Ja sitten 13.8.2017 asti klo 12-18. (paitsi juhannuksena)</p>\r\n<p>Mukana mm. uusimmat teokseni <a href=\"../portfolio.php?category=Koivupuisto&amp;sImage=1\">Koivupuisto</a>-teemasta.</p>', NULL, NULL, '2017-09-10'),
(45, 'Kääntää päitä', '2017-09-11', '<p>10.09.2017 Helsingin Sanomat julkaisi kokosivun profiilin.</p>\r\n<p>linkki t&auml;ss&auml; <a title=\"henkil&ouml;kuva\" href=\"http://www.hs.fi/paivanlehti/10092017/art-2000005359732.html\">Lauri Nykopp HeSa 10.09.2017</a></p>', NULL, NULL, '0000-00-00'),
(52, 'The Birch Park near', '2018-12-07', '<p>615 glass panels installed, 21 have to wait for the outside material lift to be taken down in late January 2019.</p>\r\n<p><a title=\"Koivupuisto luoteesta\" href=\"ftp://laurinyk@server304.com/www/testing/_B050017%20cr%20text.jpg\">The Birch Park, November 2018</a></p>', NULL, NULL, '2020-08-08'),
(53, 'Koivupuisto', '2019-01-18', '<p>uusi video</p>\r\n<p><a title=\"Koivupuisto\" href=\"https://www.youtube.com/embed/szv2xwm4nME?playlist=xaJah59hZsk,1AKGJq_YtY8,QXsVShYI2qw,M2bdJSOyAm8,GWJS7piQJMQ&amp;autoplay=1&amp;rel=0&amp;frameborder=0&amp;modestbranding=1&amp;playsinline=0\" target=\"_blank\" rel=\"noopener\">teoksen ja ajatusten esittely</a></p>', NULL, NULL, '0000-00-00'),
(54, 'The Birch Park', '2019-01-18', '<p>a new video presenting the work and the thinking</p>\r\n<p lang=\"en-US\" style=\"margin-bottom: 0cm; line-height: 100%;\"><a title=\"The Birch Park\" href=\"https://www.youtube.com/embed/Sgbp16-Ma5M?playlist=bH1sdk7WD-Q,xaJah59hZsk,QXsVShYI2qw&amp;autoplay=1&amp;rel=0&amp;modestbranding=1&amp;playsinline=0\" target=\"_blank\" rel=\"noopener\">to the video</a></p>', NULL, NULL, '0000-00-00'),
(55, 'Koivupuistossa', '2019-04-11', '<p>&nbsp;</p>\r\n<p>Suomen Kansallismuseo, Helsinki</p>\r\n<p>2.5.-1.9.2019</p>\r\n<p>Installaatio lasi+ter&auml;s \"veistos/maalauksia\",</p>\r\n<p>isoja kankaalle tehtyj&auml;, grafiikkaa.</p>\r\n<p><a href=\"https://www.kansallismuseo.fi/fi/naeyttelyt/koivupuistossa\">KOIVUPUISTOSSA</a></p>', NULL, NULL, '2022-04-11'),
(56, 'katoavainen', '2020-10-22', '<p>Gumbostrand Konst &amp; Form</p>\r\n<p>12.11.2020 - 17.01.2021</p>\r\n<p>uusia teoksia</p>\r\n<p>ja ensi kertaa my&ouml;s pieni&auml;!</p>', NULL, NULL, '2022-10-01');

-- --------------------------------------------------------

--
-- Rakenne taululle `pwdReset`
--

CREATE TABLE `pwdReset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `pwdReset`
--

INSERT INTO `pwdReset` (`pwdResetId`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(5, 'tuomas.puro@esedu.fi', '79f096e072f7e0e8', '$2y$10$IByZHI/2N4Otdw13BFSLgO7qnibbF0v911/tixQZD.22BX/1a7omC', '1602917026'),
(6, '', '9eedfa32ce394657', '$2y$10$NBMmBAa2qVBThiozMrTyrO/ciMiV0zxp/S5jtWEyVfJOq7ZRX.ACu', '1602917028'),
(7, 'oggemyres@gmail.com', 'b2e53317f9a0dc0f', '$2y$10$pFym/6KT9IK1xeQ/hLeH1u9mD/ao5Q3mfN.Voq1ug4Ad6fEG/MObe', '1634813160');

-- --------------------------------------------------------

--
-- Rakenne taululle `technic`
--

CREATE TABLE `technic` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `technic`
--

INSERT INTO `technic` (`id`, `name`) VALUES
(3, 'Mixed media on canvas'),
(4, 'Photoshop'),
(5, 'fotosec print, edition 7'),
(6, 'inkjet print mounted on aluminium, edition 5'),
(7, 'sketch'),
(8, 'sketch'),
(9, 'photos glued onto mirrors'),
(10, 'testi'),
(11, 'inkjet print mounted on board,floating in grey frame, edition 5'),
(12, 'fotosec print, edition 7'),
(13, 'inkjet print mounted on board, floating , with heavy black frame, edition 5'),
(14, 'inkjet print, floating in black frame'),
(15, 'book page'),
(16, 'printed glass wall'),
(17, 'printed glass wall'),
(18, 'oval pigment print on aluminium'),
(19, '4x3xm photos glued on mirrors'),
(20, '4x3cm photos glued on 8 100x100cm mirrors'),
(21, 'print'),
(22, 'concept'),
(23, 'concept'),
(24, 'pigment print mounted aluminium, ed.5'),
(25, 'pigment print mounted on aluminium, ed.5'),
(26, 'pigment print floating in black frame, ed. 5'),
(27, 'laser-cut LP records on painted wall'),
(28, 'oil paint and laser-cut on board'),
(29, 'oil paint on canvas, two sides'),
(30, 'oil paint and laser-cut on board mounted on a mirror'),
(31, 'a chili plant and print on cardboard'),
(32, 'a bomb in a cabbage head on a plexi rod'),
(33, 'Two-sided mirrors on suspension lines'),
(34, 'illustrated manuscript page'),
(35, 'triptyque, fotosec prints, edition 7'),
(36, 'pigment print mounted on aluminium, edition 7'),
(37, 'mixed media on canvas'),
(38, 'oil paint on canvas'),
(39, 'pigment print on transparent film, the white parts are transparent'),
(40, 'pigment print mounted on board'),
(41, 'visualisation'),
(42, 'mixed media'),
(43, 'oil paint and laset-cut on board'),
(44, 'oil paint and pigment wax on board'),
(45, 'fotogravyyri'),
(46, 'pigment print on paper'),
(47, 'printed glass on stand'),
(48, 'coloured hardened glass on stand for outdoors'),
(49, 'pigment print, framed'),
(50, 'pigment print, framed'),
(51, 'photogravure, framed'),
(52, 'fotosec'),
(53, 'heliogravure, framed'),
(54, 'heliogravure, framed'),
(55, 'printed glass'),
(56, 'printed glass window'),
(57, 'pigment print on curved stainless steel'),
(58, 'pigment film on stainless steel'),
(59, 'pigment film on curved stainless steel'),
(60, 'monotype'),
(61, 'monotype'),
(62, 'water color on heliograph'),
(63, 'printed hardened glass on 40cm high legs '),
(64, 'printed hardened glass on 40cm high painted steel legs'),
(65, 'printed hardened glass on 80cm high legs'),
(66, 'printed hardened glass on 80cm high painted steel legs');

-- --------------------------------------------------------

--
-- Rakenne taululle `testi`
--

CREATE TABLE `testi` (
  `buu` int(11) NOT NULL,
  `paa` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `emailUsers` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `username`, `emailUsers`, `password`) VALUES
(8, 'asd', 'asd@gmail.com', '$2y$10$YxPZFxzVctjo8K3eHSzAdufdi219HUmg9QqmOgM4Cru814gE2VboO'),
(10, 'tuomas', 'tuomas.puro@esedu.fi', '$2y$10$7QFcH2OsnvgKgShA9GlAoeMuYPs4GLwAIgvq8ufyu/htdxNuzvS5y'),
(4, 'memma', 'emmw666@gmail.com', '$2y$10$cBMb97Mtf600kY1WcKj8vOwE2Aw3Kj2LdTB1s1WwanMqvfpkPa8d6'),
(7, 'testi', 'emma-oinonen2011@hotmail.com', '$2y$10$UzWmVdAkVQ6NJznrDpEbfurvVUBjoOigkKWucIxVP2uXoL9VXky26'),
(9, 'emma', 'emma@gmail.com', '$2y$10$n7AS0sU8/6x/TAAM/5L.DevouMR8kjqwEvji4WHuJyMxaaZqA84MS'),
(11, 'laurinyk', 'lauri@laurinykopp.com2', '$2y$10$RalU929zSFfVr.Yq3aokeOOVkOCgwr3ELSP37SgYy5/3lPLifahY6'),
(12, 'nykopp', 'lauri@laurinykopp.com', '$2y$10$C4pjrFwVAgkMPw1efmNzBuXGVAMXc9pVfpQEpRq1XAhQn20Pcnmpq');

-- --------------------------------------------------------

--
-- Rakenne taululle `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `video_link` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `video_desc` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `video_thumb` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `videos`
--

INSERT INTO `videos` (`video_id`, `video_title`, `video_link`, `video_desc`, `video_thumb`) VALUES
(14, 'VALO (=LIGHT, Finnish version)', 'QXsVShYI2qw', 'Konsepti: \"aurinko maalaa, valokuvaaja taltioi.\"', 'LIGHT_Karttuunselka_61701_webL-Ww.jpg'),
(16, 'All of Me, All of You,  2012 Mikkeli', 'GWJS7piQJMQ', 'dokumentti teoksen tuotannosta', 'All of Me image 4-Ww.jpg'),
(35, 'Ekpyrotics', 'M2bdJSOyAm8', 'Teoksen Ekpyrotics 05072012 esittely', NULL),
(32, 'Silmänkantamattomiin - As far as the I can see', 'xaJah59hZsk', 'Retrospektiivinäyttely Mikkelin Taidemuseossa 2016', NULL),
(36, 'Koivupuisto', 'szv2xwm4nME', 'teoksen ja sen ajatusten esittely', NULL),
(37, 'The Birch Park', 'nIWi51i6FxE', 'on the work and the thinking behind it', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year` (`year`);

--
-- Indexes for table `images_uusi`
--
ALTER TABLE `images_uusi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`mus_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `poems`
--
ALTER TABLE `poems`
  ADD PRIMARY KEY (`poem_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `pwdReset`
--
ALTER TABLE `pwdReset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indexes for table `technic`
--
ALTER TABLE `technic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `images_uusi`
--
ALTER TABLE `images_uusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123510;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `mus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `poems`
--
ALTER TABLE `poems`
  MODIFY `poem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pwdReset`
--
ALTER TABLE `pwdReset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `technic`
--
ALTER TABLE `technic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
