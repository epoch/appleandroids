var Router = Backbone.Router.extend({

  routes: {
    "home": "home",
    "about": "about"
  },

  home: function() {
    var view = new HomeView();
    $('#content').html( view.render().el ).hide().fadeIn();
  },

  about: function() {
    var view = new AboutView();
    $('#content').html( view.render().el );
  }

});