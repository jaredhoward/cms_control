class Admin::FileResourcesController < Admin::BaseController
  before_filter :load_file_resource, :only => [:show, :edit, :update, :destroy]

  def index
    @file_resources = FileResource.all
  end

  def new
    @file_resource = FileResource.new
    @file_resource.build_cms_meta
    1.times { @file_resource.cms_meta.cms_contents.build }
  end

  def create
    @file_resource = FileResource.new(params[:file_resource])
    if @file_resource.save
      saved, errors = save_file_attachment
      if saved
        redirect_to(admin_file_resources_url, :notice => 'File was successfully created.')
      else
        flash.now[:warning] = "File was successfully created, however the release was not.<br />#{errors.full_messages.join("<br />") unless errors.nil?}"
        render :edit
      end
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
      saved, errors = save_file_attachment
      if saved
        redirect_to(admin_file_resources_url, :notice => 'File was successfully updated.')
      else
        flash.now[:warning] = "File was successfully updated, however the release was not.<br />#{errors.full_messages.join("<br />")}"
        render :edit
      end
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

  def save_file_attachment
    return true if params[:new_release].nil? && self.action_name == 'update'

    return @file_resource.save_release(params[:new_release], !params[:make_current].nil?)
  end

end
