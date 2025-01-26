<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Literature Search Engine</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="lisef.css">
</head>

<body>

    <div class="container mt-5">
        <h1>Literature Search Engine</h1>
        <h2>We only provide existing studies from the campus.</h2>
        <h2>Category: Information Technology</h2>
        <a href="lisef.php"><button class="btn btn-secondary mb-3">Change Category</button></a>

        <!-- Search Form -->
        <form action="lisefIT.php" method="post" class="d-flex mb-4">
            <div class="me-3">
                <label>Year:</label>
                <select name="year" class="form-select">
                    <option value="">All</option>
                    <?php
                    $currentYear = date("Y");
                    for ($i = $currentYear; $i >= $currentYear - 5; $i--) {
                        echo "<option value=\"$i\">$i</option>";
                    }
                    ?>
                </select>
            </div>
            <div class="me-3">
                <label>Search:</label>
                <input type="text" name="search" placeholder="Enter keyword or author..." class="form-control">
            </div>
            <div>
                <input type="submit" name="find" value="FIND" class="btn btn-primary">
            </div>
        </form>

        <div class="card">
            <div class="card-body">
                <h5>Search Results:</h5>
                <table class="table table-striped">
                    <thead>
                        <tr>
                        <th>Title</th>
                            <th>Year</th>
                            <th style='background-color: #c5c6c7; color: black;'>Author</th>
                            <th style='background-color: #83f283; color: black;'>Manuscript</th>
                            <th style='background-color: #83f283; color: black;'>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $conn = mysqli_connect("localhost", "root", "", "comsci");

                        if (!$conn) {
                            die("Connection failed: " . mysqli_connect_error());
                        }
                        
                        $search = isset($_POST["search"]) ? $_POST["search"] : "";
                        $year = isset($_POST["year"]) ? $_POST["year"] : "";
                        
                        // Start building the SQL query
                        $query = "SELECT id, title, yearr, author, hb, hbdate FROM hb WHERE 1=1";
                        
                        // Add conditions based on the search parameters
                        $types = '';
                        $params = [];
                        
                        if ($year) {
                            $query .= " AND yearr = ?";
                            $types .= 's'; // Assuming year is a string; use 'i' if it's an integer
                            $params[] = $year;
                        }
                        
                        if ($search) {
                            $query .= " AND (title LIKE ? OR author LIKE ? OR hb LIKE ? OR hbdate LIKE ?)";
                            $searchTerm = "%" . $search . "%";
                            // Bind the search term 4 times
                            for ($i = 0; $i < 4; $i++) {
                                $types .= 's'; // Type for search term
                                $params[] = $searchTerm;
                            }
                        }
                        
                        // Prepare the statement
                        $stmt = $conn->prepare($query);
                        if (!$stmt) {
                            die("Error preparing the statement: " . $conn->error);
                        }
                        
                        // Bind the parameters if there are any
                        if ($types) {
                            $stmt->bind_param($types, ...$params);
                        }
                        
                        // Execute the statement
                        $stmt->execute();
                        
                        // Bind the result variables
                        $stmt->bind_result($id, $title, $yearr, $author, $hb, $hbdate);
                        $foundResults = false;
                        
                        // Fetch results and display them
                        while ($stmt->fetch()) {
                            $foundResults = true;
                            echo "<tr>";
                            echo "<td>" . htmlspecialchars($title) . "</td>";
                            echo "<td style='background-color: #ffffe0; color: black;'>" . htmlspecialchars($yearr) . "</td>";
                            echo "<td style='background-color: #c5c6c7; color: black;'>" . htmlspecialchars($author) . "</td>";
                            echo "<td style='background-color: #83f283; color: black;'>" . htmlspecialchars($hb) . "</td>";
                            echo "<td style='background-color: #83f283; color: black;'>";
                            echo "<form action='update_status_it1.php' method='post' class='d-inline'>";
                        // For Status Option
                            echo "<input type='hidden' name='id' value='" . htmlspecialchars($id) . "'>";
                            echo "<select name='status' onchange='this.form.submit()' class='form-select d-inline' style='width: auto;'>";
                            echo "<option value='Passed'" . ($hbdate == "Passed" ? " selected" : "") . ">Passed</option>";
                            echo "<option value='Failed'" . ($hbdate == "Failed" ? " selected" : "") . ">Failed</option>";
                            echo "</select>";
                            echo "</form>";
                        // Confirmation and Moving To the Next Stage
                            echo "</td>";
                            echo "<td><button type='button' class='btn btn-outline-primary' onclick=\"alert('Please Retry!')\">Save</button></td>";
                            echo "</tr>";
                        }
                        
                        // If no results are found, show a message
                        if (!$foundResults) {
                            echo "<tr><td colspan='6' class='text-center'>No results found.</td></tr>";
                        }
                        
                        // Close the statement
                        $stmt->close();
                        
                        // Close the database connection
                        $conn->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
