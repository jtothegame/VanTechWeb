class OrganizationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_organization, only:[:show, :edit, :update]
  before_action :new_tag?, only:[:create]

  def index
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

  def new_tag?
    if params['tag'].present?
      tag_names = params['tag']['name'].split(',')
      new_tags = tag_names.map { |tag| Tag.create(name: tag.strip) }
      if new_tags.compact.present?
        params['organization']['tag_ids'] += new_tags.pluck(:id)
      end
    end
  end
end
