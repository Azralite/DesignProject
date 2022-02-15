<!-- We include the file with the data base credential -->
<?php
include_once 'includes/dbh.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/selectCountryStyle.css">
    <title>Select Your Country</title>
</head>

<body>
    <h1>Select your country</h1>

    <!-- We need to case, the one where we are from vote and the one we are from vote4 -->


    <div class="flagWrapper">

        <?php
        $url = $_GET['url'];

        // SQL request
        $sql = "SELECT name FROM countries;";
        $res = mysqli_query($conn, $sql);
        $resultCheck = mysqli_num_rows($res);

        if ($resultCheck > 0) {

            while ($row = mysqli_fetch_assoc($res)) {
                $nameWithoutSpace = preg_replace('/\s+/', '', $row['name']);
                echo "<div class=\"countryWrapper\"> ";
                echo "<a  href=\" " . $url . ".php?flag=" . $nameWithoutSpace . "\"><img class=\"flag\" src=\"img/w80/flag" . $nameWithoutSpace .  ".png\"></a>";
                echo "<p>" . $row['name'] . "</p></div>";
            }
        }

        ?>

    </div>
</body>

</html>