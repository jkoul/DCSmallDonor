class OrganizationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @organizations = Organization.all.order(:name)
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.create!(org_params)
    redirect_to organizations_path
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    @organization.update(org_params)
    redirect_to organizations_path
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_path
  end

  private
    def org_params
      params.require(:organization).permit(:name, :orgtype, :orgUrl)
    end

end
