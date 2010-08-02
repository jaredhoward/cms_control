class CmsController < ApplicationController
  layout '2col-right'

  def show
    @meta = params[:id].nil? ? CmsMeta.first(:conditions => {:metaable_type => 'CmsPage', :url => 'home'}) : CmsMeta.find(params[:id])
    if @meta && @meta.metaable.is_showable
      @content_title = @meta.current_cms_content.title
      @content = @meta.current_cms_content.content
      @title = @meta.title
      @keywords = @meta.keywords
      @description = @meta.description
    end
  end

  def download
    @file_resource = FileResource.find(params[:id])
    if @file_resource && @file_resource.is_showable && @file_resource.current_release
      send_file("#{RAILS_ROOT}/file_resources/#{@file_resource.id}/#{@file_resource.current_release.file}")
    else
      render :text => 'No', :status => 404
    end
  end

end