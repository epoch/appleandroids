_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

var map = new google.maps.Map($('.map')[0], {
  zoom: 14,
  center: { lat: -37.813155, lng: 144.964078 }
});

var options = {
  url: 'http://localhost:3000/api/dishes',
  type: 'get',
  dataType: 'json'
}

$.ajax(options).done(function(data) {

  _.each(data, function(dish) {

    var view = new DishItemView({ model: dish });
    view.render();
    $('.dish-list').append(view.el);

    var marker = new google.maps.Marker({
      position: { lat: dish.latitude, lng: dish.longitude },
      map: map,
      title: dish.name
    });

    marker.setIcon('http://maps.google.com/mapfiles/ms/icons/green-dot.png')

  });

});

var $loadMoreDiv = $('.load-more');

$loadMoreDiv.on('click', function() {
});


