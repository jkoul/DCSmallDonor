class FilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @files = Article.select{|article| article.articleType == "File"}
  end

  def new
    @article = Article.new
  end

  def create
    @file = Article.create!(file_params)
    @file.update( articleType: "File" )
    @file.update( date: Time.now.strftime("%B %e, %Y") )
    redirect_to files_path
  end

  def destroy
    @file = Article.find(params[:id])
    @file.destroy
    redirect_to files_path
  end

  private
    def file_params
      params.require(:article, :url).permit(:date, :title, :source, :articleType)
    end
end
