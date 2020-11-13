class ArticlesController < ApplicationController

  def new

  end

  def create
    # render plain: params[:article].inspect - Это нужно для проверки, ну, думаю, что этои так понятно
  
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
