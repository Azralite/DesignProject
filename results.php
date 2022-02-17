<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/resultsStyle.css">
    <link rel="stylesheet" href="styles/headerStyle.css">
    <script src="scripts/resultScript.js"></script>
    <title>Voting</title>
</head>

<body>

    <div id="imageShown">
        <img src="img/dislike.png" alt="red cross" id="closeButton">
        <img src="img/croissant.webp" alt="image of someone dipping a croissant in a cofee">
    </div>
    <div class="mainWrapper">



        <div class="header">
            <a href="index.php">
                <div class="leftFlag">
                    <!-- <p>Country Selection</p> -->
                    <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                    <p>Click to vote for different game or country</p>
                </div>
            </a>
            <div class="title">

                <h1>Appropriate or not?</h1>
                <h1>Let's discuss behavior seen in <u>France</u></h1>
            </div>
            <div class="rightFlags">
                <p class="from">Where are you from ?</p>
                <!-- Mixed flag -->
                <div class="mixedFlag">
                    <a href="countrySelection.php?url=vote">
                        <?php

                        if (empty($_GET['flag']) && !isset($_SESSION["countryPlayer"])) {
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

        <div class="center">

            <div class="resImage">
                <img src="img/croissant.webp" alt="image of a behavior" class="mainImage">
                <!-- Loupe / Magnifing glass -->
                <img src="img/loupe.png" alt="magnifying glass">
            </div>

            <!-- Question in English -->
            <div class="resQuestions">
                <h2>This is the question in English ?</h2>
                <h2>This is the question in the language of the User?</h2>
            </div>

        </div>

        <div class="answerArea">
            <div class="translate addon">Translate</div>
            <div class="read addon">Read out automaticaly</div>
            <div class="previous addon">Previous question</div>
            <div class="next addon">Next question</div>
            <div class="mainAnswer"><b>Discussion - Read this out loud to the others: </b> <br>”Everyone has to answer - Is this behavior generally accepted in your country? <br> Player from Germany starts, after its China, France and then the Netherlands.”</div>
        </div>

        <div class="resSlider">
            <img src="img/w80/flagFrance.png" alt="flag of France" class="resFrance">
            <img src="img/w80/flagChina.png" alt="flag of China" class="resChina">
            <img src="img/w80/flagNetherlands.png" alt="flag of the Netherlands" class="resNeth">
            <img src="img/w80/flagGermany.png" alt="flag of Germany" class="resGermany">
        </div>

        <div class="footer">
            <p>Place your token along the colored voting area to indicate how you would behave in Germany. <br>
                Positioniere deinen Token auf dem farbigen Bereich um zu zeigen wie du dich in Deutschland verhalten würdest.</p>
        </div>
    </div>

</body>

</html>