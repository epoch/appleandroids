_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

var map = new google.maps.Map($('.map')[0], {
  zoom: 14,
  center: { lat: -37.813155, lng: 144.964078 }
});

// var dishes = [{
//   name: 'cakepudding',
//   lat: -37.8112316,
//   lng: 144.9690854
// },{
//   name: 'cake',
//   lat: -37.810901,
//   lng: 144.972641  
// },{
//   name: 'pudding',
//   lat: -37.812009,
//   lng: 144.965301
// }];

var options = {
  url: 'http://localhost:3000/api/dishes',
  type: 'get',
  dataType: 'json'
}


$.ajax(options).done(function(data) {

  _.each(data, function(dish) {

    var compiled = _.template( $('#dish-box-template').html() );
    var html = compiled({ name: dish.name, lat: dish.latitude });
    console.log(html);
    $('.dish-list').append(html);

    var marker = new google.maps.Marker({
      position: { lat: dish.latitude, lng: dish.longitude },
      map: map,
      title: dish.name
    });

  });

});


var dishes2 = [{
  name: 'hello',
  lat: -37.818528,
  lng: 144.959164
},{
  name: 'world',
  lat: -37.814646,
  lng: 145.008590
}]

// <> means creating tags


var $loadMoreDiv = $('.load-more');

$loadMoreDiv.on('click', function() {

_.each(dishes2, function(dish) {

  var $newDishBox = $('<div>').addClass('ui-box');

  var $newDishH1 = $('<h1>').text(dish.name);
  $newDishBox.append($newDishH1);

  var $newDishDetails = $('<p>').text(dish.lat + ', ' + dish.lng);
  $newDishBox.append($newDishDetails);

  var $dishList = $('.dish-list'); // search
  $dishList.append($newDishBox); 

  var marker = new google.maps.Marker({
    position: { lat: dish.lat, lng: dish.lng },
    map: map,
    title: dish.name
  });

});  
})


