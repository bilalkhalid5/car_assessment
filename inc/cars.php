<?php
    // REST API to return all cards data to car_displayer.js

    include('../connection.php');

    // Getting data for all vehicles 
    $vehicles_query = "SELECT v.id, v.stock, v.mileage, v.vehicle_name, v.retail_price, v.sales_price, v.condition, v.year, m.model, c.company_name, i.image_name, t.name 
    FROM vehicles v 
    JOIN models m ON v.model_id = m.id 
    JOIN companies c ON v.company_id = c.id
    JOIN types t ON v.vehicle_type = t.id
    LEFT JOIN images i ON v.id = i.vehicle_id
    GROUP BY v.id";  

    $vehicles_data = $mysqli->query($vehicles_query)->fetch_all(MYSQLI_ASSOC);

    $mysqli->close();

    echo json_encode($vehicles_data);

    die();

?>