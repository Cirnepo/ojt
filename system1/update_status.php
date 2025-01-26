<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $conn = mysqli_connect("localhost", "root", "", "comsci");

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $id = $_POST['id'];
    $status = $_POST['status'];

    // Prepare the update statement
    $stmt = $conn->prepare("UPDATE it SET pstat = ? WHERE id = ?");
    $stmt->bind_param('si', $status, $id);

    if ($stmt->execute()) {
        // Optionally, set a session message to notify success
        // session_start();
        // $_SESSION['message'] = "Status updated successfully!";
    } else {
        // Handle error
        echo "Error updating status: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();

    // Redirect back to the previous page
    header("Location: lisefIT.php");
    exit();
}
?>
