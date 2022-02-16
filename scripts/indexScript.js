window.onload = function() {


    console.log("location " + location);

    var vh = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
    var vw = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

    var angle = Math.atan(vh / vw);

    var length = Math.cos(50 / (angle * 360 / (Math.PI * 2)));

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
        const url2 = url1[1].split("index.php")
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


    // player1.style.setProperty("--a", (-1 * (angle * 360 / (2 * Math.PI)) + "deg"));
    // player2.style.setProperty("--a", (angle * 360 / (2 * Math.PI)) + "deg");
    // player3.style.setProperty("--a", (angle * 360 / (2 * Math.PI)) + "deg");
    // player4.style.setProperty("--a", (-1 * (angle * 360 / (2 * Math.PI)) + "deg"));
    // // player3.style.setProperty("--b", length + "vh");
    // player1.style.transform = "rotate(var(--a))";
    // player2.style.transform = "rotate(var(--a))";
    // player3.style.transform = "rotate(var(--a))";
    // player4.style.transform = "rotate(var(--a))";

}

window.onresize = function() {
    var vh = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
    var vw = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

    var angle = Math.atan(vh / vw);

    var length = 50 / Math.cos(angle);

    console.log("angle rad" + angle);
    console.log("angle deg" + (angle * 360 / (2 * Math.PI)));
    console.log("length" + length);

    var player1 = document.getElementsByClassName("player1")[0];
    var player2 = document.getElementsByClassName("player2")[0];
    var player3 = document.getElementsByClassName("player3")[0];
    var player4 = document.getElementsByClassName("player4")[0];



    // player1.style.setProperty("--a", (-1 * (angle * 360 / (2 * Math.PI)) + "deg"));
    // player2.style.setProperty("--a", (angle * 360 / (2 * Math.PI)) + "deg");
    // player3.style.setProperty("--a", (angle * 360 / (2 * Math.PI)) + "deg");
    // player4.style.setProperty("--a", (-1 * (angle * 360 / (2 * Math.PI)) + "deg"));

    // player1.style.setProperty("--lenght", length + "vw");
    // player2.style.setProperty("--lenght", length + "vw");
    // player3.style.setProperty("--lenght", length + "vw");
    // player4.style.setProperty("--lenght", length + "vw");


    // // player3.style.setProperty("--b", length + "vh");
    // player1.style.transform = "rotate(var(--a))";
    // player2.style.transform = "rotate(var(--a))";
    // player3.style.transform = "rotate(var(--a))";
    // player4.style.transform = "rotate(var(--a))";

    // player1.style.width = "var(--lenght)";
    // player2.style.width = "var(--lenght)";
    // player3.style.width = "var(--lenght)";
    // player4.style.width = "var(--lenght)";
}