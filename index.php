<?php
    include_once 'includes/dbh.inc.php';
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="styles/styles.css">
    <title>Cultural Map</title>
</head>

<body>


    
    <div id="wrapper">
        <!-- <img class="imgBackground" src="img/maps/mapWorld3.png" alt="map of the world"> -->
        <h1>Cutural Map</h1>
    
        <h2>Select a country</h2>

        <?php
            $sql = "SELECT name FROM countries;";
            $result = mysqli_query($conn, $sql);
            $resultCheck = mysqli_num_rows($result);

            if ($resultCheck > 0) {
                echo "<ul id=\"chooseCountry\">";
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<a href=\"country.php?name=" . $row['name'] . "\"><li id=\"country\"> ". $row['name'] .  "</li></a>";
                }
                echo "</ul>";
            }
        ?>
    
       <!--  <ul id="chooseCountry">
            <a href="pays/france.html"><li class="country">France</li></a>
            <a href="pays/england.html"><li class="country">England</li></a>
            <a href="pays/spain.html"><li class="country">Spain</li></a>
            <a href="pays/italy.html"><li class="country">Italy</li></a>
            <a href="pays/germany.html"><li class="country">Germany</li></a>
            <a href="pays/netherlands.html"><li class="country">Netherlands</li></a>
        </ul> -->
    </div>

    <!-- <iframe width="600" height="450" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB8aDNvt5R6Bzj7E6REuLOcysDPM02Y_s8&q=Space+Needle,Seattle+WA"> -->
</iframe>
</body>

</html>