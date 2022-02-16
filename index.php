<!-- We include the file with the data base credential -->
<?php
include_once 'includes/dbh.php';
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="styles/styles.css">
    <script src="scripts/indexScript.js"></script>
    <title>Cultural Map</title>
</head>

<body>




    <div class="header">
        <a href="#" class="countrySel">
            <div class="leftFlag">
                <p>Country Selection</p>
                <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                <!-- <p>Click to vote for different game or country</p> -->
            </div>
        </a>
        <div class="title">

            <h1> <--- Select the country for the games </h1>
        </div>
        <div class="rightFlags">
            <p class="from">Where are you from ?</p>
            <!-- Mixed flag -->
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

    <!-- <div class="gridWrapper">

        <div class="topContainer">
            <div class="player1">
                <div class="questionSpace"></div>
            </div>
        </div>
        <div class="topContainer">
            <div class="player2">
                <div class="questionSpace"></div>
            </div>
        </div>
        <div class="bottomContainer">
            <div class="player3">
                <div class="questionSpace"></div>
            </div>
        </div>
        <div class="bottomContainer">
            <div class="player4">
                toto
                <div class="questionSpace"></div>
            </div>
        </div>
    </div> -->



    <!-- <div id="wrapper"> -->
    <!-- The img is now in the css backgound -->
    <!-- <img class="imgBackground" src="img/maps/mapWorld3.png" alt="map of the world"> -->


    <!--   <h2>Select a country</h2>


        <?php

        // We query the name of all the country in our db 
        /* $sql = "SELECT name FROM countries;";
        $result = mysqli_query($conn, $sql);
        $resultCheck = mysqli_num_rows($result);

        if ($resultCheck > 0) {
            echo "<ul id=\"chooseCountry\">";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<a href=\"country.php?name=" . $row['name'] . "\"><li id=\"country\"> " . $row['name'] .  "</li></a>";
            }
            echo "</ul>";
        } */
        ?>


    </div> -->

    <!-- Here I thougt of using google map API to select the country
We can also click on an image, get the mouse coordonate and use nominatim reverse API to find the country -->
    <!-- <iframe width="600" height="450" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB8aDNvt5R6Bzj7E6REuLOcysDPM02Y_s8&q=Space+Needle,Seattle+WA"> -->
    <!-- </iframe> -->
</body>

</html>