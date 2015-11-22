var DishListView = Backbone.View.extend({

  className: 'dish-list', // el <div class="dish-list"></div>

  initialize: function() {
    this.listenTo(this.collection, 'update', this.render);
  },

  render: function() {
    // should look after adding and removing dish item

    this.$el.empty(); // clear the list
    this.collection.each(function(dish) {

      // new view for dish
      var view = new DishItemView({ model: dish });
      // append view to parent
      this.$el.append( view.render().el );

    }, this); // passing in the context

    return this;
  }

});