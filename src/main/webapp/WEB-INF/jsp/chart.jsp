<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script type="text/javascript">
	
		var API_URL = "http://localhost:8080/DigitalScore/score";
		
		$(document).ready(function(){
			$.ajax({
				type: 'GET',
				url:API_URL,
				success:function(data){
					$(entries).html('');
					
					$('#entries').append('<table border="2"><tr><td colspan="1">Project Name</td><td>Avg Score (out of 10)</td></tr>');
				
					for (i = 0; i < data.length; i++) { 
						$('#entries').append('<h1>' + data[i].projectName + ' -> ' + data[i].score + '</h1>');
					}
					
					$('#entries').append('</table>');
				}
			
			});
		});
	</script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</head>
<body>
  <div id="entries" style="height: 300px; width: 100%;">
  </div>
</body>
</html>