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

// 位置情報を取得する関数
function getCurrentLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var currentLat = position.coords.latitude;
      var currentLng = position.coords.longitude;

      // マップを現在位置にセンタリング
      map.setCenter(new google.maps.LatLng(currentLat, currentLng));

      // ここで現在位置を使って検索を実行
      fetchNearbyShopsByLocation(currentLat, currentLng);
    }, function(error) {
      // エラー処理
      console.error("位置情報の取得に失敗しました: " + error.message);
    });
  } else {
    console.error("Geolocationがサポートされていません");
  }
}

// 現在位置を使って検索を実行する関数
function fetchNearbyShopsByLocation(lat, lng) {
  window.location.href = `/home?latitude=${lat}&longitude=${lng}`;
}

// 「現在の位置を取得」ボタンがクリックされたときの処理
document.getElementById("getCurrentLocationButton").addEventListener("click", function() {
  getCurrentLocation();
});
