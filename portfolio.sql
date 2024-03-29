-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 05 fév. 2019 à 16:59
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `dive_commentaires`
--

CREATE TABLE `dive_commentaires` (
  `id` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  `text_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dive_personnes`
--

CREATE TABLE `dive_personnes` (
  `id` int(11) NOT NULL,
  `login` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dive_sites`
--

CREATE TABLE `dive_sites` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `photos` varchar(60) NOT NULL,
  `texte` text NOT NULL,
  `continent` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dive_sites`
--

INSERT INTO `dive_sites` (`id`, `nom`, `photos`, `texte`, `continent`) VALUES
(1, 'Malte', 'malte.jpg', 'Les eaux chaudes de Malte en été attirent de nombreux plongeurs. On y trouve un des meilleurs spots de plongée d\'Europe : le Blue Hole, où l\'on plonge dans une sorte de cavité et où l\'eau est d\'un beau bleu turquoise. A côté se trouve l\'Inland Sea, où l\'on plonge à côté d\'une impressionnante paroi qui descend jusqu\'à 60 mètres de profondeur.\r\nA Malte, il y a également moyen de faire de nombreuses plongée sur épaves qui offrent une vie sous-marine florissante.', 'EU'),
(2, 'Corse', 'corse.jpg', 'La Corse est incontestablement l’une des plus belles îles et l’une des meilleures destinations plongées de France. Les nombreuses réserves naturelles telles que Finocchiarola, Tre Padule de Suartone, Cerbicale, les bouches de Bonifacio, et la fameuse réserve de Scandola, classée au patrimoine mondial de l’UNESCO, préservent la vie sous-marine. La plongée en Corse permet de voir d’impressionnantes structures rocheuses, visiter des épaves exceptionnelles et plonger avec des mérous, des murènes et des poissons typiques de la méditerranée. ', 'EU'),
(3, 'Maldives', 'maldives.jpg', 'Ce pays est considéré comme abritant les plus beaux spots de plongée au monde. L\'eau y est quasi transparante et l\'on peut trouver une variété de poissons extraordinaire. Ainsi, on peut apercevoir des raies mantas par dizaines, des requins, des tortues de mer... ', 'AS'),
(4, 'Thaïlande', 'thailande.jpg', 'La Thaïlande est une des plus touristiques destination de plongée. La plongée en Thailande comprend deux parties distinctes : le Golfe de Thailande et la mer Andaman.\r\n\r\nLes îles Similan sont un parc naturel connu comme le meilleur site pour faire de la plongée en Thailande et l’un des meilleurs du monde pour ses corails, sa grande faune marine et ses plages de sable blanc.\r\nLes 9  îles qui forment l’archipel des îles Similan sont situées dans un lieu magique, au coeur de la mer d’Andaman, à environ trois heures en bâteau du continent. Ses eaux font partie de la Thaïlande, même si elles se rapprochent des frontières avec la Birmanie. Ses îles sont pour la plupart inhabitées, faisant de cet endroit un pays magique.\r\n\r\nLa majorité des meilleurs sites de plongée en Thaïlande se situe donc dans cet archipel.', 'AS'),
(5, 'Egypte', 'egypte.jpg', 'La plongée en Egypte offre de nombreux trésors sous marins. En Mer Rouge, on trouve probablement ce qui est la plus belle épave au monde : il s’agit de l’épave du Thistlegorm. Dans le Sinai se trouve le plus célèbre site de plongée au monde : le Blue Hole de Dahab. La plongée en Mer Rouge permet d\'admirer des formations de corail, des raies mantas, des requins marteaux, des tortues...\r\n', 'AF'),
(6, 'Tanzanie', 'tanzanie.jpg', 'L\'île de Zanzibar est une destination tropicale idyllique et fascinante pour les plongeurs. En effet, cette île compte parmi les meilleurs sites de plongée au monde si l’on veut y apercevoir pendant les mois de Septembre et d’Octobre, des baleines à bosse et des cachalots et de décembre à avril, des raies Manta et des requins baleines. Dans l’atoll de Mnemba, le site de Wattabomi nous plonge dans des eaux cristallines avec de superbes paysages sous-marins où il est possible de croiser des tortues et des requins de récifs. Leven Bank, est le meilleur site de plongée de Tanzanie ou bien le site de plongée ultime pour les plus aventureux! Avec de grands tombants et une excellente visibilité, c’est le lieu privilégié pour rencontrer des requins marteaux, des requins de récifs, des mérous géants et d\'énormes murènes.', 'AF'),
(7, 'Autralie', 'australie.jpg', 'La plongée en Australie est très souvent associée à la célèbre Grande Barrière de Corail. En effet, celle-ci, longue de 2000km et située dans le Queensland, constitue le plus grand récif de corail au monde. \r\nLa barrière de corail abrite un des écosystèmes les plus riches de la planète. Du fait de sa biodiversité, elle est une destinations très prisée des plongeurs. On y trouve aussi de nombreuses espèces endémiques.', 'OC'),
(8, 'Polynésie', 'polynésie.jpg', 'La Polynésie française est souvent considéré comme étant l’une des meilleures destinations plongées au monde : elle regorge d\'îles paradisiaques et de fonds marins d’une exceptionnelle beauté, aussi bien au niveau de sa flore que de sa faune. \r\n\r\nLa passe de Tiputa est sans nul doute l’un des meilleurs sites de plongée du monde. \r\n\r\nCette passe est particulièrement connue pour ses pélagiques. Il est très courant de croiser de grands requins gris, d’immenses requins marteaux tel que le M.Mokarran, de larges raies Manta, de grands bancs de raies léopards ou raies aigles, de beaux dauphins, ainsi que des tortues, des thons, des napoléons et bien d’autres.\r\n\r\nPar ailleurs, il est possible d\'y observer la migration des baleines, d’aout à octobre. Enfin, la visibilité est tout simplement extraordinaire et peut atteindre jusqu’à 60 mètres. C’est pourquoi ce site de plongée sous-marine en Polynésie française est un véritable paradis pour la plongée sous-marine. ', 'OC'),
(9, 'Mexique', 'mexique.jpg', 'La plongée au Mexique a beaucoup de choix à proposer: ainsi on peut plonger dans les Cénotes (réseau de puits naturels pouvant atteindre des dizaines de km) qui offrent un des meilleurs sites de plongée en grotte.\r\nSistema Dos Ojos est le meilleur site de plongée du Mexique. Il s\'agit d\'un réseau de grottes qui s’étend sur 82 kilomètres environ. La visibilité est excellente et l’eau est proche des 25°. Le site de plongée de Manchones Reef est lui le plus grand musée aquatique du monde : on peut y voir des centaines de statues immergées entre 3 et 6 mètres de profondeur. \r\nEnfin chaque année au large de Isla Mujeres, on peut observer des rassemblements géants de raies manta et de requins baleine.', 'AM'),
(10, 'Equateur', 'equateur.jpg', 'Le parc national des Galápagos, inscrit sur la liste mondiale du patrimoine de l’Unesco, accueille chaque année des dizaines de millier de touristes. Darwin’s Arch, meilleur site de plongée des Galápagos est un site unique où l\'on peut admirer des bancs gigantesques de requins marteaux, de raies Manta, de raies aigles, de requins de récifs et même parfois de requins baleines. \r\nOn pourra également observer énormément de tortue, de raies marbrée, de phoque, de barracuda... ', 'AM');

-- --------------------------------------------------------

--
-- Structure de la table `dive_wildlife`
--

CREATE TABLE `dive_wildlife` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `photos` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dive_wildlife`
--

INSERT INTO `dive_wildlife` (`id`, `num`, `nom`, `photos`) VALUES
(1, 1, 'Raie manta', 'manta.jpg'),
(2, 11, 'Poisson clown', 'poisson_clown.jpg'),
(3, 10, 'Poisson lion', 'poisson_lion.jpg'),
(4, 8, 'Raie aigle', 'raie_aigle.jpg'),
(5, 7, 'Hippocampe', 'hippocampe.jpg'),
(6, 9, 'Corail rouge', 'corail_rouge.jpg'),
(7, 2, 'Récif corallien', 'recif.jpg'),
(8, 6, 'Nudibranche', 'blue_dragon.jpg'),
(9, 5, 'Tortue de mer', 'tortue.jpg'),
(10, 12, 'Coraux', 'corail.jpg'),
(11, 3, 'Requin baleine', 'requin_baleine.jpg'),
(12, 4, 'Anémone', 'anemone.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `t_evenement`
--

CREATE TABLE `t_evenement` (
  `id` smallint(6) NOT NULL,
  `nom` varchar(100) COLLATE utf8_bin NOT NULL,
  `lieu` varchar(100) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `image` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `t_evenement`
--

INSERT INTO `t_evenement` (`id`, `nom`, `lieu`, `date`, `heure`, `description`, `type`, `image`) VALUES
(1, 'Atelier Java Script', 'Interface3', '2018-12-03', '18:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'atelier', 'even1'),
(2, 'Conférence Cyberféminisme', 'Interface3', '2018-12-09', '20:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'conference', 'even2'),
(3, 'Projection \"Geek Girls\"', 'Interface3', '2019-01-22', '19:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'projection', 'even3'),
(4, 'Atelier cryptage de données ', 'Interface3', '2019-02-17', '20:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'atelier', 'even4');

-- --------------------------------------------------------

--
-- Structure de la table `t_like`
--

CREATE TABLE `t_like` (
  `id` smallint(6) NOT NULL,
  `idPersonne` smallint(6) NOT NULL,
  `idEvenement` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `t_participation`
--

CREATE TABLE `t_participation` (
  `id` smallint(6) NOT NULL,
  `idPersonne` smallint(6) NOT NULL,
  `idEvenement` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

CREATE TABLE `t_personne` (
  `id` smallint(6) NOT NULL,
  `pseudo` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(200) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `photo` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `t_personne`
--

INSERT INTO `t_personne` (`id`, `pseudo`, `email`, `password`, `description`, `photo`) VALUES
(2, 'ada', '', '$2y$10$8LrRuEuchaUwkhsboV6sY.llDA22JMIDy1Z4csKIL7bpHgTiCuSga', NULL, NULL),
(5, 'juju', '', '$2y$10$s0RAzE4Kan/uZv74iu0YteYMC8US/ezF09v9zCk/CK7WgfOWkJnEi', NULL, NULL),
(15, 'sabrina', '', '$2y$10$au5f4siP7qW7V6g5cdsFOeUkMz2tjDmBDrMGQYqmE/Lo.yJAzv8HS', NULL, NULL),
(16, 'grace', '', '$2y$10$Bn6CCpdQta9vh8MHcQlu/OK5o/Zojo8iHnVPfMPwcZ53iPuojIXEC', NULL, NULL),
(18, 'margaret', '', '$2y$10$17H9B3pWgWsNRju25MtGE.LIfKdQfz1UtUUgwJeOaWBj784C3a3uy', NULL, NULL),
(25, 'livia', '', '$2y$10$jeUZiORoW5PxvN/DBqVode84JtN.jlaiDVjdZyC4k.FaTgsiUbSBa', NULL, NULL),
(27, 'sarra', '', '$2y$10$VsoLTADEmkl2wb8UtTpml.oDzhQ9.T8TdmeuVpOnjyysCZ64csAkG', NULL, NULL),
(35, 'fafa', '', '$2y$10$xVKEbckDk6mge/M3PqhlIewX18LPcV/xY/42EUUhbkubXxGqmnmDO', NULL, NULL),
(36, 'fazo', '', '$2y$10$BP/hhaM0E30xELmUctJDfexAqqLvXpkb8P8iBB6TcYxesJibXweNO', NULL, NULL),
(37, 'fatima', '', '$2y$10$W8nBg/55lxkQ2.xttSREs.P8uiEf2n6tXyoroYQ6KCQwtGzrX66Hy', NULL, NULL),
(39, 'nadia', '', '$2y$10$l/umFYehTpsZH0eA/dHibutWI8nQpOSSRbER7MvqNr2EjA.WQNjH.', NULL, NULL),
(40, 'toto', '', '$2y$10$2oTuiF9EQUzj1yhzS0gw9uCjCZWoM./Djghy6zHFwfUnDVHUL65lW', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_ressources`
--

CREATE TABLE `t_ressources` (
  `id` tinyint(4) NOT NULL,
  `titre` varchar(200) COLLATE utf8_bin NOT NULL,
  `auteur` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `lien` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `media` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `t_ressources`
--

INSERT INTO `t_ressources` (`id`, `titre`, `auteur`, `type`, `lien`, `description`, `image`, `media`) VALUES
(1, 'CODE: Debugging the Gender Gap', 'Robin Hauser Reynolds', 'media', 'https://www.youtube.com/watch?v=8VVb6M8pTvE', 'CODE: Debugging the Gender Gap is a 2015 documentary by Robin Hauser Reynolds. It focuses on the lack of women and minorities in the field of software engineering.', 'ressource1.jpg', '<iframe width=\"100%\" height=\"471px\" src=\"https://www.youtube.com/embed/8VVb6M8pTvE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'CyberFeminism', 'Susan Hawthorne', 'livre', 'https://www.amazon.com/CyberFeminism-Susan-Hawthorne-PhD/dp/187555968X', 'An international anthology by feminists working in the fields of electronic publishing, activism, data delivery, multimedia games production, educational multimedia, the virtual campus and virtual reality creation, program development and electronic product, as well as those developing critiques of electronic culture, this collection explores what the possibilities are for feminists and for feminism in cyberspace.', 'ressource2.jpg', NULL),
(3, 'Hidden Figures', 'Theodore Melfi', 'media', 'https://www.youtube.com/watch?v=5wfrDhgUMGI', 'Le destin extraordinaire des trois scientifiques afro-américaines qui ont permis aux États-Unis de prendre la tête de la conquête spatiale, grâce à la mise en orbite de l’astronaute John Glenn.\r\n\r\nMaintenues dans l’ombre de leurs collègues masculins et dans celle d’un pays en proie à de profondes inégalités, leur histoire longtemps restée méconnue est enfin portée à l’écran. ', 'ressource3.jpg', '<iframe width=\"100%\" height=\"471px\" src=\"https://www.youtube.com/embed/RK8xHq6dfAo\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Broad Band : The untold story of the women who made the internet', 'Claire l.Evans', 'livre', 'https://www.amazon.com/Broad-Band-Untold-Story-Internet/dp/0735211752', '\"This is a radically important, timely work,\" says Miranda July, filmmaker and author of The First Bad Man. The history of technology you probably know is one of men and machines, garages and riches, alpha nerds and brogrammers--but from Ada Lovelace, who wrote the first computer program in the Victorian Age, to the cyberpunk Web designers of the 1990s, female visionaries have always been at the vanguard of technology and innovation.\r\n\r\nIn fact, women turn up at the very beginning of every important wave in technology. They may have been hidden in plain sight, their inventions and contributions touching our lives in ways we don\'t even realize, but they have always been part of the story.\r\n\r\nVICE reporter and YACHT lead singer Claire L. Evans finally gives these unsung female heroes their due with her insightful social history of the Broad Band, the women who made the internet what it is today.\r\n\r\nSeek inspiration from Grace Hopper, the tenacious mathematician who democratized computing by leading the charge for machine-independent programming languages after World War II. Meet Elizabeth \"Jake\" Feinler, the one-woman Google who kept the earliest version of the Internet online, and Stacy Horn, who ran one of the first-ever social networks on a shoestring out of her New York City apartment in the 1980s.\r\n\r\nJoin the ranks of the pioneers who defied social convention to become database poets, information-wranglers, hypertext dreamers, and glass ceiling-shattering dot com-era entrepreneurs. This inspiring call to action shines a light on the bright minds whom history forgot, and shows us how they will continue to shape our world in ways we can no longer ignore.\r\n\r\nWelcome to the Broad Band. You\'re next.', 'ressource4.jpg', NULL),
(5, 'L\'informatique a-t-elle un sexe?', 'Isabelle Collet ', 'livre', 'https://www.amazon.fr/Linformatique-t-elle-sexe-Isabelle-Collet/dp/2296014801', 'D\'où vient cet engouement des garçons pour l\'informatique et ce manque d\'intérêt de la part des filles ? Pour répondre à cette question, l\'auteur retrace une \"psycho-histoire de l\'informatique\", à travers les travaux des pères et mères de l\'ordinateur, mais aussi en parcourant des récits de science-fiction. Elle a suivi les traces des programmateurs passionnés qu\'on appelle les hackers pour comprendre leur imaginaire. Elle constate que la représentation de l\'informaticien s\'est incarnée dans ces hackers.', 'ressource5.jpg', NULL),
(6, 'Geek Girls', 'Gina Hara', 'media', 'https://www.youtube.com/watch?v=LPEPgLgcVtE', 'Women inhabit the hidden half of nerd culture; a world of cute dresses, professional gamers, fake names and death threats. In the first feature-length documentary about geeky women, Gina Hara struggles through unexpected resistance to discover and show their experiences. ', 'ressource6.jpg', '<iframe width=\"100%\" height=\"471px\" src=\"https://www.youtube.com/embed/LPEPgLgcVtE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(7, 'Beyondcurie', 'Amanda Phingbodhipakkiya', 'site', 'https://www.beyondcurie.com/', 'Beyond Curie is a design project that highlights badass women in science, technology, engineering + mathematics. ', 'ressource7.jpg', NULL),
(8, 'Le Reset', NULL, 'site', 'https://lereset.org/', 'Le Reset est un hackerspace : un espace de bidouille et d\'apprentissage des technologies numériques.\r\n\r\nIl acueille de nombreux espaces, ateliers et conférences afin de partager la connaissance et le savoir numérique.', 'ressource8.jpg', NULL),
(9, 'Comment l’informatique s’est masculinisée le jour où elle devenue prestigieuse', 'Annabelle Laurent', 'presse', 'https://www.20minutes.fr/high-tech/1940683-20161011-comment-informatique-masculinisee-jour-o-devenue-prestigieuse', 'TECH Ce mardi 11 octobre, on fête Ada Lovelace, la première programmeuse de l’histoire. L’occasion de se rappeler que les femmes ont longtemps eu un rôle très important en informatique...  ', 'ressource9.jpg', NULL),
(10, 'Interface3', NULL, 'site', 'http://www.interface3.be/', 'Centre de formation continue et Organisme d’Insertion Socioprofessionnelle, Interface3 est la référence belge en matière de formations qualifiantes favorisant l’accès des femmes aux professions de l’informatique ! Active depuis  1988 en faveur de l’égalité des chances dans le monde professionnel, l’ASBL est reconnue et soutenue par de nombreux partenaires privés et institutionnels pour la qualité et le caractère innovant de ses formations. Chaque année près de 400 femmes demandeuses d’emploi y suivent une formation, courte ou longue, d’initiation ou de spécialisation. Le taux d’insertion à la sortie des formations qualifiantes ?  70%  !\r\nCes formations sont gratuites grâce au soutien de nos nombreux partenaires.', 'ressource10.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_women`
--

CREATE TABLE `t_women` (
  `idWomen` smallint(5) NOT NULL,
  `nom` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `dateBirth` smallint(4) NOT NULL,
  `dateDeath` smallint(4) DEFAULT NULL,
  `nationality` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `profession` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `t_women`
--

INSERT INTO `t_women` (`idWomen`, `nom`, `prenom`, `dateBirth`, `dateDeath`, `nationality`, `profession`, `description`, `image`) VALUES
(1, 'Lovelace', 'Ada', 1815, 1852, 'GB', 'programmeuse informatique', 'Ada Lovelace, de son nom complet Augusta Ada King, comtesse de Lovelace, née Ada Byron le 10 décembre 1815 à Londres et morte le 27 novembre 1852 à Marylebone dans la même ville, est une pionnière de la science informatique.\r\nElle est principalement connue pour avoir réalisé le premier programme informatique, lors de son travail sur un ancêtre de l\'ordinateur : la machine analytique de Charles Babbage.\r\n\r\nDans ses notes, on trouve en effet le premier programme publiéWoolley, destiné à être exécuté par une machine, ce qui fait considérer Ada Lovelace comme « le premier programmeur du monde1 ».\r\nElle a également entrevu et décrit certaines possibilités offertes par les calculateurs universels, allant bien au-delà du calcul numérique et de ce qu\'imaginaient Babbage et ses contemporainsWoolley, Swade.\r\n\r\nElle est assez connue dans les pays anglo-saxons et en Allemagne, notamment dans les milieux féministes ; elle est moins connue en France, mais de nombreux développeurs connaissent le langage Ada, nommé en son honneur. ', 'ada'),
(2, 'Hopper', 'Grace', 1906, 1992, 'USA', 'Informaticienne', 'Grace Murray Hopper (1906 – 1992) est une informaticienne américaine et Rear admiral (lower half) de la marine américaine. Elle a inventé le Cobol,mis au point les premiers supercalculteurs et a été témoin du premier bug informatique de l’histoire de l’informatique.', 'hopper'),
(3, 'Hamilton', 'Margaret', 1936, NULL, 'USA', 'informaticienne, ingénieure stystème', 'Margaret Heafield Hamilton, née Heafield le 17 août 19361, est une informaticienne, ingénieure système et chef d\'entreprise américaine.\r\nElle était directrice du département génie logiciel (« software engineering », terme de son invention) au sein du MIT Instrumentation Laboratory qui conçut le système embarqué du programme spatial Apollo.\r\nEn 1986, elle fonde la société Hamilton Technologies, Inc. à partir de ses travaux entrepris au MIT. ', 'hamilton'),
(4, 'Johnson', 'Katherine', 1918, NULL, 'USA', 'Mathématicienne, informaticien', 'Katherine Coleman Goble Johnson est une physicienne, mathématicienne et ingénieure spatiale américaine, née le 26 août 1918 à White Sulphur Springs en Virginie-Occidentale.\r\nElle contribue aux programmes aéronautiques et spatiaux de la National Advisory Committee for Aeronautics (NACA) puis de la National Aeronautics and Space Administration (NASA).\r\n\r\nRéputée pour sa fiabilité dans la navigation astronomique informatisée, elle conduit des travaux techniques à la NASA qui s\'étalent sur des décennies. Durant cette période, elle calcule et vérifie les trajectoires, les fenêtres de lancement et les plans d\'urgence de nombreux vols du programme Mercury, dont les premières missions de John Glenn et Alan Shepard, et des procédures de rendez-vous spatial pour Apollo 11 en 19691 jusqu\'au programme de la navette spatiale américaine2,3,4.\r\nSes calculs furent essentiels à la conduite effective de ces missions2.\r\nElle travaille enfin sur une mission pour Mars.\r\n\r\nEn 2015, elle reçoit la médaille présidentielle de la Liberté. ', 'johnson'),
(5, 'Borg', 'Anita', 1949, 2003, 'USA', 'scientifique informatique', 'Anita Borg (née Anita Borg Naffz le 17 janvier 1949 à Chicago – morte le 6 avril 2003) est une informaticienne américaine.\r\n\r\nElle a notamment travaillé pour des compagnies telles Digital Equipment Corporation et Xerox. Elle a également fondé la Grace Hopper Celebration of Women in Computing (en) et l\'Institut Anita Borg. ', 'borg'),
(6, 'Dorcas', 'Muthoni', 1976, NULL, 'Kenya', 'entrepreneuse, scientifique informatique', 'Dorcas Muthoni (née en 1979 à Nyeri1) est une entrepreneure et informaticienne kényane. Elle est la fondatrice de la compagnie OPENWORLD LTD2, et de AfChix, une organisation visant à former et soutenir les femmes africaines en informatique.\r\n\r\nDiplômée en informatique à l\'université de Nairobi, Muthoni est spécialisée en, notamment, réseaux sans fil, communications radio et planification techno-stratégique.\r\n\r\nEn 2013, elle est sélectionnée comme World Economic Forum Young Global Leader. En 2017, elle obtient un Honoris Causa de l\'université Pompeu Fabra. ', 'dorcas'),
(8, 'Lamarr', 'Hedy', 1914, 2000, 'Autriche, USA', 'Inventrice, actrice', 'Hedy Lamarr est une actrice, productrice de cinéma et inventrice autrichienne naturalisée américaine, née Hedwig Eva Maria Kiesler le 9 novembre 1914 à Vienne (Autriche-Hongrie) et morte le 19 janvier 2000 à Casselberry (Floride).\r\n\r\nAu cours de sa carrière cinématographique, elle a joué sous la direction des plus grands réalisateurs de l\'époque : King Vidor, Jack Conway, Victor Fleming, Jacques Tourneur, Marc Allégret, Cecil B. DeMille ou Clarence Brown.\r\n\r\nOutre sa carrière au cinéma, elle a marqué l\'histoire scientifique des télécommunications en inventant, en collaboration avec le compositeur George Antheil, pianiste et inventeur comme elle, la « technique Lamarr », un système de codage des transmissions par étalement de spectre, ancêtre des techniques toujours utilisées actuellement pour les liaisons chiffrées militaires, la téléphonie mobile ou la technique du Wi-Fi. ', 'lamarr'),
(9, 'Bedwei', 'Farida ', 1979, NULL, 'Niger', 'informaticienne', 'Farida Bedwei passe sa petite enfance en Dominique, en Grenade et au Royaume-Uni. Sa famille déménage au Ghana quand elle a 9 ans.\r\n\r\nNouveau-née, elle développe une paralysie cérébrale, et est scolarisée à domicile et éduquée par sa mère jusqu\'à l\'âge de 11 ans.\r\n\r\nFarida obtient son baccalauréat en sciences informatiques de l\' Université de Hertfordshire au Royaume-Uni en 2005. De retour au Ghana, elle obtient un certificat en gestion de projet en 2009 du Ghana Institute of Management and Public Administration (GIMPA).  \r\n\r\nEn 2010, Farida Bedwei écrit un roman intitulé: Definition of a Miracle.  \r\n\r\nFarida Bedwei est cofondatrice et CTO, directrice technique, de Logiciel Ghana Limited, une société de services et de technologies innovantes qui fournit des plateformes pour la banque mobile et la gestion de trésorerie en Afrique.  Elle a créé l\'application de micro-finance gKudi, un système bancaire simplifié qui octroie des prêts à petite échelle au Ghana. Cette application est utilisée par plus de 130 sociétés de micro-crédit au Ghana. \r\n\r\nElle remporte plusieurs prix pour son travail, dont le Legacy Maiden Ideas Award en 2011. Puis en 2013, la revue sud-africaine CEO Magazine la designe femme africaine la plus influente de l\'année dans le monde de la finance.  \r\n\r\nFarida Bedwei est membre du conseil d\'administration de Sharecare Ghana, une organisation à but non lucratif pour les personnes atteintes de maladies auto-immunes et neurologiques. Elle participe également à une initiative du Ministère de la communication du Ghana visant à sensibiliser davantage les femmes aux nouvelles technologies. Elle s\'engage en faveur des droits des personnes handicapées. ', 'bedwei'),
(10, 'Rotich', 'juliana', 1977, NULL, 'Kenya', 'Spécialiste technologique, entrepreneuse', 'Juliana Rotich, née en 1977 au Kenya, est une professionnelle des technologies informatiques qui a notamment participé à la création du premier logiciel open-source « made in Africa », Ushahidi, pour cartographier les dégâts et les témoignages dans les situations de crise, et qui dirige l\'association de même nom. Elle travaille également à des solutions techniques facilitant l\'accès à Internet sur tout le territoire africain. ', 'rotich'),
(11, 'Fried', 'Limor', 1982, NULL, 'USA', 'Ingénieure electrique, pionnière activiste de l\'op', 'Limor Fried is an American electrical engineer and owner of the electronics hobbyist company Adafruit Industries.\r\nShe is influential in the open-source hardware community, having participated in the first Open Source Hardware Summit and the drafting of the Open Source Hardware definition, and is known for her moniker ladyada, a homage to Lady Ada Lovelace. ', 'fried'),
(12, 'Kenneth Keller', 'Mary', 1913, 1985, 'USA', 'Religieuse, première doctorante américaine en informatique', 'Mary Kenneth Keller, Sœur de la charité de la Vierge Marie, B.V.M. (1913 – 1985) est une religieuse catholique romaine Américaine, enseignante et pionnière dans les sciences informatiques. Elle est la première femme qui obtient un doctorat en informatique aux Etats-Unis\r\n.\r\nMary Kenneth Keller est née à Cleveland, Ohio le 17 décembre 1913 de John Adam Keller et Catherine Josephine (née Sullivan) Keller. Elle entre dans la congrégation des sœurs de la charité de la Vierge Marie en 1932 et prononce ses vœux en 1940.\r\n\r\nElle participe au développement du BASIC avec John George Kemeny et Thomas Eugene Kurtz. Elle obtient un doctorat en 1965 à l\'Université du Wisconsin à Madison. Elle enseigne à l\'Université Clarke. Keller décède le 10 Janvier 1985, à 71 ans, à Dubuque (Iowa).', 'keller'),
(13, 'Windsor', 'Edith', 1929, 2017, 'USA', 'militante des droits LGBT, directrice de la technologie chez IBM', 'Edith \"Edie\" Windsor[1] (née Schlain; June 20, 1929 – September 12, 2017) was an American LGBT rights activist and a technology manager at IBM.\r\nShe was the lead plaintiff in the Supreme Court of the United States case United States v. Windsor, which successfully overturned Section 3 of the Defense of Marriage Act and was considered a landmark legal victory for the same-sex marriage movement in the United States.', 'windsor'),
(14, 'Goldberg', 'Adele', 1945, NULL, 'USA', 'informaticienne, créatrice du language smalltalk-80', 'Adele Goldberg, née le 7 juillet 1945 à Cleveland, est une informaticienne américaine.\r\n\r\nTravaillant au Palo Alto Research Center (PARC) dans les années 1970, elle a notamment participé au développement du langage de programmation Smalltalk-80 et de concepts liés à la programmation orientée objet.', 'goldberg'),
(15, 'Mayer', 'Marissa', 1975, NULL, 'USA', 'Informaticienne, PDG de Yahoo!', 'Marissa Ann Mayer, née le 30 mai 1975 à Wausau dans le Wisconsin, est une informaticienne et chef d\'entreprise américaine. Après 13 ans passés chez Google en tant que vice-présidente1 responsable des services de cartographie et de géolocalisation, elle occupe de 2012 à 2017 le poste de PDG de Yahoo!. ', 'mayer');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dive_personnes`
--
ALTER TABLE `dive_personnes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dive_sites`
--
ALTER TABLE `dive_sites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dive_wildlife`
--
ALTER TABLE `dive_wildlife`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_evenement`
--
ALTER TABLE `t_evenement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_like`
--
ALTER TABLE `t_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPersonne` (`idPersonne`),
  ADD KEY `idEvenement` (`idEvenement`);

--
-- Index pour la table `t_participation`
--
ALTER TABLE `t_participation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1` (`idEvenement`),
  ADD KEY `FK2` (`idPersonne`);

--
-- Index pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- Index pour la table `t_ressources`
--
ALTER TABLE `t_ressources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `t_women`
--
ALTER TABLE `t_women`
  ADD PRIMARY KEY (`idWomen`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dive_personnes`
--
ALTER TABLE `dive_personnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dive_sites`
--
ALTER TABLE `dive_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `dive_wildlife`
--
ALTER TABLE `dive_wildlife`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `t_evenement`
--
ALTER TABLE `t_evenement`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_like`
--
ALTER TABLE `t_like`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_participation`
--
ALTER TABLE `t_participation`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_personne`
--
ALTER TABLE `t_personne`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `t_ressources`
--
ALTER TABLE `t_ressources`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_women`
--
ALTER TABLE `t_women`
  MODIFY `idWomen` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_like`
--
ALTER TABLE `t_like`
  ADD CONSTRAINT `t_like_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `t_personne` (`id`),
  ADD CONSTRAINT `t_like_ibfk_2` FOREIGN KEY (`idEvenement`) REFERENCES `t_evenement` (`id`);

--
-- Contraintes pour la table `t_participation`
--
ALTER TABLE `t_participation`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`idEvenement`) REFERENCES `t_evenement` (`id`),
  ADD CONSTRAINT `FK2` FOREIGN KEY (`idPersonne`) REFERENCES `t_personne` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
