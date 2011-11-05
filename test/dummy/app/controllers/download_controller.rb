class DownloadController < ApplicationController
  before_filter :load_file_resource, :only => [:download]

  def show
    if @file_resource && @file_resource.is_showable && @file_resource.current_release
      send_file("#{Rails.root}/file_resources/#{@file_resource.id}/#{@file_resource.current_release.file}")
    else
      render :text => 'No', :status => 404
    end
  end

  protected

  def load_file_resource
    @file_resource = TitanControl::FileResource.find(params[:id])
    verify_access if @file_resource && @file_resource.cms_meta.access == 'private'
  end

end