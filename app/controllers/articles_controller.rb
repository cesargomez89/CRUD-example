class ArticlesController < ApplicationController
  def index
    @articles= Articles.all
  end

  def new
    @articles= Articles.new
    # @articles= Articles.all
  end

  def create
    @articles= Articles.new(params[:article])
    respond_to do |format|
      if @articles.save
        format.html {redirect_to articles_path}
      else
        format.html {render action: "new"}
      end
    end
  end

  def edit
    @articles = Articles.find(params[:id])
  end

  def update
    @articles = Articles.find(params[:id])
    respond_to do |format|
      if @articles.update_atributes(params[:articles])
        format.html {redirect_to articles_path}
      else
        format.html {render action: "edit"}
      end
    end
  end

  def destroy 
    @articles = Articles.find(params[:id])
    respond_to do |format|
      if @articles.destroy
        format.html {redirect_to articles_path}
      else
        format.html {redirect_to articles_path}
      end
    end
  end
end
