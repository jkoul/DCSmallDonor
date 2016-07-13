class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @articles = Article.select{|article| article.articleType != "File"}
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
    if @article.articleType != "File"
      @date = @article.date
      @date.strftime("%B %e, %Y")
      redirect_to articles_path
    elsif @article.articleType == "File"
      @article.update( date: Time.now.strftime("%B %e, %Y") )
      redirect_to files_path
    end
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
    if @article.articleType != "File"
      @article.destroy
      redirect_to articles_path
    elsif @article.articleType == "File"
      @article.destroy
      redirect_to files_path
    end
  end

  private
    def article_params
      params.require(:article).permit(:date, :title, :source, :articleType, :url)
    end

end
