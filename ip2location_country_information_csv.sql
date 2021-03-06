-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 01 fév. 2022 à 15:55
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CSV_DB 6`
--

-- --------------------------------------------------------

--
-- Structure de la table `ip2location_country_information_csv`
--

DROP TABLE IF EXISTS `countries` ;

CREATE TABLE `countries` (
  `country_id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL ,
  `name` varchar(52) NOT NULL,
  `capital` varchar(30) DEFAULT NULL,
  `hab_name` varchar(41) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `nb_hab` varchar(10) DEFAULT NULL,
  `currency` varchar(39) DEFAULT NULL,
  `language` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `behavior` ;

CREATE TABLE `behavior` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL ,
  `name` varchar(52) NOT NULL,
  `description` varchar(30) NOT NULL,
  `type` ENUM('conversation','greeting','shopping','dining', 'business', 'tradition', 'public', 'visiting')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `trivia` ;

CREATE TABLE `trivia` ( 
  `id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL ,
  `question` varchar(100) NOT NULL ,
  `answer1` varchar(50) NOT NULL,
  `answer2` varchar(50) NOT NULL,
  `answer3` varchar(50) NOT NULL,
  `answer4` varchar(50) NOT NULL,
  `answerNumber` int(2) NOT NULL
);


DROP TABLE IF EXISTS statements;

CREATE TABLE statements (
  'id' int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  'english' varchar(50),
  'dutch' varchar(50),
  'french' varchar(50),
  'chinese' varchar(50),
  'german' varchar(50),
) ;

INSERT INTO statements(english, dutch, german, french, chinese) VALUES
("Dipping your croissant into your coffee.", "Je croissant in je koffie dippen.", "Ein Croissant in einen Kaffee tunken." ,"Tremper votre croissant dans votre café.", " 用咖啡蘸可颂" ),
("Smoking a cigarette on a terrasse.", "Een sigaret op het terras roken. ","Eine Zigarette auf der Terasse eines Cafes rauchen.","Fumer une cigarette en terrasse.","在阳台上喝咖啡"),
("Talking about salary during small-talk.","Over je salaris praten tijdens small-talk.","Während dem Small-talk über das Gehalt sprechen.","Parler de salaire pendant une conversation.","在闲聊时谈论工资"),
("Eating cheese as a dessert.", "Kaas eten als dessert." ,"Käse zum Nachtisch essen.", "Manger du fromage comme dessert", "把起司作为甜点"),
("Showing affection in public.", "genegenheid tonen in het openbaar", "Körperliche Zuneigung im öffentlichen Raum zeigen.", "Montrer de l’affection en public." ,"在公共场合表达爱意"),
("Walking through a red stoplight." ,"Door een rood stoplicht lopen." ,"Über eine rote Fußgägnerampel laufen.", "Traverser au feu rouge.", "闯红灯");



DROP TABLE IF EXISTS "vote4EN";
DROP TABLE IF EXISTS "vote4CH";
DROP TABLE IF EXISTS "vote4FR";
DROP TABLE IF EXISTS "vote4DU";
DROP TABLE IF EXISTS "vote4GE";

CREATE TABLE "vote4EN" (
  "id" int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  "question" varchar(50),
  "answer1" varchar(50),
  "answer2" varchar(50),
  "answer3" varchar(50),
  "answer4" varchar(50),
  "answerNb" int(2),
);

INSERT INTO vote4EN(question, answer1,answer2,answer3,answer4,answerNb) VALUES
("What is this picture showing ?", "Provence", "Britanny", "Picardy", "Borgundy", 1);

CREATE TABLE "vote4FR" (
  "id" int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  "question" varchar(50),
  "answer1" varchar(50),
  "answer2" varchar(50),
  "answer3" varchar(50),
  "answer4" varchar(50),
  "answerNb" int(2),
);

INSERT INTO voteFR(question, answer1,answer2,answer3,answer4,answerNb) VALUES
("Que montre cette photo ?", "Provence", "Britanny", "Picardy", "Borgundy", 1);

CREATE TABLE "vote4CH" (
  "id" int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  "question" varchar(50),
  "answer1" varchar(50),
  "answer2" varchar(50),
  "answer3" varchar(50),
  "answer4" varchar(50),
  "answerNb" int(2),
);
CREATE TABLE "vote4DU" (
  "id" int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  "question" varchar(50),
  "answer1" varchar(50),
  "answer2" varchar(50),
  "answer3" varchar(50),
  "answer4" varchar(50),
  "answerNb" int(2),
);


CREATE TABLE "vote4GE" (
  "id" int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  "question" varchar(50),
  "answer1" varchar(50),
  "answer2" varchar(50),
  "answer3" varchar(50),
  "answer4" varchar(50),
  "answerNb" int(2),
);





DROP TABLE IF EXISTS "vote4";

CREATE TABLE "vote4" (
  "id" int(11)AUTO_INCREMENT PRIMARY KEY NOT NULL,
  "idEN" int(11) FOREIGN KEY REFERENCES vote4EN(id),
  "idFR" int(11) FOREIGN KEY REFERENCES vote4FR(id),
  "idCH" int(11) FOREIGN KEY REFERENCES vote4CH(id),
  "idDU" int(11) FOREIGN KEY REFERENCES vote4DU(id),
);

INSERT INTO trivia(question, answer1, answer2, answer3, answer4, answerNumber) VALUES
("What is the Earth's largest continent?", "Africa", "Europe", "Antartica", "Asia", 4 ),
("What river runs through Baghdad ?", "Tigris", "Euphrates", "Karun", "Jordan", 1),
("What percentage of the River Nile is located in Egypt ?", "83%", "22%", "100%", "9%", 2),
("In what country can you visit Machu Picchu?", "Chile", "Peru", "Bolivia", "Columbia", 2 ),
("What African country served as the setting for Tatooine in Star Wars?", "Tunisia", "Ethiopia", "Gabon", "Ghana", 1),
("Which African nation has the most pyramids?", "Egypt", "Algeria", "Sudan", "Lybia", 3),
("How many countries are there in Africa?", "39", "54", "42", "63", 2),
("What is the capital of Pakistan?", "Lahore", "Bahawalpur", "Islamabad", "Karachi",3);



INSERT INTO behavior(name, description, type) VALUES
('Dip you croissant in your coffee', 'In France, it\'s frowned upon to dip you croissant in your coffee', 'dining'),
('Tipping', 'In Japan and South Korea tipping is seen as an insult. Workers feel they are paid to do their job and take pride in doing it well; they don\'t need a, added incentive.', 'dining'),
('Sitting in the back of a cab', 'In Australia, New Zeland, parts of Ireland, Scotland, and the Netherlands it\'s considered rude not to ride shotgun; it\'s a matter od egalitarianism.', 'public'),
('Throwing a thumbs-up', 'In the Middle East, Latin America, Western Africa, Russia and Greece, a thumbs-up has the same meaning as holding up a middle finger for Americans', 'greeting'),
('Laughing with you mouth open', 'In Japan, laughter that exposes your perly whites is considered horse-like and impolite', 'conversation'),
('Calling the US "America"', 'In South America, saying you\'re from America, rather than th U.S. is politically incorrect, as it implies only the US should be considered America, and that South America is unworthy of the title.', 'greeting'),
('Being fashionably late', 'Beig a few minutes lates is unacceptable in many countries (like Germany) where leaving people waiting is taken as you thinking your time is more valuable than everyone else\'s', 'public');

--
-- Déchargement des données de la table `ip2location_country_information_csv`
--

INSERT INTO `countries` ( `name`, `capital`, `hab_name`, `area`, `nb_hab`, `currency`, `language`) VALUES
('United Arab Emirates', 'Abu Dhabi', 'Emirians', '83600', '9541615', 'United Arab Emirates Dirham', 'Arabic'),
('Afghanistan', 'Kabul', 'Afghans', '652230', '36373176', 'Afghan Afghani', 'Persian'),
('Albania', 'Tirana', 'Albanians', '28748', '2934363', 'Albanian Lek', 'Albanian'),
('Armenia', 'Yerevan', 'Armenians', '29743', '2934152', 'Armenian Dram', 'Armenian'),
('Angola', 'Luanda', 'Angolans', '1246700', '30774205', 'Angolan Kwanza', 'Portuguese'),
('Argentina', 'Buenos Aires', 'Argentines', '2780400', '44688864', 'Argentine Peso', 'Spanish'),
('Austria', 'Vienna', 'Austrians', '83871', '8751820', 'Euro', 'German'),
('Australia', 'Canberra', 'Australians', '7741220', '24772247', 'Australian Dollar', 'English'),
('Aruba', 'Oranjestad', 'Arubans', '180', '105670', 'Aruban Florin', 'Dutch'),
('Azerbaijan', 'Baku', 'Azerbaijanis', '86600', '9923914', 'Azerbaijani Manat', 'Azerbaijani'),
('Bosnia and Herzegovina', 'Sarajevo', 'Bosnians or Herzegovinians', '51197', '3503554', 'Bosnia And Herzegovina Convertible Mark', 'Croatian'),
('Barbados', 'Bridgetown', 'Barbadians', '430', '286388', 'United States Dollar', 'English'),
('Bangladesh', 'Dhaka', 'Bangladeshis', '143998', '166368149', 'Bangladeshi Taka', 'Bangla'),
('Belgium', 'Brussels', 'Belgians', '30528', '11498519', 'Euro', 'Dutch'),
('Burkina Faso', 'Ouagadougou', 'Burkinabe', '274200', '19751651', 'Cfa Franc Bceao', 'French'),
('Bulgaria', 'Sofia', 'Bulgarians', '110879', '7036848', 'Bulgarian Lev', 'Bulgarian'),
('Bahrain', 'Manama', 'Bahrainis', '760', '1566993', 'Bahraini Dinar', 'Arabic'),
('Burundi', 'Bujumbura', 'Burundians', '27830', '11216450', 'Burundian Franc', 'French'),
('Benin', 'Porto-Novo', 'Beninese', '112622', '11485674', 'Cfa Franc Bceao', 'French'),
('Brunei', 'Bandar Seri Begawan', 'Bruneians', '5765', '434076', 'Brunei Dollar', 'Malay'),
('Bolivia', 'Sucre', 'Bolivians', '1098581', '11215674', 'Boliviano', 'Spanish'),
('Brazil', 'Brasilia', 'Brazilians', '8514877', '210867954', 'Brazilian Real', 'Portuguese'),
('Bahamas', 'Nassau', 'Bahamians', '13880', '399285', 'Bahamian Dollar', 'English'),
('Bhutan', 'Thimphu', 'Bhutanese', '38394', '817054', 'Bhutanese Ngultrum', 'Dzongkha'),
('Botswana', 'Gaborone', 'Motswana', '581730', '2333201', 'Botswana Pula', 'English'),
('Belarus', 'Minsk', 'Belarusians', '207600', '9452113', 'Belarusian Ruble', 'Belarusian'),
('Belize', 'Belmopan', 'Belizeans', '22966', '382444', 'Belize Dollar', 'English'),
('Canada', 'Ottawa', 'Canadians', '9984670', '36953765', 'Canadian Dollar', 'French'),
('Democratic Republic of the Congo', 'Kinshasa', 'Congolese', '2344858', '84004989', 'Congolese Franc', ''),
('Central African Republic', 'Bangui', 'Central Africans', '622984', '4737423', 'Cfa Franc Beac', 'French'),
('Republic of Congo', 'Brazzaville', 'Congolese', '342000', '5399895', 'Cfa Franc Beac', 'Niger-congo'),
('Switzerland', 'Bern', 'Swiss', '41277', '8544034', 'Swiss Franc', 'German'),
('Ivory Coast', 'Yamoussoukro', 'Ivorians', '322463', '24905843', 'Cfa Franc Bceao', 'English'),
('Chile', 'Santiago', 'Chileans', '756102', '18197209', 'Chilean Peso', 'Spanish'),
('Cameroon', 'Yaounde', 'Cameroonians', '475440', '24678234', 'Cfa Franc Beac', 'French'),
('China', 'Beijing', 'Chinese', '9596961', '1415045928', 'Chinese Yuan Renminbi', 'Chinese'),
('Colombia', 'Bogota', 'Colombians', '1138910', '49464683', 'Colombian Peso', 'Spanish'),
('Costa Rica', 'San Jose', 'Costa Ricans', '51100', '4953199', 'Costa Rican Colon', 'Spanish'),
('Cuba', 'Havana', 'Cubans', '110860', '11489082', 'Cuban Convertible Peso', 'Spanish'),
('Cape Verde', 'Praia', 'Cabo Verdeans', '4033', '553335', 'Cape Verde Escudo', 'Portuguese'),
('Curaçao', 'Willemstad', 'Curacaoans', '444', '161577', 'Nl Antillian Guilder', 'Dutch'),
('Cyprus', 'Nicosia', 'Cypriots', '9251', '1189085', 'Euro', 'Greek'),
('Czechia', 'Prague', 'Czechs', '78867', '10625250', 'Czech Koruna', 'Czech'),
('Germany', 'Berlin', 'Germans', '357022', '82293457', 'Euro', 'German'),
('Djibouti', 'Djibouti', 'Djiboutians', '23200', '971408', 'Djiboutian Franc', 'French'),
('Denmark', 'Copenhagen', 'Danes', '43094', '5754356', 'Danish Krone', 'Danish'),
('Dominican Republic', 'Santo Domingo', 'Dominicans', '48670', '10882996', 'Dominican Peso', 'Spanish'),
('Algeria', 'Algiers', 'Algerians', '2381741', '42008054', 'Algerian Dinar', 'Arabic'),
('Ecuador', 'Quito', 'Ecuadorians', '283561', '16863425', 'United States Dollar', 'Spanish'),
('Estonia', 'Tallinn', 'Estonians', '45228', '1306788', 'Euro', 'Estoniana'),
('Egypt', 'Cairo', 'Egyptians', '1001450', '99375741', 'Egyptian Pound', 'Arabic'),
('Western Sahara', 'Laayoune / El Aaiun', 'Sahrawis', '266000', '567421', 'Moroccan Dirham', 'Spanish'),
('Eritrea', 'Asmara', 'Eritreans', '117600', '5187948', 'Eritrean Nakfa', 'Tigrinya'),
('Spain', 'Madrid', 'Spaniards', '505370', '46397452', 'Euro', 'Spanish'),
('Ethiopia', 'Addis Ababa', 'Ethiopians', '1104300', '107534882', 'Ethiopian Birr', 'Amharic'),
('Finland', 'Helsinki', 'Finns', '338145', '5542517', 'Euro', 'Finnish'),
('Fiji', 'Suva', 'Fijians', '18274', '912241', 'Fijian Dollar', 'Hindi'),
('Micronesia', 'Palikir', 'Micronesians', '702', '106227', 'United States Dollar', 'English'),
('France', 'Paris', 'French', '643801', '65233271', 'Euro', 'French'),
('Gabon', 'Libreville', 'Gabonese', '267667', '2067561', 'Cfa Franc Beac', 'French'),
('United Kingdom', 'London', 'British', '243610', '66573504', 'British Pound', 'English'),
('Grenada', 'Saint George\'s', 'Grenadians', '344', '108339', 'East Caribbean Dollar', 'English'),
('Georgia', 'Tbilisi', 'Georgians', '69700', '3907131', 'Georgian Lari', 'Georgian'),
('French Guiana', 'Cayenne', 'French Guianese', '86504', '289763', 'Euro', 'French'),
('Ghana', 'Accra', 'Ghanaians', '238533', '29463643', 'Ghanaian New Cedi', 'Ewe'),
('Gambia', 'Banjul', 'Gambians', '11295', '2163765', 'Gambian Dalasi', 'English'),
('Guinea', 'Conakry', 'Guineans', '245857', '13052608', 'Guinean Franc', 'French'),
('Guadeloupe', 'Basse-terre', 'Guadeloupians', '1630', '449173', 'Euro', 'French'),
('Equatorial Guinea', 'Malabo', 'Equatorial Guineans', '28051', '1313894', 'Cfa Franc Beac', 'Spanish'),
('Greece', 'Athens', 'Greeks', '131957', '11142161', 'Euro', 'Greek'),
('Guatemala', 'Guatemala City', 'Guatemalans', '108889', '17245346', 'Guatemalan Quetzal', 'Spanish'),
('Guam', 'Hagatna', 'Guamanians', '544', '165718', 'United States Dollar', 'English'),
('Guinea-Bissau', 'Bissau', 'Bissau-Guineans', '36125', '1907268', 'Cfa Franc Bceao', 'Portuguese'),
('Guyana', 'Georgetown', 'Guyanese', '214969', '782225', 'Guyanese Dollar', 'English'),
('Hong Kong', '-', 'Hong Kongese', '1104', '7428887', 'Hong Kong Dollar', 'Chinese'),
('Honduras', 'Tegucigalpa', 'Hondurans', '112090', '9417167', 'Honduran Lempira', 'Spanish'),
('Croatia', 'Zagreb', 'Croatians', '56594', '4164783', 'Croatian Kuna', 'Croatian'),
('Haiti', 'Port-au-prince', 'Haitians', '27750', '11112945', 'Haitian Gourde', 'French'),
('Hungary', 'Budapest', 'Hungarians', '93028', '9688847', 'Hungarian Forint', 'Hungarian'),
('Indonesia', 'Jakarta', 'Indonesians', '1904569', '266794980', 'Indonesian Rupiah', 'Indonesian'),
('Ireland', 'Dublin', 'Irish', '70273', '4803748', 'Euro', 'Irish'),
('Israel', 'Jerusalem', 'Israelis', '20770', '8452841', 'Israeli New Shekel', 'Hebrew'),
('India', 'New Delhi', 'Indians', '3287263', '1354051854', 'Indian Rupee', 'Hindi, English'),
('Iraq', 'Baghdad', 'Iraqis', '438317', '39339753', 'Iraqi Dinar', 'Arabic'),
('Iran', 'Tehran', 'Iranians', '1648195', '82011735', 'Iranian Rial', 'Persian'),
('Iceland', 'Reykjavik', 'Icelanders', '103000', '337780', 'Iceland Krona', 'Icelandic'),
('Italy', 'Roma', 'Italians', '301340', '59290969', 'Euro', 'Italian'),
('Jersey', 'Saint Helier', 'Channel Islanders', '116', '166083', 'British Pound', 'French'),
('Jamaica', 'Kingston', 'Jamaicans', '10991', '2898677', 'Jamaican Dollar', 'English (jamaican English)'),
('Jordan', 'Amman', 'Jordanians', '89342', '9903802', 'Jordanian Dinar', 'Arabic'),
('Japan', 'Tokyo', 'Japanese', '377915', '127185332', 'Japanese Yen', 'Japanese'),
('Kenya', 'Nairobi', 'Kenyans', '580367', '50950879', 'Kenyan Shilling', 'English'),
('Kyrgyzstan', 'Bishkek', 'Kyrgyzstanis', '199951', '6132932', 'Kyrgyzstani Som', 'Russian'),
('Cambodia', 'Phnom Penh', 'Cambodians', '181035', '16245729', 'Cambodian Riel', 'Khmer'),
('Kiribati', 'Tarawa', 'I-Kiribati', '811', '118414', 'Australian Dollar', 'English'),
('Comoros', 'Moroni', 'Comorans', '2235', '832347', 'Comoro Franc', 'Arabic'),
('North Korea', 'Pyongyang', 'Koreans', '120538', '25610672', 'North Korean Won', 'Korean'),
('South Korea', 'Seoul', 'Koreans', '99720', '51164435', 'South-korean Won', 'Korean'),
('Kuwait', 'Kuwait', 'Kuwaitis', '17818', '4197128', 'Kuwaiti Dinar', 'Arabic'),
('Kazakhstan', 'Astana', 'Kazakhstanis', '2724900', '18403860', 'Kazakhstani Tenge', 'Russian'),
('Laos', 'Vientiane', 'Laos', '236800', '6961210', 'Lao Kip', 'Lao'),
('Lebanon', 'Beirut', 'Lebanese', '10400', '6093509', 'Lebanese Pound', 'Arabica'),
('Saint Lucia', 'Castries', 'Saint Lucians', '616', '179667', 'East Caribbean Dollar', 'English'),
('Sri Lanka', 'Sri Jayewardenepura Kotte', 'Sri Lankans', '65610', '20950041', 'Sri Lanka Rupee', 'Tamil'),
('Liberia', 'Monrovia', 'Liberians', '111369', '4853516', 'Liberian Dollar', 'English'),
('Lesotho', 'Maseru', 'Basotho', '30355', '2263010', 'Lesotho Loti', 'English'),
('Lithuania', 'Vilnius', 'Lithuanians', '65300', '2876475', 'Lithuanian Litas', 'Lithuanian'),
('Luxembourg', 'Luxembourg', 'Luxembourgers', '2586', '590321', 'Euro', 'French'),
('Latvia', 'Riga', 'Latvians', '64589', '1929938', 'Euro', 'Latvian'),
('Libya', 'Tripoli', 'Libyans', '1759540', '6470956', 'Libyan Dinar', 'Arabic'),
('Morocco', 'Rabat', 'Moroccans', '446550', '36191805', 'Moroccan Dirham', 'Arabic'),
('Moldova', 'Chisinau', 'Moldovans', '33851', '4041065', 'Moldovan Leu', 'Romanian'),
('Montenegro', 'Podgorica', 'Montenegrins', '13812', '629219', 'Euro', 'Serbian'),
('Madagascar', 'Antananarivo', 'Malagasy', '587041', '26262810', 'Malagasy Ariary', 'French'),
('North Macedonia', 'Skopje', 'Macedonians', '25713', '2085051', 'Macedonian Denar', 'Macedonian'),
('Mali', 'Bamako', 'Malians', '1240192', '19107706', 'Cfa Franc Bceao', 'French'),
('Myanmar', 'Pyinmana', 'Burmese', '676578', '53855735', 'Myanmar Kyat', 'Burmese'),
('Mongolia', 'Ulaanbaatar', 'Mongolians', '1564116', '3121772', 'Mongolian Tugrik', 'Mongolian'),
('Macao', '-', 'Macanese', '31.3', '632418', 'Hong Kong Dollar', 'Chinese'),
('Martinique', 'Fort-de-france', 'Martiniquais', '1128', '385065', 'Euro', 'French'),
('Mauritania', 'Nouakchott', 'Mauritanians', '1030700', '4540068', 'Mauritanian Ouguiya', 'Arabic'),
('Malta', 'Valletta', 'Maltese', '316', '432089', 'Euro', 'Maltese'),
('Mauritius', 'Port Louis', 'Mauritians', '2040', '1268315', 'Mauritian Rupee', 'French'),
('Maldives', 'Male', 'Maldivians', '298', '444259', 'Maldivian Rufiyaa', 'Maldivian'),
('Malawi', 'Lilongwe', 'Malawians', '118484', '19164728', 'Malawian Kwacha', 'English'),
('Mexico', 'Mexico City', 'Mexicans', '1964375', '130759074', 'Mexican Peso', 'Spanish'),
('Malaysia', 'Kuala Lumpur', 'Malaysians', '329847', '32042458', 'Malaysian Ringgit', 'Malay'),
('Mozambique', 'Maputo', 'Mozambicans', '799380', '30528673', 'Mozambican Metical', 'Portuguese'),
('Namibia', 'Windhoek', 'Namibians', '824292', '2587801', 'Namibian Dollar', 'English'),
('New Caledonia', 'Noumea', 'New Caledonians', '18575', '279821', 'Cfp Franc', 'French'),
('Niger', 'Niamey', 'Nigeriens', '1186408', '22311375', 'New Zealand Dollar', 'French'),
('Nigeria', 'Abuja', 'Nigerians', '923768', '195875237', 'Nigerian Naira', 'English'),
('Nicaragua', 'Managua', 'Nicaraguans', '130370', '6284757', 'Nicaraguan CÓrdoba', 'Spanish'),
('Netherlands', 'Amsterdam', 'Netherlanders', '41543', '17110161', 'Euro', 'Dutch'),
('Norway', 'Oslo', 'Norwegians', '323802', '5353363', 'Norwegian Kroner', 'Norwegian'),
('Nepal', 'Kathmandu', 'Nepalese', '147181', '29624035', 'Nepalese Rupee', 'Nepali'),
('New Zealand', 'Wellington', 'New Zealanders', '267710', '4749598', 'New Zealand Dollar', 'English'),
('Oman', 'Muscat', 'Omanis', '309500', '4829946', 'Omani Rial', 'Arabic'),
('Panama', 'Panama', 'Panamanians', '75420', '4162618', 'Panamanian Balboa', 'Spanish'),
('Peru', 'Lima', 'Peruvians', '1285216', '32551815', 'Peruvian Nuevo Sol', 'Spanish'),
('French Polynesia', 'Papeete', 'French Polynesians', '4167', '285859', 'Cfp Franc', 'French'),
('Papua New Guinea', 'Port Moresby', 'Papua New Guineans', '462840', '8418346', 'Papua New Guinean Kina', 'English'),
('Philippines', 'Manila', 'Filipinos', '300000', '106512074', 'Philippine Peso', 'English'),
('Pakistan', 'Islamabad', 'Pakistanis', '796095', '200813818', 'Pakistan Rupee', 'Urdu'),
('Poland', 'Warsaw', 'Poles', '312685', '38104832', 'Polish Zloty', 'Polish'),
('Puerto Rico', 'San Juan', 'Puerto Ricans', '13790', '3659007', 'United States Dollar', 'Spanish'),
('Palestine', '-', 'Palestinians', '5860', '5052776', 'Israeli New Shekel', 'English'),
('Portugal', 'Lisbon', 'Portuguese', '92090', '10291196', 'Euro', 'Portuguese'),
('Paraguay', 'Asuncion', 'Paraguayans', '406752', '6896908', 'Paraguayan GuaranÍ', 'Spanish'),
('Qatar', 'Doha', 'Qataris', '11586', '2694849', 'Qatari Riyal', 'Arabic'),
('Reunion', 'Saint-denis', 'Réunionese', '2512', '883247', 'Euro', 'English'),
('Romania', 'Bucharest', 'Romanians', '238391', '19580634', 'Romanian New Lei', 'Romanian'),
('Serbia', 'Belgrade', 'Serbians', '77474', '8762027', 'Serbian Dinar', 'Serbian'),
('Russia', 'Moscow', 'Russians', '17098242', '143964709', 'Russian Rouble', 'Russian'),
('Rwanda', 'Kigali', 'Rwandans', '26338', '12501156', 'Rwandan Franc', 'French'),
('Saudi Arabia', 'Riyadh', 'Saudis', '2149690', '33554343', 'Saudi Riyal', 'Arabic'),
('Solomon Islands', 'Honiara', 'Solomon Islanders', '28896', '623281', 'Solomon Islands Dollar', 'English'),
('Sudan', 'Khartoum', 'Sudanese', '1861484', '41511526', 'Sudanese Pound', 'Arabic'),
('Sweden', 'Stockholm', 'Swedes', '450295', '9982709', 'Swedish Krona', 'Swedish'),
('Singapore', 'Singapore', 'Singaporeans', '697', '5791901', 'Singapore Dollar', 'English'),
('Slovenia', 'Ljubljana', 'Slovenes', '20273', '2081260', 'Euro', 'Slovene'),
('Slovakia', 'Bratislava', 'Sierra Leoneans', '49035', '5449816', 'Euro', 'Slovak'),
('Sierra Leone', 'Freetown', 'Sammarinese', '71740', '7719729', 'Sierra Leonean Leone', 'English'),
('Senegal', 'Dakar', 'Somalis', '196722', '16294270', 'Cfa Franc Bceao', 'French'),
('Somalia', 'Mogadishu', 'Somalilanders', '637657', '15181925', 'Somali Shilling', 'Arabic'),
('Suriname', 'Paramaribo', 'Surinamers', '163820', '568301', 'Surinamese Dollar', 'Dutch'),
('South Sudan', 'Juba', 'South Sudanese', '644329', '12919053', 'South Sudanese Pound', 'English'),
('Sao Tome and Principe', 'Sao Tome', 'Sao Tomeans', '964', '208818', 'Droba', 'Portuguese'),
('El Salvador', 'San Salvador', 'Salvadorans', '21041', '6411558', 'Norwegian Kroner', 'Spanish'),
('Syria', 'Damascus', 'Syrians', '185180', '18284407', 'Syrian Pound', 'Arabic'),
('Eswatini', 'Mbabane', 'Swazis', '17364', '1391385', 'Swazi Lilangeni', 'English'),
('Chad', 'N\'djamena', 'Chadians', '1284000', '15353184', 'Cfa Franc Beac', 'Arabic'),
('Togo', 'Lome', 'Togolese', '56785', '7990926', 'Cfa Franc Bceao', 'French'),
('Thailand', 'Bangkok', 'Thai', '513120', '69183173', 'Thai Baht', 'Thai'),
('Tajikistan', 'Dushanbe', 'Tajikistanis', '143100', '9107211', 'Tajikistani Somoni', 'Persian'),
('Timor-Leste', 'Dili', 'Timorese', '14874', '1324094', 'New Zealand Dollar', 'Portuguese'),
('Turkmenistan', 'Ashgabat', 'Turkmens', '488100', '5851466', 'Turkmenistani Manat', 'Russian'),
('Tunisia', 'Tunis', 'Tunisians', '163610', '11659174', 'Tunisian Dinar', 'Literary Arabic'),
('Turkey', 'Ankara', 'Turks', '783562', '81916871', 'Turkish Lira', 'Turkish'),
('Trinidad and Tobago', 'Port of Spain', 'Trinidadians or Tobagonians', '5128', '1372598', 'Trinidad/tobago Dollar', 'English'),
('Taiwan', 'Taipei', 'Taiwanese', '35980', '23694089', 'Taiwan Dollar', 'Chinese Tw'),
('Tanzania', 'Dodoma', 'Tanzanians', '947300', '59091392', 'Tanzanian Shilling', 'English'),
('Ukraine', 'Kiev', 'Ukrainians', '603550', '44009214', 'Ukrainian Hryvnia', 'Ukrainian'),
('Uganda', 'Kampala', 'Ugandans', '241038', '44270563', 'Ugandan Shilling', 'English'),
('United States of America', 'Washington, D.C.', 'Americans', '9826675', '326766748', 'United States Dollar', 'English'),
('Uruguay', 'Montevideo', 'Uruguayans', '176215', '3469551', 'Uruguay Peso En Unidades Indexadas', 'Spanish'),
('Uzbekistan', 'Tashkent', 'Uzbekistanis', '447400', '32364996', 'Uzbekistan Som', 'Uzbek'),
('Saint Vincent and the Grenadines', 'Kingstown', 'Saint Vincentians', '389', '110200', 'East Caribbean Dollar', 'English'),
('Venezuela', 'Caracas', 'Venezuelans', '912050', '32381221', 'Venezuelan Bolivar Fuerte', 'Spanish'),
('Viet Nam', 'Ha Noi', 'Vietnamese', '331210', '96491146', 'Vietnamese Dong', 'Vietnamese'),
('Vanuatu', 'Port-vila', 'Ni-Vanuatu', '12189', '282117', 'Vanuatu Vatu', 'French'),
('Samoa', 'Apia', 'Samoans', '2831', '197695', 'Samoan Tala', 'English'),
('Yemen', 'Sanaa', 'Yemenis', '527968', '28915284', 'Yemeni Rial', 'Arabic'),
('Mayotte', 'Mamoudzou', 'Mahorans', '374', '259682', 'Euro', 'French'),
('South Africa', 'Cape Town', 'South Africans', '1219090', '57398421', 'South African Rand', 'Afrikaans'),
('Zambia', 'Lusaka', 'Zambians', '752618', '17609178', 'Zambian Kwacha', 'English'),
('Zimbabwe', 'Harare', 'Zimbabweans', '390757', '16913261', 'Zimbabwe Dollar', 'English');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
