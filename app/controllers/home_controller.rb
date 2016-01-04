class HomeController < ApplicationController

  def index
    @organizations = Organization.all.order(:name)
    @articles = Article.all.order(:date).reverse
    @press = @articles.select {|article| article.articleType == "Press"}
    @coalition = @articles.select {|article| article.articleType == "Coalition"}
  end

end
