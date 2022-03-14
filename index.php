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
    <link rel="stylesheet" href="styles/styles.css">
    <!-- <link rel="stylesheet" href="styles/headerStyle.css"> -->
    <script src="scripts/indexScript.js"></script>
    <title>Cultural Map</title>
</head>

<body>

   <div class="gridWrapper">

        <div class="topContainer">
            <div class="player1">
                <div class="questionSpace">
                    <div class="header">
                        <a href="#" class="countrySel">
                            <div class="leftFlag">
                                <p>Country/Game Selection</p>
                                <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                            </div>
                        </a>

                        <a href="#" class="storyTime">STORY<br>TIME</a>
                        <div class="rightFlags">
                        <p class="from">Game Language</p>

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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="topContainer">
            <div class="player2">
                <div class="questionSpace">
                <div class="header">
                        <a href="#" class="countrySel">
                            <div class="leftFlag">
                                <p>Country/Game Selection</p>
                                <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                            </div>
                        </a>

                        <a href="#" class="storyTime">STORY<br>TIME</a>
                        <div class="rightFlags">
                        <p class="from">Game Language</p>

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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottomContainer">
            <div class="player3">
                <div class="questionSpace">
                <div class="header">
                        <a href="#" class="countrySel">
                            <div class="leftFlag">
                                <p>Country/Game Selection</p>
                                <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                            </div>
                        </a>

                        <a href="#" class="storyTime">STORY<br>TIME</a>
                        <div class="rightFlags">
                        <p class="from">Game Language</p>

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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottomContainer">
            <div class="player4">
                <div class="questionSpace">
                <div class="header">
                        <a href="#" class="countrySel">
                            <div class="leftFlag">
                                <p>Country/Game Selection</p>
                                <img src="img/w80/flagFrance.png" alt="flag of france" class="flag">
                            </div>
                        </a>

                        <a href="#" class="storyTime">STORY<br>TIME</a>
                        <div class="rightFlags">
                        <p class="from">Game Language</p>

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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Here I thougt of using google map API to select the country
We can also click on an image, get the mouse coordonate and use nominatim reverse API to find the country -->
    <!-- <iframe width="600" height="450" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB8aDNvt5R6Bzj7E6REuLOcysDPM02Y_s8&q=Space+Needle,Seattle+WA"> -->
    <!-- </iframe> -->
</body>

</html>