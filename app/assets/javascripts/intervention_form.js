var author = document.getElementsByClassName("author_i")[0];
var customer = document.getElementsByClassName("customer_i")[0];
var customerData = document.getElementsByClassName("customer_s")[0];
var building = document.getElementsByClassName("building_i")[0];
var battery = document.getElementsByClassName("battery_i")[0];
var column = document.getElementsByClassName("column_i")[0];
var elevator = document.getElementsByClassName("elevator_i")[0];
var description = document.getElementsByClassName("description_i")[0];
var submit = document.getElementsByClassName("submit_i")[0];


// building.style.display = "none";
// battery.style.display = "none";
// column.style.display = "none";
// elevator.style.display = "none";
// description.style.display = "none";


// building.style.display = "none"; // second dropdown is disable while first dropdown is empty
// function loadBuilding() {
//     if building.
// }

// function loadBuilding() {
//   	var customerDatav = customerData.val();
//   	if (customerDatav == ''){
//   		building.style.display = "none";
//   	} else {
//   		building.style.display = "inline-block";
//   	}
  	// $.ajax({
	//     url: "/tasks",
	//     method: "GET",  
	//     dataType: "json",
	//     data: {customer: customer},
	//     error: function (xhr, status, error) {
	//       	console.error('AJAX Error: ' + status + error);
	//     },
	//     success: function (response) {
	//       	console.log(response);
	//       	var tasks = response["tasks"];
	//       	building.empty();

	//       	building.append('<option>Select Task</option>');
	//       	for(var i = 0; i < tasks.length; i++){
	//       		building.append('<option value="' + tasks[i]["id"] + '">' +tasks[i]["name"] + '</option>');
	//       	}
	//     }
  	// });
// };

loadBuilding();