Blog.Router = Backbone.Router.extend({
  routes: {
    "" : "index"
  },

  index: function(){
    this.index = new Blog.Views.index();
  }
});
