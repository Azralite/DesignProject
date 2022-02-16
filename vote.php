<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/voteStyle.css">
    <script src="https://unpkg.com/interactjs/dist/interact.min.js"></script>
    <script src="scripts/voteScript.js"></script>
    <title>Voting</title>
</head>

<body>
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

        <div class="center">

            <!-- <img src="img/croissant.webp" alt="image of a behavior" class="mainImage"> -->

            <!-- Question in English -->
            <h2>This is the question in English ?</h2>
            <h2>This is the question in the language of the User?</h2>

        </div>

        <div class="votingArea">
            <div class="slider"></div>
        </div>

        <div class="answer">Validate</div>

        <div class="footer">
            <p>Place your token along the colored voting area to indicate how you would behave in Germany. <br>
                Positioniere deinen Token auf dem farbigen Bereich um zu zeigen wie du dich in Deutschland verhalten würdest.</p>
        </div>
    </div>

</body>

</html>