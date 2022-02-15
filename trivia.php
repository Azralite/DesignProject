<?php
include_once 'includes/dbh.inc.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/triviaStyles.css">
    <script src="scripts/triviaScript.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/interactjs/dist/interact.min.js"></script>
    <title>Trivial Poursuite</title>
</head>

<body>
    <!-- <h1>Cultural Map</h1> -->

    <div class="startGame">
        <div class="startButton">
            Start the Game
        </div>    
    </div>

    <!-- We divide our screen in 4 part for the 4 players -->
    <div id="gameSpace">
        <div class="center">
            <div class="timer">10:00</div>
            <div class="timer reverse">10:00</div>
        </div>
        <div class="player1 player reverse">
            <!-- One question and 4 answers -->
            <p class="question">
                How many people live in France ?
            </p>

            <div class="answer">
                20 000 000
            </div>


            <div class="answer">
                40 000 000
            </div>


            <div class="answer">
                60 000 000
            </div>


            <div class="answer">
                80 000 000
            </div>

            <div class="emoji">
                
            </div>
        </div>

        <div class="player2 player reverse">
            <!-- One question and 4 answers -->
            <p class="question">
                How many people live in France ?
            </p>

            <div class="answer">
                20 000 000
            </div>


            <div class="answer">
                40 000 000
            </div>


            <div class="answer">
                60 000 000
            </div>


            <div class="answer">
                80 000 000
            </div>
        </div>

        <div class="player3 player">
            <!-- One question and 4 answers -->
            <p class="question">
                How many people live in France ?
            </p>

            <div class="answer">
                20 000 000
            </div>


            <div class="answer">
                40 000 000
            </div>


            <div class="answer">
                60 000 000
            </div>


            <div class="answer">
                80 000 000
            </div>
        </div>

        <div class="player4 player">
            <!-- One question and 4 answers -->
            <p class="question">
                How many people live in France ?
            </p>

            <div class="answer">
                20 000 000
            </div>


            <div class="answer">
                40 000 000
            </div>


            <div class="answer">
                60 000 000
            </div>


            <div class="answer">
                80 000 000
            </div>
        </div>
    </div>

</body>

</html>