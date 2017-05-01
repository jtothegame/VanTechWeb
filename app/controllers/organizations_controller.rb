class OrganizationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_organization, only:[:show, :edit, :update]


  def index
    @organizations = Organization.all.page params[:page]
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

    headers = %w(header2.png header3.png header4.png header5.png header6.png header7.png header8.png header9.png header10.png)

    @header = headers.sample(1)[0]

    @header
  end

  def edit
    if !(@organization.user == current_user || current_user.admin?)
      redirect_to organization_path(@organization)
    end

  end

  def update
    if !(@organization.user == current_user || current_user.admin?)
      redirect_to organization_path(@organization)

    elsif @organization.update(organization_params)
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
    params.require(:organization).permit([:name, :address, :overview, :employees, :teamsize, :website, :twitter, :icon, { tag_ids:[] }])
  end

end
