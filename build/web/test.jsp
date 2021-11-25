<html>
<head>
<title>Google Map Hello World Example</title>
<style type="text/css">
div#map_container{
    width:100%;
    height:350px;
}
</style>
<script type="text/javascript" 
   src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script type="text/javascript">
  function loadMap() {
    var latlng = new google.maps.LatLng(20.989826, 105.933950);
    var myOptions = {
      zoom: 8,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
    
    var marker = new google.maps.Marker({
      position: latlng, 
      map: map, 
      title:"Quang Hài Giá"
    }); 
  
  }
</script>
</head>

<body >
                            <div id="map_container" onload="loadMap()" onload="loadMap()" style="height:385px; width:100%; margin-bottom: 70px;"></div>

</body>

</html>