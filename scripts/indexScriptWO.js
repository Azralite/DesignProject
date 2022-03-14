window.onload = function() {

    var player1 = document.getElementsByClassName("player1")[0];
    var player2 = document.getElementsByClassName("player2")[0];
    var player3 = document.getElementsByClassName("player3")[0];
    var player4 = document.getElementsByClassName("player4")[0];

    var vote = document.getElementsByClassName("vote")[0];
    var vote4 = document.getElementsByClassName("vote4")[0];
    var geo = document.getElementsByClassName("geoguessr")[0];
    var wordImage = document.getElementsByClassName("wordImage")[0];

    var goButton = document.getElementsByClassName("goButton")[0];

    var countSel = document.getElementsByClassName("countrySel")[0];
    countSel.addEventListener("click", notImplemented)
    geo.addEventListener("click", notImplemented)
    wordImage.addEventListener("click", notImplemented)

    function notImplemented() {
        alert("This functionnality is not implemented yet")
    }



    var player;
    var choice;

    player1.addEventListener("click", function() {
        player1.classList.add("selected");
        player2.classList.remove("selected");
        player3.classList.remove("selected");
        player4.classList.remove("selected");

        player = 1;

        console.log("player1");
    })


    player2.addEventListener("click", function() {
        player2.classList.add("selected");
        player1.classList.remove("selected");
        player3.classList.remove("selected");
        player4.classList.remove("selected");

        player = 2;
        console.log("player2");
    })

    player3.addEventListener("click", function() {
        player3.classList.add("selected");
        player2.classList.remove("selected");
        player1.classList.remove("selected");
        player4.classList.remove("selected");

        player = 3;
        console.log("player3");
    })

    player4.addEventListener("click", function() {
        player4.classList.add("selected");
        player2.classList.remove("selected");
        player3.classList.remove("selected");
        player1.classList.remove("selected");

        player = 4;
        console.log("player4");
    })


    vote.addEventListener("click", function() {
        vote.classList.add("selected");
        vote4.classList.remove("selected");

        choice = "vote.php";
        console.log("vote");
    })

    vote4.addEventListener("click", function() {
        vote4.classList.add("selected");
        vote.classList.remove("selected");

        choice = "vote4.php";
        console.log("vote4");
    })


    goButton.addEventListener("click", function() {

        const locTest = location.toString();
        const url1 = locTest.split('DesignProject/');
        console.log("url1 " + url1[0])
        const url2 = url1[1].split("indexWO.php")
        console.log("url2 " + url2[1])
        if (url2[1] == null || url2[1].length == 0) {
            console.log("toto");
            var newLocation = url1[0] + "DesignProject/" + choice + "?player=" + player;
        } else {
            if (url2[1].length == 0) {
                console.log("toto");
                var newLocation = url1[0] + "DesignProject/" + choice + "?player=" + player;
            } else {
                console.log("tata");
                var newLocation = url1[0] + "DesignProject/" + choice + url2[1] + "&player=" + player;
            }
        }
        document.location.href = newLocation;
        console.log(newLocation);


    })


}