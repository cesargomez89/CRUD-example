var Blog = {
  Models: {},
  Collections: {},
  Views: {},

  Initialize: function(){
    Blog.router = new Blog.Router();
    Backbone.history.start({pushState: true})
  }
};
