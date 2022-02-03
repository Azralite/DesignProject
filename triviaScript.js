window.onload = function () {

    var question = document.getElementsByClassName('question');
    var gameSpace = document.getElementById('gameSpace');
    var startButton = document.querySelector('.startButton') ;
    var startGame = document.querySelector('.startGame') ;


    startButton.addEventListener("click", function(){
        // We remove the button and display the game

        startGame.style.display = "none";
        gameSpace.style.display = "grid";

    } )








}