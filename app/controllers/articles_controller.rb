class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all.order(:date).reverse
    @press = @articles.select {|article| article.articleType == "Press"}
    @coalition = @articles.select {|article| article.articleType == "Coalition"}
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create!(article_params)
    @date = @article.date
    @date.strftime("%B %e, %Y")
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:date, :title, :source, :articleType, :url)
    end

end
