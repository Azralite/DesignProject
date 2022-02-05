<!-- We include the file with the data base credential -->
<?php
    include_once 'includes/dbh.php';
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

        <?php
        echo "<h2>" . $_GET['name'] . "</h2>";
        echo "<div id=\"wrapperCountry\">";
        $nameWithoutSpace = preg_replace('/\s+/', '', $_GET['name']);
        $nameWithoutthing = preg_replace('/\'/', '', $_GET['name']);
        ?>

        <?php
        // We select all the information from the country we choose
        $sql = "SELECT * FROM countries WHERE name='" . $_GET['name'] . "';";
        echo "<h1>".$sql."</h1>";
        
        $result = mysqli_query($conn, $sql);
        $resultCheck = mysqli_num_rows($result);

        if ($resultCheck > 0) {
            echo "<div id=\"map\"> <img width=\"100%\" src=\"img/maps/map" . $_GET['name'] . ".png\" alt=\"Map of " . $_GET['name'] . "\"></div>";
            echo "<div class=\"country\"> <ul>";
            while ($row = mysqli_fetch_assoc($result)) {
                // var_dump($row);
                // And we display the information here
                echo "<li>Population :" . $row['nb_hab'] . "</li>";
                echo "<li>Language : " . $row['language'] . "</li>";
                echo "<li>Surface : " . $row['area'] . "</li>";
                echo "<li>Capital : " . $row['capital'] . "</li>";
                echo "<li>Flag : <img width=\"100px\" src=\"img/w80/flag" . $nameWithoutSpace . ".png\" alt=\"Flag of " . $_GET['name'] . "\"></li>";
            }
            echo "</ul></div></div>";
        }
        ?>




        <!-- Here we have all the options for the user
    But for now they link nowhere, TODO -->        

        <ul id="chooseCountry">
            <a href="#">
                <li id="country">Conversation</li>
            </a>
            <a href="#">
                <li id="country">Greeting</li>
            </a>
            <a href="#">
                <li id="country">Shopping</li>
            </a>
            <a href="../tinder.html">
                <li id="country">Dining</li>
            </a>
            <a href="#">
                <li id="country">Business</li>
            </a>
            <a href="#">
                <li id="country">Tradition</li>
            </a>
            <a href="#">
                <li id="country">Public</li>
            </a>
            <a href="#">
                <li id="country">Visiting</li>
            </a>
        </ul>
    </div>


</body>

</html>