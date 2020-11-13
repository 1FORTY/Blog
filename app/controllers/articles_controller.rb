class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    # render plain: params[:article].inspect - Это нужно для проверки, ну, думаю, что этои так понятно
  
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to action :edit
      @article.save
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
