<header>
        <div class="image">
        <img src="./img/red_sea1.jpg" alt="banniere" id="banniere" width="100%";>
		<h1>Sous l'océan</h1>
        </div>
        <nav id="menu">
            <ul>
                <li id="menuLeft"><a href="?section=home">Home</a></li>
                <li><a href="?section=sites">Sites de plongées</a></li>
                <li><a href="?section=wildlife">Vie sous-marine</a></li>
                <li><a href="?section=formation">Formation</a></li>
                <li><a href="?section=contact">Contact</a></li>
				<?php 
				//si session prenom existe alors afficher déconnexion + prenom
				if (isset($_SESSION['login']) || isset($login)) 
				{
					echo '<li><a href="?section=deconnect">Déconnexion '. $_SESSION["login"].'</a></li>';
				}

				//sinon afficher connexion
				else
				{
					echo "<li id=menuRight><a href='?section=connect'>Se connecter</a></li>";
				}		

				 ?>			
            </ul>
        </nav>
</header>