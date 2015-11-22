var HomeView = Backbone.View.extend({

  className: 'home',

  render: function() {
    this.$el.html('home sweet home');
    return this; // so we can do chaining
  }

});