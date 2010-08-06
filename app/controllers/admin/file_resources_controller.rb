class Admin::FileResourcesController < Admin::BaseController
  before_filter :load_file_resource, :only => [:show, :edit, :update, :destroy]

  def index
    @file_resources = FileResource.all
  end

  def new
    @file_resource = FileResource.new
    1.times { @file_resource.file_resource_releases.build }
    @file_resource.build_cms_meta
    1.times { @file_resource.cms_meta.cms_contents.build }
  end

  def create
    @file_resource = FileResource.new(params[:file_resource])
    if @file_resource.save
      redirect_to(admin_file_resources_url, :notice => 'File was successfully created.')
    else
      render :new
    end
  end

  # def show
  # end

  def edit
  end

  def update
    if @file_resource.update_attributes(params[:file_resource])
      redirect_to(admin_file_resources_url, :notice => 'File was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @file_resource.destroy
    redirect_to(admin_file_resources_url)
  end

protected

  def load_file_resource
    @file_resource = FileResource.find(params[:id])
  end

end
