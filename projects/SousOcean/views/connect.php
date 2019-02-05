<main>
    <div class="donnees">
        <?php
        if (isset($_POST["email"]) && isset($_POST["password"]))
        {
            $email = $_POST["email"];
            $password = $_POST["password"];
            $basededonnees = "mysql:host=185.98.131.91;dbname=julie1110947;charset=utf8";
            $identifiant = "julie1110947";
            $motdepasse = "mckhjj2vjw";
            $pdo = new PDO($basededonnees, $identifiant, $motdepasse);
            $requete = 'SELECT id, login, role FROM dive_personnes WHERE email ="'.$email.'" AND password = "'.$password.'"';
            $tableau = $pdo->query($requete);
            $nb = $tableau->rowCount();
            if ($nb > 0) 
            {
                while ($ligne = $tableau->fetch(PDO::FETCH_NUM)) 
                {				
                    $id = $ligne[0];
                    $role = $ligne[2];
                    $login = $ligne[1];
                }
                $_SESSION['id'] = $id;
                $_SESSION['role'] = $role;
                $_SESSION['login'] = $login;
                
                if ($role == "ADMIN") 
                {
              /*      echo "<p>Bienvenue ADMIN $login<p>";*/
                    header('Location:index.php');

                }
                else 
                {
                    header('Location:index.php');

                }
            }
            //Fin du si nb
            
            else
            {
        ?>
        <form action="?section=connect" method="post">
            <h2>Se connecter</h2>
            <p>
                <label for="email" class="form">Email</label>
                <input id="email" type="email" name="email">
            </p>
            <p>
                <label for="mdp" class="form">Mot de passe</label>
                <input id="mdp" type="password" name="mdp">
            </p>
            <p>
                <button>Se connecter</button>
            </p>
            <p>
                <a href="?compte=compte">Créer un compte</a>
            </p>
        </form>
        <?php 
                echo "L'email et/ou le mot de passe n'est pas correct. Veuillez réessayer.";
            } 
            //Fin du else nb
        } 
        //Fin du si isset
        else { 
            ?>
        <form action="?section=connect" method="post">
            <h2>Se connecter</h2>
            <p>
                <label for="email" class="form">Email</label>
                <input id="email" type="email" name="email">
            </p>
            <p>
                <label for="mdp" class="form">Mot de passe</label>
                <input id="mdp" type="password" name="password">
            </p>
            <p class="button">
                <button>Se connecter</button>
            </p>
            <p class="lienForm">
                <a href="?compte=compte" class="lienFormChild">Créer un compte</a>
            </p>
        </form>
        <?php
            }
        ?>
    </div>
</main>