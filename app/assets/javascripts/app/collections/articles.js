Blog.Collections.articles = Backbone.Collection.extend({
  url: '/articles.json?',

  initialize: function(parameters){
    this.url = this.url + parameters;
  }
});
