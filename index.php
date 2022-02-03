<!-- We include the file with the data base credential -->
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
        <!-- The img is now in the css backgound -->
        <!-- <img class="imgBackground" src="img/maps/mapWorld3.png" alt="map of the world"> -->

    
        <h2>Select a country</h2>

        <?php
            // We query the name of all the country in our db 
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

    </div>

    <!-- Here I thougt of using google map API to select the country
We can also click on an image, get the mouse coordonate and use nominatim reverse API to find the country -->
    <!-- <iframe width="600" height="450" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB8aDNvt5R6Bzj7E6REuLOcysDPM02Y_s8&q=Space+Needle,Seattle+WA"> -->
</iframe>
</body>

</html>