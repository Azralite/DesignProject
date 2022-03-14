<!-- We include the file with the data base credential -->
<?php
    include_once 'includes/dbh.php';
    session_start();

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="styles/stylesWO.css">
    <link rel="stylesheet" href="styles/headerStyle.css">
    <script src="scripts/indexScriptWO.js"></script>
    <title>Cultural Map</title>
</head>

<body>





    <div class="header">
        <a href="#" class="countrySel">
            <div class="leftFlag">
                <p>Country Selection</p>
                <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                <p>Click to vote for different game or country</p>
            </div>
        </a>
        <div class="title">

            <h1> <--- Select the country for the games </h1>
        </div>
        <div class="rightFlags">
            <p class="from">Where are you from ?</p>
            <div class="mixedFlag">
                <a href="countrySelection.php?url=index">
                    <?php

                    if (empty($_GET['flag'])) {
                        echo "<img src=\"img/w80/flagGermany.png\" alt=\"Flag of Germany\" class=\"flag flagFrom\">";
                    } else {
                        $country = $_GET['flag'];
                        echo "<img src=\"img/w80/flag" . $country . ".png\" alt=\"Flag of Germany\" class=\"flag flagFrom\">";
                    }
                    ?>
                </a>
                <img src="img/w80/flagUnitedKingdom.png" alt="Flag of UK" class="flag flagLang">
            </div>
            <p class="gameLanguage">Game Language</p>
        </div>
    </div>



    <?php
        if(isset($_GET['flag'])){
            $_SESSION["countryGame"] = $_GET['flag'];
        } else {
            $_SESSION["countryGame"] = "Germany";

        }
    ?>

    <div class="mainWrapper">
        <h1>Select your player id</h1>
        <div class="playerSelection">
            <div class="player1 player">Player 1</div>
            <div class="player2 player">Player 2</div>
            <div class="player3 player">Player 3</div>
            <div class="player4 player">Player 4</div>
        </div>

        <h1>Select your game</h1>
        <div class="gameSelection">
            <div class="vote game">Do(n't) do that!</div>
            <div class="vote4 game">Trivia Game</div>
            <div class="geoguessr game">Geoguessr</div>
            <div class="wordImage game">Words + Images</div>
        </div>

        <div class="goButton game">Go</div>

    </div> 
    


    <!-- Here I thougt of using google map API to select the country
We can also click on an image, get the mouse coordonate and use nominatim reverse API to find the country -->
    <!-- <iframe width="600" height="450" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB8aDNvt5R6Bzj7E6REuLOcysDPM02Y_s8&q=Space+Needle,Seattle+WA"> -->
    <!-- </iframe> -->
</body>

</html>