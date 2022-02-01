window.onload = function() {

    var likeButton = document.getElementById('likeButton');
    var dislikeButton = document.getElementById("dislikeButton");
    var cards = document.getElementsByClassName('card');

    var titleCards = document.getElementsByClassName("titleCard");


    var resButton = document.getElementById('resButton');


    var backg = document.createElement("div");
    backg.style.position = "absolute";
    backg.style.left = "0";
    backg.style.right = "0";
    backg.style.top = "0";
    backg.style.bottom = "0";
    backg.style.zIndex = "10";
    backg.style.opacity = "0.5";
    backg.style.backgroundColor = '#000';
    backg.addEventListener("click", showRes);
  /*   var resPanel = document.createElement("div");
    var resTitle = document.createElement("h1");
    resTitle.innerHTML = titleCards[cardIdx];
    resPanel.insertBefore(resPanel, null);

    // var resGrid =


        var isBackG = false;


    resButton.addEventListener('click', showRes); */

    var cardIdx = 0;

    likeButton.addEventListener("click", likeFunction);
    dislikeButton.addEventListener("click", dislikeFunction);

    function likeFunction() {
        cards[cardIdx].style.transform = "translateX(300px)";
        cards[cardIdx].style.opacity = "0%";

        setTimeout(() => {
            changeCard();
        }, 400);

    }

    function dislikeFunction() {
        cards[cardIdx].style.transform = "translateX(-300px)";
        cards[cardIdx].style.opacity = "0%";

        setTimeout(() => {
            changeCard();
        }, 400);

    }

    function changeCard() {

        console.log('old' + cardIdx);
        cards[cardIdx].style.display = 'none';

        if (cardIdx + 1 >= cards.length)
            cardIdx = 0;
        else
            cardIdx++;

        console.log('new' + cardIdx);
        cards[cardIdx].style.display = 'flex';
        cards[cardIdx].style.opacity = '100%';
        cards[cardIdx].style.transform = 'none';
    }

    function showRes() {


        if (isBackG) {
            backg.remove();
            isBackG = false;
        } else {
            document.body.insertBefore(backg, null);
            isBackG = true;
        }


        console.log(isBackG);

    }
}