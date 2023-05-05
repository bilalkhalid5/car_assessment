<?php

include('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$email = $_POST['email'];
	$password = $_POST['password'];

	$query = "SELECT * FROM users WHERE email='$email' AND password='$password'";
	$result = $mysqli->query($query);

	if ($result->num_rows > 0) {
		session_start();
		$row = $result->fetch_assoc(); // fetch the result as an associative array
		$_SESSION['user_id'] = $row['id'];
		header('Location: index.php');
		exit();
	} else {
		echo "Invalid email or password";
	}
}
?>