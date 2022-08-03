<html>
	<head>
		<title>Google Map</title>
		<meta name="viewport" content="initial-scale=1.0">
		<meta charset="utf-8">
		<style>		  
		  #map { 
			height: 300px;	
			width: 600px;			
		  }		  
		</style>		
	</head>	
	<body>		
		<div style="padding:10px">
			<div id="map"></div>
		</div>
		
		<script type="text/javascript">
		var map;
	
		function initMap() {							
			var latitude = <% 
                        
String t1=request.getParameter("lat").trim();
		  		String t2=request.getParameter("lng").trim();
				//out.println(t1+","+t2);
                                out.println(t1);
			
%> // YOUR LATITUDE VALUE
			var longitude =<% out.println(t2);%>
                            77.498145; // YOUR LONGITUDE VALUE
			
			var myLatLng = {lat: latitude, lng: longitude};
			
			map = new google.maps.Map(document.getElementById('map'), {
			  center: myLatLng,
			  zoom: 14					
			});
					
			var marker = new google.maps.Marker({
			  position: myLatLng,
			  map: map,
			  //title: 'Hello World'
			  
			  // setting latitude & longitude as title of the marker
			  // title is shown when you hover over the marker
			  title: latitude + ', ' + longitude 
			});			
		}
		</script>
		<script src="images/https://maps.googleapis.com/maps/api/js?key=AIzaSyAWjQ21aNnbryUxEuV8qPFrKGaUtpULauM&callback=initMap"
		async defer></script>
	</body>	
</html>