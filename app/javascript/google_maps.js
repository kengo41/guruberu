var lat = gon.latitude;
var lng = gon.longitude;
var marker = [];
var markerData = gon.markerData;
var infoWindow = [];
var currentInfoWindow = null;

window.initMap = function() {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 16,
    center: new google.maps.LatLng(lat, lng),
  });

  // マーカー毎の処理
  for (var i = 0; i < markerData.length; i++) {
    marker[i] = new google.maps.Marker({
      map: map,
      position: new google.maps.LatLng({lat: markerData[i]['lat'], lng: markerData[i]['lng']})
    });
    // 吹き出しの追加
    infoWindow[i] = new google.maps.InfoWindow({
      content: '<div class="sample">' + markerData[i]['name'] + '</div>'
    });
    markerEvent(i);
  }
}

// 新しいマーカーをクリックしたとき、前の吹き出しを閉じる
function markerEvent(i) {
  marker[i].addListener('click', function() {
    if (currentInfoWindow) {
      currentInfoWindow.close();
    }
    infoWindow[i].open(map, marker[i]);
    currentInfoWindow = infoWindow[i];
  });
}