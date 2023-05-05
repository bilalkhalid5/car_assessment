<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include('templates/head.php'); ?>
</head>
<style>
    <?php include('assests/style.css');?>
</style>

<body>
    <?php 

        if (isset($_GET['name'])) {
            if (isset($_GET['name']) == 'single-car.php') {
                include('single-car.php');
            }
        }

        else{
            include('content.php');
        }
    ?>
</body>
<?php include('templates/scripts.php'); ?>

<script>
    <?php include('assests/car_displayer.js'); ?>
</script>

</html>