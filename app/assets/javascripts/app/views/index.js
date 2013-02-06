Blog.Views.index = Backbone.View.extend({
  el: '#text-area',

  initialize: function(){
    this.collection = new Blog.Collections.articles("limit=3");
    this.collection.bind('reset', this.render, this);
    this.collection.fetch();
  },

  render: function(){
    var section = $('#section-articles'),
        articles = this.collection.toJSON();

    _.each(articles, function(article){
      section.append("<div class='img-articles'></div> <h2 class='title-articles'>"+article.title+"</h2> <article class='text-articles'><p>"+article.content+"</p></article> <a href='#'><div class='img2-articles'></div></a>");
    });
  }
});
