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
    <title>Document</title>
</head>
<body>
    <?php
        $sql = "SELECT name FROM countries;";
        $result = mysqli_query($conn, $sql);
        $resultCheck = mysqli_num_rows($result);

        if ($resultCheck > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $nameWithoutSpace = preg_replace('/\s+/', '', $row['name']);
                echo "Flag " . $row['name'] ." : <img width=\"100px\" src=\"img/w80/flag" . $nameWithoutSpace . ".png\" alt=\"Flag of " . $_GET['name'] . "\"><br>";
            }
        }
        ?>
</body>
</html>