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
  });

  searchBox = new google.maps.places.SearchBox(
    document.getElementById('autocomplete-input')
  );

  // マーカー毎の処理
  for (var i = 0; i < markerData.length; i++) {
    marker[i] = new google.maps.Marker({
      map: map,
      position: new google.maps.LatLng(markerData[i]['latitude'], markerData[i]['longitude'])
    });
    // 吹き出しの追加
    infoWindow[i] = new google.maps.InfoWindow({
      content: '<div class="sample">' + markerData[i]['name'] + '</div>'
    });
    markerEvent(i);
  }

  var searchNearbyButton = document.createElement('button');
  searchNearbyButton.textContent = "このエリアから探す";
  searchNearbyButton.className = "border-2 rounded-full border-orange-400 bg-orange-400 py-2 px-4 md:px-8 mt-2 mr-2 text-center text-xs md:text-base text-white font-bold hover:bg-orange-600";
  map.controls[google.maps.ControlPosition.TOP_RIGHT].push(searchNearbyButton);

  searchNearbyButton.addEventListener("click", function() {
    showLoadingIndicator();
    var center = map.getCenter();
    var lat = center.lat();
    var lng = center.lng();
    window.location.href = `/home?latitude=${lat}&longitude=${lng}`;
  });
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

// 「現在の位置を取得」ボタンがクリックされたときの処理
document.getElementById("getCurrentLocationButton").addEventListener("click", function() {
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
      }
    );
  } else {
    console.error("Geolocationがサポートされていません");
  }
});

// 「検索」ボタンがクリックされたときの処理
document.getElementById("searchButton").addEventListener("click", function() {
  showLoadingIndicator();
});

// ローディングアイコン表示関数
function showLoadingIndicator() {
  document.getElementById("loadingIndicator").style.display = "block";
}