class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @organizations = Organization.all.order(:name)
    @articles = Article.select{|article| article.articleType != "File"}
    @files = Article.select{|article| article.articleType == "File"}
    @user = current_user
  end

  def new
    @article = Article.new
  end

end
