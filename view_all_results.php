
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/home.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="./css/font-awesome-4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type='text/css' href="css/manage.css">
    <title>Dashboard</title>
    <style>
        .logo{
            margin-top:25px;
            width:85px;
            height:auto;
            margin-left:-30px;
        }
        .container{
            width:1500px;
        }
        .main table,
        th,
        td {
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            padding: 8px 25px;
            width: 95%;
        }
        .name{
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            padding: 8px 5px;
            width: 95%;
        }
        caption{
            padding-bottom:15px;
            font-size:25px;
        }
    </style>
</head>
<body>
        
    <div class="title">
        <a href="dashboard.php"><img src="./images/logo2.png" alt="" class="logo"></a>
        <span class="heading">Dashboard</span>
        <a href="logout.php" style="color: white"><span class="fa fa-sign-out fa-2x">Logout</span></a>
    </div>

    <div class="nav">
        <ul>
            <li class="dropdown" onclick="toggleDisplay('1')">
                <a href="" class="dropbtn">Classes &nbsp
                    <span class="fa fa-angle-down"></span>
                </a>
                <div class="dropdown-content" id="1">
                    <a href="add_classes.php">Add Class</a>
                    <a href="manage_classes.php">Delete Class</a>
                    <a href="view_classes.php">View Classes</a>
                </div>
            </li>
            <li class="dropdown" onclick="toggleDisplay('2')">
                <a href="#" class="dropbtn">Students &nbsp
                    <span class="fa fa-angle-down"></span>
                </a>
                <div class="dropdown-content" id="2">
                    <a href="add_students.php">Add Students</a>
                    <a href="manage_students.php">Delete Students</a>
                    <a href="view_students.php">View Students</a>
                </div>
            </li>
            <li class="dropdown" onclick="toggleDisplay('3')">
                <a href="#" class="dropbtn">Results &nbsp
                    <span class="fa fa-angle-down"></span>
                </a>
                <div class="dropdown-content" id="3">
                    <a href="add_results.php">Add Results</a>
                    <a href="manage_results.php">Manage Results</a>
                    <a href="view_all_results.php">View All Results</a>
                    <a href="view_results.php">View Results</a>
                    <a href="performance.php">Performance Analysis</a>
                </div>
            </li>
        </ul>
    </div>

    <div class="main">
        <div class="container">
        <?php
            include('init.php');
            include('session.php');

            $sql = "SELECT `name`, `rno`, `class`, `p1`, `p2`, `p3`, `p4`, `p5`,  `p6`, `sgpa` FROM `results`";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
               echo "<table>
                <caption>View All Results</caption>
                <tr>
                <th>NAME</th>
                <th>ROLL NO</th>
                <th>CLASS</th>
                <th>CO<br>(19PC1IT03)</th>
                <th>EEA<br>(19HS1MG02)</th>
                <th>FLAT<br>(19PC1CS05)</th>
                <th>JAVA<br>(19PC1IT02)</th>
                <th>PSQT<br>(19BS1MT11)</th>
                <th>SE<br>(19PC1CS06)</th>
                <th>SGPA</th>
                </tr>";

                while($row = mysqli_fetch_array($result))
                  {
                    echo "<tr>";
                    echo "<td class='name'>" . $row['name'] . "</td>";
                    echo "<td>" . $row['rno'] . "</td>";
                    echo "<td>" . $row['class'] . "</td>";
                    echo "<td>" . $row['p1'] . "</td>";
                    echo "<td>" . $row['p2'] . "</td>";
                    echo "<td>" . $row['p3'] . "</td>";
                    echo "<td>" . $row['p4'] . "</td>";
                    echo "<td>" . $row['p5'] . "</td>";
                    echo "<td>" . $row['p6'] . "</td>";
                    echo "<td>" . $row['sgpa'] . "</td>";
                    // echo "<td>" . $row['percentage'] . "</td>";
                    echo "</tr>";
                  }

                echo "</table>";
            } else {
                echo "0 Students";
            }
        ?>
        </div>
    </div>
</body>
</html>