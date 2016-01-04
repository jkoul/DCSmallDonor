class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @organizations = Organization.all.order(:name)
    @articles = Article.all.order(:date).reverse
    @user = current_user
  end

end
