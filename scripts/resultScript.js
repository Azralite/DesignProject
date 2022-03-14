window.onload = function() {

    var resImage = document.getElementsByClassName("resImage")[0];
    var imageShown = document.getElementById("imageShown");
    var mainWrapper = document.getElementsByClassName("mainWrapper")[0];

    var closeButton = document.getElementById("closeButton");
    resImage.addEventListener("click", function() {
        imageShown.style.display = "block";
        mainWrapper.style.display = "none";

    })

    closeButton.addEventListener("click", function() {
        imageShown.style.display = "none";
        mainWrapper.style.display = "flex";
    })


    var translateButton = document.getElementsByClassName("translate")[0];
    var readButton = document.getElementsByClassName("read")[0];
    var previousButton = document.getElementsByClassName("previous")[0];
    var nextButton = document.getElementsByClassName("next")[0];

    translateButton.addEventListener("click", notImplemented)
    readButton.addEventListener("click", notImplemented)
    previousButton.addEventListener("click", notImplemented)
    nextButton.addEventListener("click", notImplemented)



    function notImplemented() {
        alert("This functionnality is not implemented yet")
    }
}