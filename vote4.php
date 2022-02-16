<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/vote4Style.css">
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

                <h1>Quiz about <u>France</u></h1>
            </div>

            <div class="rightFlags">
                <p class="from">Where are you from ?</p>
                <!-- Mixed flag -->
                <div class="mixedFlag">
                    <a href="countrySelection.php?url=vote4">
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

            <a href="#" class="answer1">
                <div>
                    <p>90.000.000</p>
                </div>
            </a>

            <a href="#" class="answer2">
                <div>
                    <p>64.000.000</p>
                </div>
            </a>

            <a href="#" class="answer3">
                <div>
                    <p>73.000.000</p>
                </div>
            </a>

            <a href="#" class="answer4">
                <div>
                    <p>68.000.000</p>
                </div>
            </a>

            <div class="question">
                <p>How many people live currently in France? <br> Wie viele Menschen leben aktuell in Frankreich?</p>
                <div class="imageQuestion"><img src="img/vote4q/Provence.jpeg" alt="image of provence"></div>
            </div>
        </div>

        <div class="footer">
            <p>Place your token in one of the four voting areas to select an answer. <br>
                Positioniere deinen Token auf einem der vier Bereiche um eine Antwort auszuwählen.</p>
        </div>
    </div>

</body>

</html>