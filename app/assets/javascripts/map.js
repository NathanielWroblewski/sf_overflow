function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyB0HosT5WJ_tC6BiqwQdmtdb5tXGWdu7xc&sensor=false&callback=initialize";
  document.body.appendChild(script);
}

window.onload = loadScript;
var map;
var MY_MAPTYPE_ID = 'custom_style';

function initialize() {

  var featureOpts = [
    {
      stylers: [
        { hue: 'normal' },
        { visibility: 'simplified' },
        { gamma: 0 },
        { weight: 0 }
      ]
    },
    {
      elementType: 'labels',
      stylers: [
        { visibility: 'on' }
      ]
    },
    {
      featureType: 'water',
      stylers: [
        { color: 'ocean' }
      ]
    }
  ];

  var mapOptions = {
    zoom: 14,
    center: new google.maps.LatLng(37.79221,-122.406141),
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
    },
    mapTypeId: MY_MAPTYPE_ID
  };

  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  var styledMapOptions = {
    name: 'Custom Style'
  };

  var customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
  
  var goldStar = {
    path: 'M 125,5 155,90 245,90 175,145 200,230 125,180 50,230 75,145 5,90 95,90 z',
    fillColor: "red",
    fillOpacity: 0.8,
    scale: 0.1,
    strokeColor: "black",
    strokeWeight: 1
  };

  var dbc = new google.maps.Marker({
    position: new google.maps.LatLng(37.79221,-122.406141),
    title:"Dev Bootcamp",
    // animation: google.maps.Animation.DROP,
    icon: goldStar
  });
  dbc.setMap(map)

  var results = new google.maps.FusionTablesLayer({
    query: {
      select: 'address',
      from: '1WimYUiAZ6hMXMPNonadLfsufixWeqb8MCGp-OHs'
      // https://www.google.com/fusiontables/DataSource?docid=1WimYUiAZ6hMXMPNonadLfsufixWeqb8MCGp-OHs
    },
  });

  results.setMap(map);
}
google.maps.event.addDomListener(window, 'load', initialize);
