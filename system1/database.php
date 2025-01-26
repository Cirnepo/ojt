<?php
function getConnection() {
    $conn = mysqli_connect("localhost", "root", "", "comsci");

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    return $conn;
}

function execute_sql($sql) {
    $conn = getConnection();
    if ($conn) {
        if (mysqli_query($conn, $sql)) {
            mysqli_close($conn);
            return true;
        } else {
            echo "Error: " . mysqli_error($conn);
            mysqli_close($conn);
            return false;
        }
    }
    return false;
}
?>
