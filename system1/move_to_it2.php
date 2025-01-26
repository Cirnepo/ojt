<?php
require 'database.php'; // Make sure this is present

if (isset($_GET['id'])) {
    $id = intval($_GET['id']); // Get the ID from the URL safely

    // Move the record to it1
    $sqlMoveToArchive = "INSERT INTO itfinal (title, yearr, author, fdef, fstat) SELECT title, yearr, author, fdef, fstat FROM it1 WHERE id = $id";
    
    if (execute_sql($sqlMoveToArchive)) {
        // If moving is successful, delete from it
        $sqlDelete = "DELETE FROM it1 WHERE id = $id";
        execute_sql($sqlDelete);
    }
}

// Redirect back to the main page or search results
header("Location: lisefIT2.php");
exit();
?>