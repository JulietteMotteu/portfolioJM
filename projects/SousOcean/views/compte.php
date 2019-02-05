<?php  
	if (isset($_POST['login']) && isset($_POST['email']) && isset($_POST['password'])) 
	{
		$login = $_POST['login'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$hashmdp = password_hash($password, PASSWORD_DEFAULT);
		$role = "USER";
		$basededonnees = "mysql:host=185.98.131.91;dbname=julie1110947;charset=utf8";
		$identifiant = "julie1110947";
		$motdepasse = "mckhjj2vjw";
		$pdo = new PDO($basededonnees, $identifiant, $motdepasse);
		$requete = "INSERT INTO dive_personnes (login, email, password, role) VALUES (:login, :email, :password, :role)";
		$insertion = $pdo->prepare($requete);
		$insertion->execute(array(
			":login" => $login,
			":email" => $email,
			":password" => $password,
			":role" => $role
		));
	}
?>
<main>
    <div class="donnees">
        <form action="?compte=compte" method="post">
            <h2>Créer un compte</h2>
            <p>
                <label for="login" class="form">Login</label>
                <input id="login" type="text" name="login">  
            </p>
            <p>
                <label for="email" class="form">Email</label>
                <input id="email" type="email" name="email">
            </p>
            <p>
                <label class="form">Mot de passe</label>
                <input id="mdp" type="password" name="password">
            </p>
            <p class="button">
                <button>Créer le compte</button>
            </p>
            <p class="lienForm">
                <a href="?connect=connect" class="lienFormChild">Se connecter</a>
            </p>
        </form>
    </div>
</main>