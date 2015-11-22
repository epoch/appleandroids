_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

var router = new Router();
Backbone.history.start();

// var dishes = new Dishes();

// dishes.fetch().done(function() {
//   dishes.each(function(dish) {
    
//     var view = new DishItemView({ model: dish });
//     $('#content').append( view.render().el );

//   })
// });

var dishes = new Dishes();

$('#add-dish-btn').on('click', function() {

  // get the form values

  // ajax options url? /api/dishes method? post
  // make an ajax call with options 
  // setup new view

  // var options = {
  //   url: 'http://localhost:3000/api/dishes',
  //   type: 'post',
  //   dataType: 'json',
  //   data: { name: $('#dish-name').val(), image_url: $('#dish-image-url').val() }
  // }

  // $.ajax(options).done(function() {
  //   // setup new view
  //   // append el back to content
  // });

  var newDish = new Dish({ 
    name: $('#dish-name').val(), 
    image_url: $('#dish-image-url').val() 
  });

  dishes.create(newDish);

  $('#dish-name').val('');
  
  // newDish.save().done(function(data) {
  //   var model = new Dish(data);
  //   var view = new DishItemView({ model: model });
  //   $('#content').append( view.render().el );
  // });

});

var view = new DishListView({ collection: dishes });

$('#content').html( view.render().el );

dishes.fetch();


// dishes.fetch().done(function() {
//   $('#content').html( view.render().el );
// });







