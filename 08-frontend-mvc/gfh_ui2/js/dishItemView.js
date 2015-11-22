var DishItemView = Backbone.View.extend({

  tagName: 'p', // root tag is a <p class="dish-item"></p>
  className: 'dish-item',

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  render: function() {
    this.$el.html(this.model.get('name'));
    return this;
  }

});