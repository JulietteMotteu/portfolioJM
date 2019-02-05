<main>
    <section>
        <h2>Formation</h2>
        <p> 
            La connaissance des contraintes du milieu aquatique, des dangers, et des réglementations sont indispensables pour pouvoir plonger. En effet, il s'agit d'un sport à risque qu'il ne faut pas pratiquer à la légère. Pour pouvoir plonger, il faut donc suivre une formation afin d'obtenir la cartification. Cette formation doit se faire auprès d'un centre de plongée qui délivrera un brevet d'une fédération. Différentes fédérations internationales existent, les plus connues étant PADI et SSI.</p>
        <p>
            Pour s'essayer à la plongée, on peut bien sûr faire un baptême de plongée, n'importe où dans le monde auprès d'un centre de plongée. Aucune compétence ni aucun brevet n'est nécessaire, juste une bonne condition physique.
        </p>
        <p>
            Si l'on veut aller plus loin et pouvoir plonger partout dans le monde en compagnie d'un binôme, jusqu'à 18 mètres de profondeur, il faudra obtenir le brevet "Open Water Diver". La formation comprend une partie théorique et une partie pratique. En général, il est demandé de réaliser 5 plongées en extérieur pour valider le brevet.
            Pour se perfectionner, il y a encore toutes sortes de brevet plus pointu, afin d'augmenter ses compétences et connaissances mais aussi de pouvoir plonger plus profond ou dans des environnements plus difficles.
        </p>
        <p>
            A Bruxelles, on peut se former entre autres au Nemo 33. Cette piscine est profonde de 33 mètres et est chauffée à 33 degrés. On peut ainsi y plonger toute l'année dans des conditions idéales.
        </p>

        <button id="infoClick">Plus d'infos</button>

        <div id='infoText'>
            <h3>Où se former ?</h3>
                <h4>Nemo 33</h4>
            <address>
                <a href="http://www.nemo33.com/fr/" target="_blank">Site web</a><br>
                Adresse :<br>
                Rue de Stalle 333<br>
                1180 Bruxelles<br>
                Belgique<br>
            </address>

        </div>

        <script>
            var monBouton = document.querySelector('#infoClick');
            var infosSupp = document.querySelector('#infoText');

            monBouton.addEventListener('click', function(e)
            {
                if (infosSupp.style['display'] == 'none' || infosSupp.style['display'] == '') 
                {
                    infosSupp.style['display'] = 'block';
                }
            else
                {
                    infosSupp.style['display'] = 'none';
                }
            });
        </script>

    </section>
</main>
