class OrganizationsController < ApplicationController
  before_action :authenticate_user!
<<<<<<< HEAD
  before_action :find_organization, only:[:show]
  def new
    @organization = Organization.new
=======
  before_action :find_organization, only:[:show, :edit, :update]


  def index
  end

  def new
    @organization = Organization.new

>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  end

  def create
    @organization = Organization.new organization_params
    if @organization.save
<<<<<<< HEAD
=======
      @organization.user = current_user
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def show

  end
<<<<<<< HEAD
=======

  def edit
  end

  def update
    if @organization.update(organization_params) && @organization.user == current_user

      redirect_to organization_path(@organization)
    else
      render :edit
    end
  end

>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  private

  def find_organization
      @organization = Organization.find params[:id]
  end

  def organization_params
<<<<<<< HEAD
    params.require(:organization).permit([:name, :address, :overview, :employees, :teamsize, :website, :twitter])
  end
=======
    params.require(:organization).permit([:name, :address, :overview, :employees, :teamsize, :website, :twitter, { tag_ids:[] }])
  end

>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
end
