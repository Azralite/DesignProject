window.onload = function() {


    console.log("location " + location);

    var vh = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
    var vw = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

    var angle = Math.atan(vh / vw);
    var angle2 = Math.asin(vh / vw);


    var length = Math.cos(50 / (angle * 360 / (Math.PI * 2)));

    var player1 = document.getElementsByClassName("player1")[0];
    var player2 = document.getElementsByClassName("player2")[0];
    var player3 = document.getElementsByClassName("player3")[0];
    var player4 = document.getElementsByClassName("player4")[0];


    player1.style.setProperty("--a", (-1 * (angle2 * 360 / (2 * Math.PI)) + "deg"));
    player2.style.setProperty("--a", (angle2 * 360 / (2 * Math.PI)) + "deg");
    player3.style.setProperty("--a", (angle2 * 360 / (2 * Math.PI)) + "deg");
    player4.style.setProperty("--a", (-1 * (angle2 * 360 / (2 * Math.PI)) + "deg"));
    // player3.style.setProperty("--b", length + "vh");
    player1.style.transform = "rotate(var(--a))";
    player2.style.transform = "rotate(var(--a))";
    player3.style.transform = "rotate(var(--a))";
    player4.style.transform = "rotate(var(--a))";

}

window.onresize = function() {
    var vh = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
    var vw = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

    var angle = Math.atan(vh / vw);
    var angle2 = Math.asin(vh / vw);

    var length = 50 / Math.cos(angle);

    console.log("angle rad" + angle);
    console.log("angle deg" + (angle * 360 / (2 * Math.PI)));
    console.log("length" + length);

    var player1 = document.getElementsByClassName("player1")[0];
    var player2 = document.getElementsByClassName("player2")[0];
    var player3 = document.getElementsByClassName("player3")[0];
    var player4 = document.getElementsByClassName("player4")[0];



    player1.style.setProperty("--a", (-1 * (angle2 * 360 / (2 * Math.PI)) + "deg"));
    player2.style.setProperty("--a", (angle2 * 360 / (2 * Math.PI)) + "deg");
    player3.style.setProperty("--a", (angle2 * 360 / (2 * Math.PI)) + "deg");
    player4.style.setProperty("--a", (-1 * (angle2 * 360 / (2 * Math.PI)) + "deg"));

    player1.style.setProperty("--lenght", length + "vw");
    player2.style.setProperty("--lenght", length + "vw");
    player3.style.setProperty("--lenght", length + "vw");
    player4.style.setProperty("--lenght", length + "vw");


    // player3.style.setProperty("--b", length + "vh");
    player1.style.transform = "rotate(var(--a))";
    player2.style.transform = "rotate(var(--a))";
    player3.style.transform = "rotate(var(--a))";
    player4.style.transform = "rotate(var(--a))";

    // player1.style.width = "var(--lenght)";
    // player2.style.width = "var(--lenght)";
    // player3.style.width = "var(--lenght)";
    // player4.style.width = "var(--lenght)";
}