class OrganizationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_organization, only:[:show, :edit, :update]


  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new

  end

  def create
    @organization = Organization.new organization_params
    if @organization.save
      @organization.user = current_user
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @organization.update(organization_params) && @organization.user == current_user

      redirect_to organization_path(@organization)
    else
      render :edit
    end
  end

  private

  def find_organization
      @organization = Organization.find params[:id]
  end

  def organization_params
    params.require(:organization).permit([:name, :address, :overview, :employees, :teamsize, :website, :twitter, { tag_ids:[] }])
  end

end
