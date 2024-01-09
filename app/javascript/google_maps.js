var lat = gon.latitude;
var lng = gon.longitude;
var marker = [];
var markerData = gon.markerData;
var infoWindow = [];
var currentInfoWindow = null;

window.initMap = function() {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 15,
    center: new google.maps.LatLng(lat, lng),
    fullscreenControl: false,
    mapTypeControl: false,
    styles: [
      {
        featureType: 'all',
        elementType: 'all',
      },
      {
        featureType: 'poi',
        elementType: 'all',
        stylers: [
          { visibility: 'off' },
        ],
      }
    ]
  });

  searchBox = new google.maps.places.SearchBox(
    document.getElementById('autocomplete-input')
  );

  for (var i = 0; i < markerData.length; i++) {
    marker[i] = new google.maps.Marker({
      map: map,
      position: new google.maps.LatLng(markerData[i]['latitude'], markerData[i]['longitude'])
    });

    infoWindow[i] = new google.maps.InfoWindow({
      content: '<div class="hover:text-yellow-500"><a href="/shops/' +  markerData[i]['id'] + '">' +  markerData[i]['name'] + '</a></div>'
    });
    markerEvent(i);
  }

  var currentDisplayButton = document.createElement('button');
  currentDisplayButton.textContent = "このエリアから探す";
  currentDisplayButton.className = "border-2 rounded-full border-orange-400 bg-orange-400 py-2 px-4 md:px-8 mt-2 mr-2 text-center text-xs md:text-base text-white font-bold hover:bg-orange-600";
  map.controls[google.maps.ControlPosition.TOP_RIGHT].push(currentDisplayButton);

  currentDisplayButton.addEventListener("click", function() {
    showLoadingIndicator();
    var center = map.getCenter();
    var lat = center.lat();
    var lng = center.lng();
    window.location.href = `/home?latitude=${lat}&longitude=${lng}`;
  });

  var currentLocationButton = document.createElement('button');
  currentLocationButton.textContent = "現在地から探す";
  currentLocationButton.className = "border-2 rounded-full border-orange-400 bg-orange-400 py-2 px-4 md:px-8 mt-2 ml-2 text-center text-xs md:text-base text-white font-bold hover:bg-orange-600";
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(currentLocationButton);

  currentLocationButton.addEventListener("click", function() {
    showLoadingIndicator();
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        function(position) {
          var lat = position.coords.latitude;
          var lng = position.coords.longitude;
          window.location.href = `/home?latitude=${lat}&longitude=${lng}`;
        },
        function(error) {
          console.error("位置情報の取得に失敗しました: " + error.message);
          alert('お使いのブラウザでは位置情報がサポートされていません')
          window.location.href = `/home`
        }
      );
    } else {
      console.error("Geolocationがサポートされていません");
    }
  });
}

function markerEvent(i) {
  marker[i].addListener('click', function() {
    if (currentInfoWindow) {
      currentInfoWindow.close();
    }
    infoWindow[i].open(map, marker[i]);
    currentInfoWindow = infoWindow[i];
  });
}

document.getElementById("searchButton").addEventListener("click", function() {
  showLoadingIndicator();
});

function showLoadingIndicator() {
  document.getElementById("loadingIndicator").style.display = "block";
}