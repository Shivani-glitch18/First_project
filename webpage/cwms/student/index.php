<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css
" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
    <br>
    <h1><center>List of Students Enrolled</center></h1>
    <br>
    <table class="table">
        <thead>
			<tr>
            <th>Student Id</th>
            <th>Student Name</th>
            <th>Roll No</th>
            <th>Student Email</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Class</th>
            <th>Reg Date</th>
			</tr>
		</thead>

        <tbody>
            <?php
            $servername = "localhost";
			$username = "root";
			$password = "";
			$database = "srms";

			// Create connection
			$connection = new mysqli($servername, $username, $password, $database);

            // Check connection
			if ($connection->connect_error) {
				die("Connection failed: " . $connection->connect_error);
			}

            // read all row from database table
			$sql = "SELECT * FROM tblstudents";
			$result = $connection->query($sql);

            if (!$result) {
				die("Invalid query: " . $connection->error);
			}

            // read data of each row
			while($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>" . $row["StudentId"] . "</td>
                    <td>" . $row["StudentName"] . "</td>
                    <td>" . $row["RollId"] . "</td>
                    <td>" . $row["StudentEmail"] . "</td>
                    <td>" . $row["Gender"] . "</td>
                    <td>" . $row["DOB"] . "</td>
                    <td>" . $row["ClassId"] . "</td>
                    <td>" . $row["RegDate"] . "</td>
                    
                </tr>";
            }

            $connection->close();
            ?>
        </tbody>
    </table>
</body>
</html>