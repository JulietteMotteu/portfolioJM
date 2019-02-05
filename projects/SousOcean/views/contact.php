<main>
    <div class="donnees">
        <form action="?contact=contact" method="post">
            <h2>Contactez-moi</h2>
            <p>
                <label for="login" class="form">Login</label>
                <input id="login" type="text" name="login">  
            </p>
            <p>
                <label for="email" class="form">Email</label>
                <input id="email" type="email" name="email">
            </p>
            <p id="votreMessage">Votre message :</p>
            <p id="commentContact">
                <textarea id="message" cols="50" rows="10" name="message"></textarea>
            </p>
            <p class="button">
                <button>Envoyer</button>
            </p>
        </form>
    </div>

</main>