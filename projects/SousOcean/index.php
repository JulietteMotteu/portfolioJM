<?php
session_start();
ob_start();
// Inclure header
include("models/header.php");

//Inclure le menu/connexion
include("views/menu/menu-connexion.php");

// En fonction du menu donner la bonne page
if (isset($_GET["section"])) 
{
	switch ($_GET["section"]) 
	{
		case 'home':
			include("views/home.php");
			break;
		case 'sites':
			include("views/sites.php");
			break;
		case 'wildlife':
			include("views/wildlife.php");
			break;
        case 'formation':
            include("views/formation.php");
            break;
		case 'contact':
			include("views/contact.php");
			break;
		case 'connect':
			include("views/connect.php");
			break;
		case 'deconnect':
			include("views/deconnect.php");
			break;
		default:
			include("views/error404.php");
			break;
	}
} // fin if

elseif (isset($_GET["compte"]))
{
    switch ($_GET["compte"])
    {
        case 'compte': 
            include("views/compte.php");
            break;
        default:
            include("views/error404.php");
            break;
    }
} // fin elseif
elseif (isset($_GET['connect']))
{
    switch ($_GET["connect"])
    {
        case 'connect':
            include("views/connect.php");
            break;
        default:
            include("views/error404.php");
            break;
    }
}
else 
{
	//Inclure views/accueil.php
	include("views/home.php");
}// fin else

// Inclure footer
include("models/footer.php");
?>
