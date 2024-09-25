<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/student.css">
    <title>Result</title>
    <style>
        .main {
            font-size: 20px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            padding: 60px 5%;
        }
        .container {
            margin: 5% 10%;
            padding-left:40px;
        }
        .PP{
            height: auto;
            width:140px;
            position: relative;
            margin-left:700px;
            margin-top:-95px;
        }
        .details{
            
            padding-left:140px;
        }
    </style>
</head>
<body>
    <?php
        include("init.php");

        if(!isset($_GET['class']))
            $class=null;
        else
            $class=$_GET['class'];
        $rn=$_GET['rn'];
        $name_sql=mysqli_query($conn,"SELECT `name` FROM `student_1` WHERE `rno`='$rn' and `class_name`='$class'");
        while($row = mysqli_fetch_assoc($name_sql))
        {
        $name = $row['name'];
        }

        $result_sql=mysqli_query($conn,"SELECT `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `sgpa`, `Img` FROM `results` WHERE `rno`='$rn' and `class`='$class'");
        while($row = mysqli_fetch_assoc($result_sql))
        {
            $p1 = $row['p1'];
            $p2 = $row['p2'];
            $p3 = $row['p3'];
            $p4 = $row['p4'];
            $p5 = $row['p5'];
            $Img = $row['Img'];
            $mark = $row['p6'];
            $percentage = $row['sgpa'];
        }
        if(mysqli_num_rows($result_sql)==0){
            echo "no result";
            exit();
        }
    ?>

    <div class="container name">
        <div class="details">
            <span>Name:</span> <?php echo $name ?> <br>
            <span>Class:</span> <?php echo $class; ?> <br>
            <span>Roll No:</span> <?php echo $rn; ?> <br>
            <?php echo '<img src = "'.$Img.'" class = "PP">';?>
        </div>
        <div class="img">
        
        </div>
        <div class="main">
            <div class="s1">
                <p>Subjects</p>
                <p>19PC1IT03 - CO</p>
                <p>19HS1MG02 - EEA</p>
                <p>19PC1CS05 - FLAT</p>
                <p>19PC1IT02 - JP</p>
                <p>19BS1MT11 - PSQT</p>
                <p>19PC1CS06 - SE</p>
            </div>
            <div class="s2">
                <p>Grade Points</p>
                <?php echo '<p class="mark">'.$p1.'</p>';?>
                <?php echo '<p class="mark">'.$p2.'</p>';?>
                <?php echo '<p class="mark">'.$p3.'</p>';?>
                <?php echo '<p class="mark">'.$p4.'</p>';?>
                <?php echo '<p class="mark">'.$p5.'</p>';?>
                <?php echo '<p class="mark">'.$mark.'</p>';?>

            </div>
        </div>

        <div class="result">
            <?php echo '<p>SGPA :&nbsp'.$percentage.'</p>';?>
        </div>

        <div class="button">
            <button onclick="window.print()">Print Result</button>
        </div>
    </div>
</body>
</html>