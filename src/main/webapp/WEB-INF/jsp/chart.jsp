<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript">
  
  window.onload = function () {
	var API_URL = "http://192.168.1.112:8080/DigitalScore/score";
	  
	$(document).ready(function(){
		$.ajax({
			type: 'GET',
			url:API_URL,
			success:function(data){
				
				$(entries).html('');
				
				var chart = new CanvasJS.Chart("entries", {

				      title:{
				        text: "Project Scores"              
				      },
				      data: [//array of dataSeries              
				        { //dataSeries object

				         /*** Change type "column" to "bar", "area", "line" or "pie"***/
				         type: "column",
				         dataPoints: data
				       }
				       ]
				     });

				    chart.render();					
				
				
			
			}
		
		
		});
	});
	
	
	
    
  }
  </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</head>
<body>
  <div id="entries" style="height: 300px; width: 100%;">
  </div>
</body>
</html>