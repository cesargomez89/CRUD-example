class ArticlesController < ApplicationController
  def index
    if params[:limit].nil?
      @articles = Article.all
    else
      @articles = Article.order('created_at DESC').limit(params[:limit])
    end
    respond_to do |format|
      format.html
      format.json { render json: @articles }
    end
  end

  def new
    @article= Article.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @article= Article.new(params[:article])
    respond_to do |format|
      if @article.save
        format.html {redirect_to articles_path}
      else
        format.html {render action: "new"}
      end
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html {redirect_to articles_path}
      else
        format.html {render action: "edit"}
      end
    end
  end

  def destroy 
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.destroy
        format.html {redirect_to articles_path}
      else
        format.html {redirect_to articles_path}
      end
    end
  end

end
