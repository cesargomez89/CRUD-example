Blog.Views.index = Backbone.View.extend({
  el: '#text-area',

  initialize: function(){
    this.collection = new Blog.Collections.articles("limit=4");
    this.collection.bind('reset', this.render, this).fetch();
    this.template = _.template(this.$('.fn-article-template').text());
  },

  render: function(){
    var section = this.$('#section-articles'),
        articles = this.collection.toJSON(),
        self =  this;

    _.each(articles, function(article){
      section.append(self.template({article: article}));
      section.append("<div class='media'> <a class='pull-left'><img class='media-object' src='/assets/avatar-small.png' /></a> <div class='media-body'><h4 class='media-heading'>"+article.title+"</h4> </div> <div class='article-content'>"+article.content+"</div> <a href='articles/"+article.id+"/showarticle' class='lupe'></a>");
    });
  }
});
