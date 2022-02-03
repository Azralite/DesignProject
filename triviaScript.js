window.onload = function () {

    var question = document.getElementsByClassName('question');
    var gameSpace = document.getElementById('gameSpace');
    var startButton = document.querySelector('.startButton');
    var startGame = document.querySelector('.startGame');
    var timer = document.getElementsByClassName('timer');

    var time;

    startButton.addEventListener("click", function () {
        // We remove the button and display the game

        startGame.style.display = "none";
        gameSpace.style.display = "grid";
        startTheGame();

    })



    function startTheGame() {
        // Timer
        time = 600;
        setInterval(reduceTime, 1000);

        // Questions 

        for (let index = 0; index < question.length; index++) {
            // Find a question here
            question[index].innerText = "How many people live in France ? ";
        }

    }

    function reduceTime() {
        time--;
        let minutes = parseInt(time/60,10);
        let sec = parseInt(time % 60,10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        sec = sec < 10 ? "0" + sec : sec;

        for (let index = 0; index < timer.length; index++) {
            timer[index].innerText = minutes + ":" + sec;
            
        }
    }







}