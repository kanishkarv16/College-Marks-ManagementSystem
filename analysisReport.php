
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
        .main table,
        th,
        td {
            border-collapse: collapse;
            text-align: center;
            table-layout: fixed;
            padding: 8px 25px;
            width: 85%;
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
        <?php
            include('init.php');
            include('session.php');
            if(!isset($_GET['class']))
            $class=null;
        else
            $class=$_GET['class'];
            $result = mysqli_query($conn, "SELECT `Subject`, `code`, `Og`, `aa`, `a`, `bb`, `b`, `c`, `pass`, `fail` FROM `performance` where `class` = '$class'");

            if (mysqli_num_rows($result) > 0) {
               echo "<table>
                <caption>View Students</caption>
                <tr>
                <th>SUBJECT</th>
                <th>CODE</th>
                <th>O  Grade</th>
                <th>A+  Grade</th>
                <th>A  Grade</th>
                <th>B+  Grade</th>
                <th>B  Grade</th>
                <th>C  Grade</th>
                <th>PASS</th>
                <th>FAIL</th>
                </tr>";

                while($row = mysqli_fetch_array($result))
                  {
                    echo "<tr>";
                    echo "<td>" . $row['Subject'] . "</td>";
                    echo "<td>" . $row['code'] . "</td>";
                    echo "<td>" . $row['Og'] . "</td>";
                    echo "<td>" . $row['aa'] . "</td>";
                    echo "<td>" . $row['a'] . "</td>";
                    echo "<td>" . $row['bb'] . "</td>";
                    echo "<td>" . $row['b'] . "</td>";
                    echo "<td>" . $row['c'] . "</td>";
                    echo "<td>" . $row['pass'] . "</td>";
                    echo "<td>" . $row['fail'] . "</td>";
                    echo "</tr>";
                  }

                echo "</table>";
            } else {
                echo "0 Students";
            }
        ?>
    </div>
</body>
</html>
