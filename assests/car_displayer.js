// Script to display cars from the database
// Used Template literals (Template strings)
$(document).ready(function () {

  var htmlContent = "";

  $.ajax({
    method: "GET",
    dataType: "json",
    url: "inc/cars.php",

    success: function (carJson) {
      carJson.forEach(function (carData) {

        $filename = carData.image_name;

        htmlContent += `<div id="div-card" class="col-12 col-sm-6 col-md-4 col-xl-3">
                <a href="index.php?id=${carData.id}&name="single.php" class="prod__single">
                  <div class="card rounded-0">
                    <div class="card-head p-1">
                      <img src="./assests/images/image-1.jpg" class="card-img-top" alt="...">
                      <p class="price__tag">$${carData.retail_price}</p>
                    </div>
                    <div class="card-body pt-0">
                      <small class="prod_brand">${carData.vehicle_name}</small>
                      <h5 class="card-title">2023 ${carData.name} </h5>
                      <div class="video__btn mb-2">
                        <img src="./assests/images/video_btn_red.png" alt="">
                      </div>
                      <div class="row prod__desc">
                        <div class="col-6">
                          <small>Condition:</small>
                          <small>Retail Price:</small>
                          <small>Stock #:</small>
                          <small>Mileage:</small>
                        </div>
                        <div class="col-6">
                          <small>${carData.stock}</small>
                          <small>$${carData.retail_price}</small>
                          <small>${carData.stock}</small>
                          <small>${carData.mileage}</small>
                        </div>
                      </div>
                      <div class="row card__cta--buttons g-1 mt-1">
                        <div class="col-12 p-1">
                          <button class="w-100 btn btn-sm btn-outline-primary">Calculate Payments</button>
                        </div>
                        <div class="col-6 p-1">
                          <button class="w-100 btn btn-sm btn-outline-primary">Details</button>
                        </div>
                        <div class="col-6 p-1">
                          <button class="w-100 btn btn-sm btn-outline-primary">Incentives</button>
                        </div>
                        <div class="col-6 p-1">
                          <button class="w-100 btn btn-sm btn-outline-primary">Concierge</button>
                        </div>
                        <div class="col-6 p-1">
                          <button class="w-100 btn btn-sm btn-outline-primary">Compare</button>
                        </div>
                        <div class="col-12 p-1">
                          <button class="w-100 btn btn-sm btn-outline-primary">Get Pre-approved Now</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>`
      });


      // Displaying output on frontend
      $('#car-cards').html(htmlContent);
    }
  });
});