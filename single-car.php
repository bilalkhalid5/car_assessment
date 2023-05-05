<?php

  include("connection.php");

  $carId = intval($_GET['id']);

  $features_query = "SELECT vehicles.*, features.*
  FROM vehicles
  LEFT JOIN features ON vehicles.id = features.vehicle_id
  WHERE vehicles.id = $carId";

  $specs_query = "SELECT vehicles.*, morespecs.*
  FROM vehicles
  LEFT JOIN morespecs ON vehicles.id = morespecs.vehicle_id
  WHERE vehicles.id = $carId";

  $resultfeatures = $mysqli->query($features_query);
  $resultspecs = $mysqli->query($specs_query);

  $carData = $resultfeatures->fetch_assoc();

  $mysqli->close();

?>

<main>
  <div class="prod__detail py-5 px-sm-4">
    <div class="container-lg">
      <div class="row">
        <div class="col-lg-7">
          <div class="prod_slideshow mb-5">
            <div class="slide__image">
              <img class="w-100" src="./assests/images/image-1.jpg" alt="...">
            </div>
          </div>
          <div class="prod__pricing--details p-3 d-lg-none d-block">
            <h3 class="mb-3 fw-bold">Pricing Details</h3>
            <div class="row py-3 align-items-end">
              <div class="col-xl-5 col-6">
                <h5 class="mb-0 fw-medium">Retail Price</h5>
              </div>
              <div class="col-xl-7 col-6">
                <h4 class="text-end mb-0 fw-light"><?php echo "$".$carData['retail_price']; ?></h4>
              </div>
            </div>
            <div class="dotted__divider"></div>
            <div class="row py-3 align-items-end">
              <div class="col-xl-5 col-6">
                <h4 class="mb-0 fw-bold">Long Price</h4>
              </div>
              <div class="col-xl-7 col-6">
                <h4 class="text-end mb-0 fw-bold"><?php echo "$".$carData['retail_price']; ?></h4>
              </div>
            </div>
            <div class="row prod__cta--buttons g-1 mt-1">
              <div class="col-12 p-1">
                <button class="w-100 btn btn-sm btn-primary">Calculate Payments</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Details</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Incentives</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Concierge</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Compare</button>
              </div>
              <div class="col-12 p-1">
                <button class="w-100 btn btn-sm btn-primary">Get Pre-approved Now</button>
              </div>
            </div>
            <div class="history__report--cta my-2">
              <a href="javascript:void(0)">
                <img class="w-100" src="./assests/images/carfax.png" alt="">
              </a>
            </div>
            <small class="d-block">*Not all buyers will qualify. See dealer for details</small>
          </div>
          <div class="prod__about my-5 d-lg-none d-block">
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-gas-pump fa-2x"></i>
              </div>
              <div class="s__text">
                <p>
                  <span>23 MPG</span>
                  <span>City</span>
                </p>
                <p>
                  <span>31 MPG</span>
                  <span>Hwy</span>
                </p>
              </div>
            </div>
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-tachometer-alt fa-2x"></i>
              </div>
              <div class="s__text">
                <p>
                  <?php foreach($resultspecs as $row) : ?>
                  <span><?php echo $row['extraFeature_name']; ?></span>
                  <?php endforeach; ?>
                </p>
              </div>
            </div>
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-palette fa-2x"></i>
              </div>
              <div class="s__text">
                <p>Exterior Color: <?php echo $carData['exterior_color']; ?></p>
                <p>Interior Color: <?php echo $carData['interior_color']; ?></p>
              </div>
            </div>
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-clipboard-list fa-2x"></i>
              </div>
              <div class="s__text">
                <p>
                  <span>Condition: <?php echo $carData['condition']; ?></span>
                  <span>Mileage: <?php echo $carData['mileage']; ?></span>
                  <span>Stock: <?php echo $carData['stock']; ?></span>
                  <span>VIN: <?php echo $carData['VIN']; ?></span>
                </p>
                <p class="fill-red">Dealer Lot: <?php echo $carData['dealer_dot']; ?></p>
              </div>
            </div>
          </div>
          <div class="prod__features--detail">
            <h2 class="mb-4">Options & Features</h2>
            <ul class="features__list">
              <?php foreach($resultfeatures as $row) : ?>
              <li><?php echo $row['f_name']; ?></li>
              <?php endforeach; ?>
            </ul>
          </div>
        </div>
        <div class="col-lg-5 ps-lg-5 d-lg-block d-none">
          <div class="prod__pricing--details p-3">
            <h3 class="mb-3 fw-bold">Pricing Details</h3>
            <div class="row py-3 align-items-end">
              <div class="col-xl-5 col-6">
                <h5 class="mb-0 fw-medium">Retail Price</h5>
              </div>
              <div class="col-xl-7 col-6">
                <h4 class="text-end mb-0 fw-light">
                  <p><?php echo "$".$carData['retail_price']; ?></p>
                </h4>
              </div>
            </div>
            <div class="dotted__divider"></div>
            <div class="row py-3 align-items-end">
              <div class="col-xl-5 col-6">
                <h4 class="mb-0 fw-bold">Long Price</h4>
              </div>
              <div class="col-xl-7 col-6">
                <h4 class="text-end mb-0 fw-bold"><?php echo "$".$carData['retail_price']; ?></h4>
              </div>
            </div>
            <div class="row prod__cta--buttons g-1 mt-1">
              <div class="col-12 p-1">
                <button class="w-100 btn btn-sm btn-primary">Calculate Payments</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Details</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Incentives</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Concierge</button>
              </div>
              <div class="col-6 p-1">
                <button class="w-100 btn btn-sm btn-primary">Compare</button>
              </div>
              <div class="col-12 p-1">
                <button class="w-100 btn btn-sm btn-primary">Get Pre-approved Now</button>
              </div>
            </div>
            <div class="history__report--cta my-2">
              <a href="javascript:void(0)">
                <img class="w-100" src="./assests/images/carfax.png" alt="">
              </a>
            </div>
            <small class="d-block">*Not all buyers will qualify. See dealer for details</small>
          </div>
          <div class="prod__about my-5">
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-gas-pump fa-2x"></i>
              </div>
              <div class="s__text">
                <p>
                  <span>23 MPG</span>
                  <span>City</span>
                </p>
                <p>
                  <span>31 MPG</span>
                  <span>Hwy</span>
                </p>
              </div>
            </div>
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-tachometer-alt fa-2x"></i>
              </div>
              <div class="s__text">
                <p>
                  <?php foreach($resultspecs as $row) : ?>
                  <span><?php echo $row['extraFeature_name']; ?></span>
                  <?php endforeach; ?>
                </p>
              </div>
            </div>
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-palette fa-2x"></i>
              </div>
              <div class="s__text">
                <p>Exterior Color: <?php echo $carData['exterior_color']; ?></p>
                <p>Interior Color: <?php echo $carData['interior_color']; ?></p>
              </div>
            </div>
            <div class="single">
              <div class="s__icon">
                <i class="fas fa-clipboard-list fa-2x"></i>
              </div>
              <div class="s__text">
                <p>
                  <span>Condition: <?php echo $carData['condition']; ?></span>
                  <span>Mileage: <?php echo $carData['mileage']; ?></span>
                  <span>Stock#: <?php echo $carData['stock']; ?></span>
                  <span>VIN: <?php echo $carData['VIN']; ?></span>
                </p>
                <p class="fill-red">Dealer Lot: <?php echo $carData['dealer_dot']; ?></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>