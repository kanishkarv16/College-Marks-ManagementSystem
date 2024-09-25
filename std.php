<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index Page</title>
    <link rel="stylesheet" href="css/login1.css">
    <link rel="stylesheet" href="./css/homepage.css">
    <link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <style>
        .search{
            width:700px;
            margin-left:325px;
            margin-top:-120px;
            /* margin-bottom:300px; */
        }
        .container-1{
            padding: 0 5%;
        }
        .main {
            display: grid;
            grid-template-rows: 73vh;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            /* padding-left: 20px;
            margin-left: 100px; */
        }
    </style>
</head>
<body>
    <div class="title">
        <span>Result Management System</span>
    </div>
    <div class="container-1">
    <div class="nav">
            <ul>
                <li>
                    <a href="index.html">Home</a>
                </li>
                <li>
                    <a href="login.php">Admin Login</a>
                </li>
                <li>
                    <a href="std.php">Student Result</a>
                </li>
            </ul>  
    </div>
    <div class="main">
        <div class="search">
            <form action="./student.php" method="get">
                <fieldset>
                    <legend class="heading">For Students</legend>

                    <?php
                        include('init.php');

                        $class_result=mysqli_query($conn,"SELECT `name` FROM `class`");
                            echo '<select name="class">';
                            echo '<option selected disabled>Select Class</option>';
                        while($row = mysqli_fetch_array($class_result)){
                            $display=$row['name'];
                            echo '<option value="'.$display.'">'.$display.'</option>';
                        }
                        echo'</select>'
                    ?>

                    <input type="text" name="rn" placeholder="Roll No">
                    <input type="submit" value="Get Result">
                </fieldset>
            </form>
        </div>
    </div>
    </div>
</body>
</html>


