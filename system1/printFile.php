<?php
// Get the file name from the URL parameter
$fileName = isset($_GET['file']) ? $_GET['file'] : '';

// Set the full path using the server document root
$fullPath = 'D:/Program Files/Xampp/htdocs/System/uploads/' . $fileName;

// Make sure the file exists
if (file_exists($fullPath)) {
    // Display the file in an iframe for printing
    echo '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Print File</title>
        <style>
            body { margin: 0; }
            iframe { width: 100%; height: 100vh; border: none; }
        </style>
    </head>
    <body>
        <iframe src="' . htmlspecialchars($fullPath) . '" onload="window.print(); window.onafterprint = function() { window.close(); }"></iframe>
    </body>
    </html>';
} else {
    echo "File not found.";
}
?>
