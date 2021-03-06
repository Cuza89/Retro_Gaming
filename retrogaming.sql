-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2015 at 05:14 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `retrogaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorije`
--

CREATE TABLE IF NOT EXISTS `kategorije` (
  `KATEGORIJA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAZIV_KATEGORIJE` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`KATEGORIJA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kategorije`
--

INSERT INTO `kategorije` (`KATEGORIJA_ID`, `NAZIV_KATEGORIJE`, `link`, `slika`) VALUES
(1, 'ZX Spectrum', 'zx.php', 'ZX Spectrum.png'),
(2, 'RETRO_GAMING_SERBIA', 'index.php', 'RGS.png'),
(3, 'commodore', 'commodore.php', 'Commodore 64.png'),
(4, 'terminator', 'terminator.php', 'Teminator 2.png'),
(5, 'sega', 'sega.php', 'Sega Mega Drive 2.png'),
(6, 'sony', 'sony.php', 'Sony Playstation.png');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE IF NOT EXISTS `komentari` (
  `KOMENTAR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SADRZAJ_KOMENTARA` text COLLATE utf8_unicode_ci NOT NULL,
  `VREME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_KORISNIKA` int(11) NOT NULL,
  `ID_KATEGORIJE` int(11) NOT NULL,
  PRIMARY KEY (`KOMENTAR_ID`),
  KEY `ID_KORISNIKA` (`ID_KORISNIKA`),
  KEY `ID_KATEGORIJE` (`ID_KATEGORIJE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`KOMENTAR_ID`, `SADRZAJ_KOMENTARA`, `VREME`, `ID_KORISNIKA`, `ID_KATEGORIJE`) VALUES
(3, '222222222222', '2015-06-06 12:07:16', 3, 1),
(4, '3333333333333333333', '2015-06-06 12:07:16', 4, 1),
(21, 'Play STATION', '2015-06-09 18:34:09', 1, 1),
(26, 'MILAN', '2015-06-09 19:18:57', 2, 6),
(27, 'micko', '2015-06-09 19:19:46', 2, 6),
(29, 'Commodore koment', '2015-06-09 20:20:33', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE IF NOT EXISTS `korisnici` (
  `KORISNIK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `IME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `PREZIME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` tinyint(3) NOT NULL,
  PRIMARY KEY (`KORISNIK_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`KORISNIK_ID`, `USERNAME`, `PASSWORD`, `IME`, `PREZIME`, `EMAIL`, `STATUS`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Marko', 'Djermanovic', 'cuza@hotmail.com', 2),
(2, 'micko', '250cf8b51c773f3f8dc8b4be867a9a02', 'Milan', 'Djermanovic', 'micko@gmail.com', 1),
(3, 'putin', '502e4a16930e414107ee22b6198c578f', 'Vladimir', 'Putin', 'vladaR@hotmail.com', 1),
(4, 'rasa', '698d51a19d8a121ce581499d7b701668', 'Milos', 'Stojanovic', 'rasa@gmail.com', 0),
(5, 'staljin', 'bed4b2a1da9c795bf3ecbfbecefa4eb1', 'Josif', 'Staljin', 'staljin@gmail.sssr', 0),
(8, 'MiLICA', 'b59c67bf196a4758191e42f76670ceba', 'Milica', 'Pavlovic', 'mica@hotmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vesti`
--

CREATE TABLE IF NOT EXISTS `vesti` (
  `VEST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NASLOV_VESTI` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `SADRZAJ_VESTI` text COLLATE utf8_unicode_ci NOT NULL,
  `ID_KATEGORIJE` int(11) NOT NULL,
  `slike` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`VEST_ID`),
  KEY `ID_KATEGORIJE` (`ID_KATEGORIJE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vesti`
--

INSERT INTO `vesti` (`VEST_ID`, `NASLOV_VESTI`, `SADRZAJ_VESTI`, `ID_KATEGORIJE`, `slike`) VALUES
(7, '<h1>ZX Spectrum</h1>', '\n<p>ZX Spectrum je ra??unar koji je napravila firma Sinclair Research Ltd. U Ujedinjenom Kraljevstvu 1982. godine. Prvi naziv je glasio ZX82, me??utim kasnije mu je ime promenjeno u ZX Spectrum, ??to se odnosilo na njegove sposobnosti prikazivanja boja na ekranu, za razliku od njegovog prethodnika, ZX81.\nZX Spectrum je prvi komercijalni ra??unar za ku??nu upotrebu na britanskom tr??i??tu, kao ??to je to bio Commodore 64 na ameri??kom tr??i??tu, i uop??te mu je predstavljao glavnog konkurenta na tr??i??tu ra??unara osamdesetih.</p>\n<p>\nZX Spectrum je ra??unar koji je napravila firma Sinclair Research Ltd. u Ujedinjenom Kraljevstvu 1982. godine. Prvi naziv je glasio ZX82, me??utim kasnije mu je ime promenjeno u ZX Spectrum, ??to se odnosilo na njegove sposobnosti prikazivanja boja na ekranu, za razliku od njegovog prethodnika, ZX81.\nZX Spectrum je prvi komercijalni ra??unar za ku??nu upotrebu na britanskom tr??i??tu, kao ??to je to bio Commodore 64 na ameri??kom tr??i??tu, i uop??te mu je predstavljao glavnog konkurenta na tr??i??tu ra??unara osamdesetih. \nSpektrumov hardver je dizajnirao Ri??ard Altvaser iz kompanije Sinclair research. Za spolja??nji izgled je bio zadu??en dizajner Rik Dikinson. Pokretao ga je procesor Zilog Z80 brzine 3.5 Mhz. Prvi model je pravljen u dve verzije, sa 16 ili 48 kb RAM memorije. Obe su imale po 16 kb ROM memorije.</p>\n<p>Spektrum je imao video izlaz preko koga se povezivao sa standardnim televizorom. Tekst se prikazivao u 32 vrste i 24 reda. Kori????en je Spektrumov skup znakova, a postojala je i mogu??nost za izbor do 8 boja teksta, kao i za odabir posvetljavanja teksta u dva nivoa. Rezolucija ekrana je bila 256x192 piksela. Spektrum je imao poseban na??in rada sa bojama. On je, da bi sa??uvao memoriju, boje ??uvao odvojeno od mre??e piksela - svaki deo ekrana veli??ine 8x8 piksela imao je jedinstveno odre??enu boje ispisa i pozadine (16 za jedno, 16 za drugo, ??to se sme??talo u jedan bajt), ??to se nazivalo ???atributom???. Me??utim, ovo nije predstavljalo najsre??nije re??enje, jer je dolazilo do jakog me??anja boja, naro??ito u video-igrama.</p>\n<img src="slike/zx1.jpg" width="284" height="177"  alt="x"/>\n<p>Spektrumov zvuk se reprodukovao preko ugra??enog zvu??nika, koji je imao jedan kanal sa deset oktava i tonova (iz bejzika). Zapravo, elektronika koja je pokretala zvu??nik je mogla da oda??ilje samo pravougaone zvu??ne signale, a zvu??nik je imao izvesnu inerciju, ??to je kasnije kori????eno i za dobijanje semplovanih zvukova. Ra??unar je imao i mogu??nost povezivanja sa kasetofonom i posebnim ure??ajem zvanim ???mikrodrajv??? radi ??uvanja podataka na obi??nim audio-kasetama\n</p>\n\n\n\n<table width="600" border="1" cellspacing="2px" cellpadding="3px">\n  <tr>\n    <th height="41" colspan="2" scope="col"><img src="slike/SpectrumPlus.jpg" width="590" height="368"  alt="x"/> </th>\n    </tr>\n  <tr>\n    <th colspan="2" scope="col">Technical specs </th>\n    </tr>\n  <tr>\n    <th width="182" scope="row">CPU</th>\n    <td width="286">Zilog Z80A, 3.54 MHz</td>\n  </tr>\n  <tr>\n    <th scope="row">ROM</th>\n    <td>16 KB</td>\n  </tr>\n  <tr>\n    <th scope="row">RAM</th>\n    <td>48 KB </td>\n  </tr>\n  <tr>\n    <th scope="row">Text mode</th>\n    <td>32 x 22 </td>\n  </tr>\n  <tr>\n    <th scope="row">Graphical mode</th>\n    <td>256 X 192</td>\n  </tr>\n  <tr>\n    <th scope="row">Colours</th>\n    <td>8</td>\n  </tr>\n  <tr>\n    <th scope="row">Sound</th>\n    <td>1 channel, 5 octaves</td>\n  </tr>\n  <tr>\n    <th scope="row">Storage</th>\n    <td>External tape </td>\n  </tr>\n</table>\n<br>\n<h2>Iz RGS ugla</h2>\n<p>Spektrum je bio ra??unar koji je nastao u Evropi, tako da je mogao lakse da se donese u Jugoslaviju. Spektrum je i bio prvi ku??ni ra??unar iz inostranstva koje je mogao da se priu??ti, pre toga je postojao ra??unar Galaxy, doma??e proizvodnje koji je mogao da se naru??i iz istoimenog ??asopisa. Jedna od boljih strana Spektruma jeste ta sto on za rayliku od Komodor ra??unara nije zahtevao specijalan ??ita?? audio kaseta, vec ste mogli da ga prika??ite na bilo koji kasetofon sa audio izlazom.</p>\n<p>\nKako je piraterija vladala i presnimavanje kaseta bilo u punom jeku nala??enje video igrica nije bio nikakav problem. Neki od doma??ih programera su tako??e su programirali i dizajnirali igre za ovaj ra??unar. Na njega je mogao da se priklju??i bilo koji dzojstik sa devetopinskim portom, ali mana je bila sto se za ra??unar morali da kupujete dotatni adapter na koji bi ste priklju??ili na ra??unar, a u koji bi se priklju??ili dzojstici.</p>\n\n<strong>Najpopularnije igre na ZX Spectrum-u</strong> <br>\n	\n    \n<ul>   \n	<li> Elite ??? Firebird Games </li>\n	<li>R-Type ??? Electric Dreams Software</li>\n	<li>Chuckie Egg - A''n''F Software</li>\n	<li>Manic Miner - Bug-Byte Software Ltd </li>\n	<li>Knight Lore - Ultimate Play The Game</li>\n	<li>Back to Skool - Microsphere </li>\n	<li>Football Manager - Addictive Games Ltd</li>\n	<li>Lunar Jetman - Ultimate Play The Game </li>\n	<li>Horace Goes Skiing ??? Beam Software</li>\n	<li>Boulder Dash ??? Front Runner</li>\n    \n</ul>', 1, 'ZX Spectrum.png'),
(8, '<h1>Commodore 64</h1>', '<p>Predstavljen od strane firme Komodor Biznis Ma??in (Commodore Business Machines) avgusta 1982. godine po ceni od 595 dolara, Komodor 64 je ponudio solidne zvu??ne i grafi??ke performanse u pore??enju sa onda??njim standardom. Tokom ??ivota Komodora 64 (izme??u 1982. i 1993.) ukupna prodaja je prema??ila 22 miliona primeraka. Prema Ginisovoj knjizi rekorda, Komodor 64 jo?? uvek ostaje naprodavaniji ra??unar svih vremena.<p>\n\n<img src="slike/commodore1.jpg" width="300" height="199"  alt="x"/>\n<p>\nZa razliku od ra??unara koji su bili distribuirani samo preko ovla????enih posrednika, Komodor se prodavao i u prodavnicama sa igra??kama. Ra??unar se mogao direktno priklju??iti na televizor, daju??i time mnogo dra??i obi??nih konzola za video-igre kao ??to je Atari 2600. malim hardverskim promenama pod nazivom Commodore 64C.</p>\n<img src="slike/commodore2.jpg" width="450" height="323"  alt="x"/>\n<br><br>\n<p>\nCommodore 1530 (C2N) Datasette (tele??ak podataka i kasete), bio je posve??en Commodore magnetna traka za skladi??tenje podataka ure??aja. Koriste??i kompaktnih kaseta kao mediju za skladi??tenje, ona pod uslovom jeftine skladi??tenje da Commodore je 8-bitni home / personalnih ra??unara, pre svega preko PET, VIC-20, i C64.Fizi??ki sli??an model Commodore 1531 je napravljen za Commodore 16 i plus / 4 serija ra??unara.</p>\n\n<strong>Najpopularnije igre na Commodore 64</strong>\n\n<ul>\n	<li>Elite</li>\n	<li>Project Firestart</li>\n	<li>Neuromancer</li>\n	<li> Last Ninja 3</li>\n	<li> M.U.L.E.</li>\n	<li> Creatures</li>\n	<li> Mayhem in Monsterland</li>\n	<li> BAT 2 ??? The Koshan Conspiracy</li>\n	<li> Pirates!</li>\n	<li> Test Drive 2</li>\n</ul>\n" placeholder="Mozete upisati vest">', 3, 'Commodore 64.png'),
(10, '<h1>Terminator 2</h1>', '\n<p>\nTerminator 2 (pravo ime konzola super Dizajn Ending-man BS-500 AS) je konzolu za video igre prodaje u Poljskoj, Srbiji, Hrvatskoj, Bugarskoj, Rumuniji, Bosni i Hercegovini, Albaniji, Indiji i Ma??arske (gde je bio poznat kao Sargakazettas Nintendo - Nintendo sa ??utim kertrid??a). Tako??e je prodato u ??paniji, a u Italiji, sa imenom "top consolle". Bilo je hardverska klon Nintendo Famicom.<p>\n<p>\nU ranim 1990, sistem Terminator 2 stekao masovnu popularnost u Isto??noj Evropi, verovatno zbog ??injenice da je do kasnih 1990-ih nije bilo zvani??ni distributer Nintendo proizvoda u toj oblasti. The Terminator 2 konzole su masovno prodali po ve??ini glavnih i manjih elektronskih prodavnica.\n\nOvo posebno Nintendo-klon bio izuzetno popularan u Poljskoj, Srbiji, Hrvatskoj, Bugarskoj, Rumuniji, Pakistana, Indije, Irana i Bosne, gde je stekao kultni status, a jo?? uvek ??iroko dostupna na aukcije sajtovima i buvljacima. Zbog ekonomskih ograni??enja, ??etvrta generacija konzola kao ??to su Mega Drive ili SNES nisu bili popularni u ovim zemljama.Prethodna generacija ostala veoma popularna, posebno Terminator 2 koja je bila najuspe??nija NSZ klon. Ona je ostavio trag u pop kulture i 1990-tih mladih, postavljaju??i se kao Antonomazija za 8-bitnom video igara, do ta??ke u kojoj vi??e popularniji od originala.</p><p>\nTerminator 2, kao i ve??ina poznatih Famicom klonova, bio kompatibilan sa 60-pin Famicom kertrid??a, a delimi??no kompatibilan sa nekim NSZ igara, koje se mogu igrali pomo??u specijalnog konvertor. Original Nintendo igre nisu bili popularni me??utim, zbog piraterije i besni nedostatak zvani??no licenciranih proizvoda na tr??i??tu. Ve??ina igara prodatih sa i za sistem bili jeftini piratske kopije, proizvedeni uglavnom u Rusiji i Kini. Igre za Terminator 2 su ??iroko dostupan u Isto??noj Evropi do danas, uglavnom o uli??nih prodavaca i u malim prodavnicama igra??aka.</p> <br>\n\n\n\n<table width="200" border="1" cellspacing="2px" cellpadding="3px">\n  <tr>\n    <th colspan="3" scope="col">Hardware specifications</th>\n    </tr>\n  <tr>\n    <th width="176" scope="row">Processor</th>\n    <td colspan="2">8-bit MOS 6502 1.79 MHz</td>\n    </tr>\n  <tr>\n    <th rowspan="4" scope="row">Video</th>\n    <td width="149">Clock</td>\n    <td width="133">5.37 MHz</td>\n  </tr>\n  <tr>\n    <td>Resolution</td>\n    <td>256 x 240</td>\n  </tr>\n  <tr>\n    <td>Color Palette</td>\n    <td>25 on screen</td>\n  </tr>\n  <tr>\n    <td>Standard</td>\n    <td>NTSC (&quot;forced&quot; to PAL standard, 50 Hz refresh rate)<br>\n      Sound</td>\n  </tr>\n  <tr>\n    <th scope="row">Sound</th>\n    <td>5-channel mono</td>\n    <td>1 channel noise<br>\n      1 PCM<br>\n      3 channels for sounds</td>\n  </tr>\n</table>\n<table class="strana" border="1" cellspacing="2px" cellpadding="3px">\n  <tr>\n    <td height="57" colspan="2"> <img src="slike/consolepirate_terminator8.jpg" width="270" height="251"  alt="x"/> </td>\n    </tr>\n  <tr>\n    <td colspan="2">Super Design Ending-Man BS-500 AS</td>\n    </tr>\n  <tr>\n    <td width="123">Manufacturer</td>\n    <td width="125">?</td>\n  </tr>\n  <tr>\n    <td>Release date</td>\n    <td>1992 (EU)</td>\n  </tr>\n  <tr>\n    <td>Media type</td>\n    <td>ROM cartridge</td>\n  </tr>\n  <tr>\n    <td>Compatibility</td>\n    <td>Famicom cartridges and NES (with adapter)</td>\n  </tr>\n  <tr>\n    <td>Input</td>\n    <td>2 controller ports</td>\n  </tr>\n</table>\n<br><br>\n\n<img src="slike/terminator1.jpg" width="230" height="119"  alt="c"/>\n', 4, 'Teminator 2.png'),
(11, '<h1>Sega Mega</h1>', '\n<p>\nSega Genesis, poznat kao Mega Drive (Japanese: ??? ??? ??? ??? ??? ??? Hepbern:? Mega Doraibu) u ve??ini regiona van Severne Amerike, je 16-bitni konzola dom video igra koja je razvijena i prodala Sega preduze??a, Ltd Postanak je Sega je Tre??i konzola i naslednik Master Sistem. Sega prvi put objavljen konzolu kao Mega Drive u Japanu 1988. godine, nakon ??ega sledi Sjeverne Amerike debi pod Genesis Moniker 1989. U 1990., konzola je pu??ten kao Mega Drive Virgin Mastertronicova u Evropi, po Ozisoft u Australiji, i bi TEC igra??ka u Brazilu. U Ju??noj Koreji je distribuiran biSamsung i bio prvi poznati kao super Gam * Boi i kasnije kao super Aladdin Boi.</p>\n<p>Dizajniran sa R & D tim pod nadzorom Hideki Sato i Masami Ishikava, Genesis hardver je prilago??en iz Sega je sistem 16. arkada odbora, usmerena na Motorola 68000 procesor kao glavnog procesora i Zilog Z80 kao sekundarni procesor.Sistem podr??ava biblioteku od preko 900 gamescreated i od Sege i velikim nizom nezavisnih izdava??a i dati na ROM-based kaseta. Tako??e mo??ete igrati Master Sistem igre kada se instalira odvojeno prodala Snaga Base Converter.Geneza tako??e koristi od brojnih periferija i nekoliko mre??nih servisa, kao i vi??estrukim prvi strana i tre??ih strana varijacijama konzole koja se fokusirala na pro??iruje svoju funkcionalnost.</p>\n<img src="slike/sega1.jpg" width="429" height="303"  alt="x"/>\n<p>U Japanu, Mega Drive nisu pro??le dobro protiv svoje dve glavne konkurente, Nintendo Super Famicom i NECov PC Engine. Me??utim, da je ostvario zna??ajan uspeh u Severnoj Americi i Evropi, hvatanje ve??inu 16-bit tr??i??ni udeo u nekoliko teritorija, uklju??uju??i SAD i Velikoj Britaniji. Doprinos za njen uspeh su njegova biblioteka arkadnih gameports, popularnost Postanje-ekskluzivni Sonic The Hedgehog serije, nekoliko fran??iza popularni sportovi igra, i agresivnog marketinga mladih koji pozicionirana sistem kao kul konzole za adolescente. Iako Sega dominirali 16-bitni tr??i??te u Severnoj Americi i Evropi, o osloba??anju Super Nintendo Entertainment Sistem dve godine nakon Postanje rezultirao ??estokoj borbi za tr??i??ni udeo u onim teritorijama koje je ??esto nazivaju kao "konzole rata" od novinari i istori??ari. Kako ovaj konkurs skrenuo ve??u pa??nju na video igara industrije u javnosti, Geneza i nekoliko njegovih najvi??e profila igara privukla zna??ajnu pravnu nadzor na pitanjima koja se ti??u obrnuti in??enjering i video igre nasilje. kontroverze koja okru??uje nasilne naslove kao ??to su Night Trap Mortal i Kombatled Sega da stvori Videogame Rating Savet, prethodnica theEntertainment Softvare Rating Board.\n</p>\n<p>\nDo kraja 1994. godine, kada nova generacija 32-bitnim konzolama pru??ene sistem tehnolo??ki zastareo, Postanje je prodala 29 miliona jedinica ??irom sveta, a do kraja svog ??ivota Sega je prodao oko 40 miliona jedinica.Konzola i njeni igre i dalje biti popularan me??u navija??ima, kolekcionara, Video Game Music fanove, i emulacije entuzijasta. Od 2014. godine, licencirani ponovljenih izdanja tre??e strane na konzoli se jo?? uvek proizvodi AtGames u Severnoj Americi, Evropi, Bla??e i Tec Toi godine u Brazilu. Tako??e nekoliko indie programeri igra nastavi da proizvodi igre za njega. Mnoge igre su tako??e ponovo pu??ten u kompilacije za novijim konzole i ponudio za preuzimanje na raznim Internet servise kao ??to su Vii Virtual Console, Ksbok Live Arcade, PlaiStation Netvork i Steam.Genesis je nasledio Sega Saturn.\n</p>\n\n<h2>Iz RGS ugla</h2>\n<p>Sticajem nesre??nih okolnosti a pre svega sankcija i ??injenice da je na ovim prostorima igranje na konzolama dugo bilo gotovo nepoznat pojam, Sega Mega Drive 2 je kod nas stigao tek sredinom devedesetih, dok je bio na vrhuncu svoje popularnosti. Zahvaljuju??i agresivnoj reklami ali i svojim neospornim kvalitetima, konzola je ubrzo osvojila igra??e i u??unjala se u mnoge domove. Igraonice u kojima ste mogli da odigrate mnogobrojne naslove (takozvane Segateke) po??ele su da ni??u ??irom zemlje, a samim tim sistem je dobio prostor u doma??im ??asopisima posve??enim igrama, ??ak i u onima koji su se do tada isklju??ivo bavili kompjuterima.</p>\n<p>\nDodatnu popularnost SMD2 je dobio kroz kviz ??Sega klinci?? koji se dosta dugo prikazivao na Pinku, tada ubedljivo najgledanijoj doma??oj televiziji. Iako su mnoge igre stekle kultni status, titulu neprikosnovenog kralja sigurno je dr??ao neverovatno popularni Mortal Kombat serijal.</p>\n\n\n<p>\nVelika prednost Sege bio je d??ojped i to pre svega verzija sa 6 tastera koja je dolazila uz drugu verziju konzole. Za razliku od SNES-a, on je bio savr??eno pogodan za igre svih ??anrova i do dan danas va??i za jedan od najbolje dizajniranih igra??kih kontrolera.\nNa na??em prostoru su se tako??e pojavile i bootleg kasetice, ta??nije ilegalne kopije originalnih kasetica, koje su bile dosta jeftinije, ali takodje nisu bile tako idealne. Pojedine kasetice sui male vise usnimljenih igrica, ali pojedine nisu bile savrsene. Imale su lose slike na kaseticama, a neke i slike drugih igrica. Tako da moyete kupiti jednu igru, a u stvari dobijete sasvim drugu???\n</p>\n<br>\n\n<table class="strana" border="1" cellspacing="2px" cellpadding="3px">\n  \n  <tr>\n    <th height="52" colspan="2" scope="col"><img src="slike/sega_side.jpg" width="270" height="202"  alt="x"/></th>\n    </tr>\n  <tr>\n    <th colspan="2" scope="col">Technical Specs</th>\n    </tr>\n  <tr>\n    <th width="115" scope="row">CPU</th>\n    <td width="133">16-bit Motorolla 68000 (7.68MHz)</td>\n  </tr>\n  <tr>\n    <th scope="row">RAM</th>\n    <td>64KB</td>\n  </tr>\n  <tr>\n    <th scope="row">Graphics</th>\n    <td>Dedicated graphics processor</td>\n  </tr>\n  <tr>\n    <th scope="row">Colors</th>\n    <td>512 (64 on screen)</td>\n  </tr>\n  <tr>\n    <th scope="row">Sprites</th>\n    <td>80</td>\n  </tr>\n  <tr>\n    <th scope="row">Resolution</th>\n    <td>320x224 pixels</td>\n  </tr>\n  <tr>\n    <th scope="row">Sound</th>\n    <td>6 channel stereo.  TI 76489 PSG, Yamaha YM 2612 FM chips </td>\n  </tr>\n</table>\n\n<p><strong>29. oktobra 1988.</strong> Megadrive je predstavljen u Japanu, zajedno sa 4 igre ??? Super Thunderblade, Alex Kidd and the Enchanted Castle, Altered Beast i Space Harrier 2. Taktika se ovaj put promenila, tako da Sega vi??e nije ??ekala potez svog velikog rivala Nintenda ili bilo kog drugog konkurenta, ve?? je odlu??ila da prva pridobije igra??e na svoju stranu. Me??utim, po??etak nije bio slavan. Iako je konzola bila tehni??ki daleko superiornija i od NES-a i od PC Engine-a, prodaja u mati??noj zemlji je bila veoma slaba.</p>\n\n<p><strong>14. avgusta 1989.</strong> sistem je kona??no predstavljen i u Severnoj Americi gde je u po??etku prodavan za 190 dolara, i to sa ogromnim uspehom. Ameri??ki igra??i znali su mnogo vi??e da cene o??iglednu tehni??ku superiornost sistema i sjajnu ponudu akcionih i sportskih igara.</p>\n<img src="slike/sega2.jpg" width="300" height="199"  alt="x"/>\n<p>\nNa kraju, <strong>30. novembra 1990.</strong> konzola je stigla u Evropu i to kao nova, pobolj??ana verzija originalnog sistema, pod imenom Sega Mega Drive 2. S obzirom da je ovo i najpoznatiji i najpopularniji naziv konzole kod nas ali i ??ire, njega ??emo koristiti u daljem tekstu, kao ??to to ??inimo i na ??itavom sajtu.\nPrve godine za Segu su bile veoma te??ke, jer je 8-bitni NES bio na vrhuncu slave, a Sega je poku??avala da povrati poverenje igra??a u sopstvene proizvode. Ovoga puta su sklopljeni ugovori sa velikim brojem najpoznatijih softverskih kompanija kojim su se one obavezale da izra??uju igre za SMD2, kako bi se izbegao problem sa ponudom naslova koji je uni??tio Master System.</p>\n<p>\nSega Mega Drive 2 je najpoznatija, tj. najprodavanija verzija konzole za koju i nas vezuju najlep??a se??anja\nI polako, stvari su krenule na bolje. Agresivna i veoma kreativna marketin??ka kampanja i pre svega kvalitetan izbor igara, definitivno su napravili mesta za Sega Mega Drive 2 u Severnoj i Ju??noj Americi ali i u Evropi, gde ??e konzola vladati bez prave konkurencije vi??e od pola decenije. U mati??nom Japanu, stvari se ipak nisu micale sa mrtve ta??ke. Sega nije mnogo marila za RPG, kao ??to je to u??inio Nintendo, ali mlak prijem na ovom tr??i??tu nimalo nije mogao da poljulja svetsku popularnost koju je konzola postigla. </p>\n\n\n<strong>Najpopularnije igre na Sega Megadrajvu:</strong>\n<ul>\n	<li>Sonic 2</li>\n 	<li>Phantasy Star 4</li>\n 	<li>Streets Of Rage 2</li>\n	 <li>Castlevania: Bloodlines</li>\n 	<li>Comix Zone</li>\n 	<li>Quack Shot</li>\n	 <li>Phantasy Star II</li>\n 	<li>Shining Force II</li>\n 	<li>Gunstar Heroes</li>\n 	<li>Vectorman</li>\n</ul>', 5, 'Sega Mega Drive 2.png'),
(12, '<h1>Sony Playstation</h1>', '\n<p>Plaistation (zvani??no skra??eno PS i nezvani??no, ali poznatiji kao PS1) razvijen i nudi Soni Computer Entertainment.Konzola je pu??ten u Japanu 3. decembra 1994., , a objavljen je u Severnoj Americi i Evropi u septembru 1995 Plaistation bila prva na PlaiStation serije konzola i handheld ure??aje igre. Kao deo pete generacije od igranja, prvenstveno takmi??ila sa Nintendo 64 i Sega Saturn. Godine 2000, "tanak" verzija redizajniranu zove PSone pu??ten, zamenjuju??i originalnu sivu konzolu i imenovan na odgovaraju??i na??in da se izbegne zabuna sa njegovog pravnog naslednika, PlaiStation 2.</p><p>\nPlaistation bila prva "Computer Entertainment platforma" za isporuku 100 miliona jedinica, koja je postigla 9 godina i 6 meseci nakon prvobitnog lansiranja Reakcije na konzoli na lansiranje bila povoljna.; kriti??ari pohvalili konzolu za kvalitet svojih 3-dimensional grafikom. ThenMicrosoft predsednik, Bil Gejts, po??eljna konzolu na Soni na konkurenciju iz SEGA je Saturn, rekav??i "na??a igra dizajner voli Soni ma??inu". </p><p>\nNaslednik PlaiStation je PlaiStation 2 koji je kompatibilan i sa svojim prethodnikom iz koje mo??e da igra skoro svaku PlaiStation igru. U poslednjih PSOne jedinica je prodato u zimu 2004. pre nego ??to je kona??no prekida, za ukupno 102 miliona isporu??enih od svog lansiranja 10 godina ranije. Igre za PlaiStation nastavili da prodaju sve dok Samsung prestala proizvodnja PlaiStation igara 31. marta 2006. godine - preko 11 godina nakon ??to je pu??ten, a manje od godinu dana pre debija na PlaiStation 3.</p>\n<p>\nBa?? pred premijeru Playstationa 2, Sony je predstavio i novu, redizajniranu varijantu prvog Playstationa koju je krstio kao PlayStation One, ili skra??eno PSOne.\nU odnosu na standardni sivi PSX koji je zamenio, PSOne je vizuelno daleko atraktivniji i mnogo manjih dimenzija koje se mogu porediti sa kutijom za DVD naslove dvostruke dubine, ??to ga je u??inilo daleko pogodnijim za preno??enje. Zbog nepostojanja hla??enja PSOne se mnogo vi??e zagreva od stare varijante konzole, ali ima i daleko ti??i, gotovo ne??ujan mehanizam za ??itanje diskova. Uz PSOne Sony je opciono ponudio i i LCD displej od 4 in??a, ali to ne zna??i da PSOne mo??e da radi na baterije, ve?? mu je dalje potrebno klasi??no strujno napajanje. ??to se ti??e softverskog dela on je ostao gotovo isti, osim ??to je BIOS redizajniran. Naravno, kompatibilnost sa starim igrama je 100%.\n</p>\n\n<h2>Iz RGS ugla</h2>\n<p>\nNa??alost, zbog mnogo razloga koje smo ve?? ko zna koliko puta navodili na ovom sajtu, igranje na konzolama kod nas postaje popularno tek sredinom devedesetih, gotovo isklju??ivo zaslugom Sega Mega Drive 2 sistema. Od 1996. i Playstation dolazi u na??u zemlju i automatski sti??e ogromnu popularnost zbog svojih fenomenalnih tehni??kih karakteristika i kvaliteta igara. Problem nije predstavljala ni prili??no visoka cena sistema ??? naime, zahvaljuju??i mod ??ipovima konzole su bile u stanju da ??itaju igre iz svih regiona kao i kopirane diskove, ??to je za na??e siroma??no tr??i??te bilo i najbitnije.</p>\n\n<table class="strana" border="1" cellspacing="2px" cellpadding="3px">\n  <tr>\n    <th height="28" colspan="2" scope="col"><img src="slike/sony_side.jpg" width="270" height="101"  alt="x"/> </th>\n    </tr>\n  <tr>\n    <th colspan="2" scope="row">Technical specifications</th>\n    </tr>\n  <tr>\n    <th scope="row">CPU</th>\n    <td>CPU: 32-bit RISC (33.8688 MHz)</td>\n  </tr>\n  <tr>\n    <th scope="row">RAM</th>\n    <td>2 MB main, 1 MB video</td>\n  </tr>\n  <tr>\n    <th scope="row">Graphics</th>\n    <td>3D Geometry Engine, with 2D rotation, scaling, transparency and 		fading, and 3D texture mapping and shading</td>\n  </tr>\n  <tr>\n    <th scope="row">Colors</th>\n    <td>16.7 million</td>\n  </tr>\n  <tr>\n    <th scope="row">Sprites</th>\n    <td>4,000</td>\n  </tr>\n  <tr>\n    <th scope="row">Polygons</th>\n    <td>180,000 per second (textured), 360,000 per second (flat-shaded)</td>\n  </tr>\n  <tr>\n    <th scope="row">Resolution</th>\n    <td> 256??224 to 640??480 pixels</td>\n  </tr>\n  <tr>\n    <th scope="row">Sound</th>\n    <td>16-bit, 24 channel PCM</td>\n  </tr>\n</table>\n<br>\n\n<img src="slike/soni1.jpg" width="300" height="255"  alt="v"/>\n\n\n<p> U naredne 3-4 godine PSX je bio mo??da i najpopularnija igra??ka platforma pa je gotovo nemogu??e nabrojati sve one igre koje su ostavile velike trag. U tu elitnu grupu svakako spada Crash Bandicoot serijal, Gran Turismo 1-2, Tekken 1-3, Resident Evil serija, Final Fantasy VII-IX, Medal Of Honor i jo?? mnoge, mnoge druge igre. Posebno treba pomenuti gotovo neverovatnu popularnost Konamijevih fudbalskih simulacija koje su se sa jednakom fanati??no????u igrale vi??e od pola decenije ??? prakti??no je bilo nemogu??e da u??ete u igraonicu i na bar nekoliko ekrana ne vidite neku od mnogobrojnih igara iz ovog serijala.</p>\n<br>\n<strong>Najpopularnije igre za PlayStation</strong>\n<ul>\n<li>Final Fantasy VII</li>\n<li>Final Fantasy VIII</li>\n<li>Final Fantasy IX</li>\n <li>Chrono Cross</li>\n<li> Metal Gear Solid</li>\n<li>Tomb Raider</li>\n <li>Resident Evil Director???s Cut</li>\n<li>Tekken 3</li>\n<li>Gran Turismo 2</li>\n<li>Castlevania Symphony Of The Night</li>\n</ul>\n', 6, 'Sony Playstation.png');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentari`
--
ALTER TABLE `komentari`
  ADD CONSTRAINT `fk_komentari_kategorije1` FOREIGN KEY (`ID_KATEGORIJE`) REFERENCES `kategorije` (`KATEGORIJA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_komentari_korisnici1` FOREIGN KEY (`ID_KORISNIKA`) REFERENCES `korisnici` (`KORISNIK_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vesti`
--
ALTER TABLE `vesti`
  ADD CONSTRAINT `vesti_ibfk_1` FOREIGN KEY (`ID_KATEGORIJE`) REFERENCES `kategorije` (`KATEGORIJA_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
