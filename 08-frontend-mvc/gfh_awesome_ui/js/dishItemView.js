var DishItemView = Backbone.View.extend({

  tagName: 'div',

  className: 'ui-box',

  events: {
    "click h1": "highlight"
  },

  initialize: function() {
  },

  highlight: function() {
    this.$el.toggleClass('selected');
  },

  render: function() {
    var compiled = _.template( $('#dish-box-template').html() );

    var html = compiled({ 
      name: this.model.name, 
      lat: this.model.latitude, 
      image_url: this.model.image_url
    });

    this.$el.html(html);
  }

});