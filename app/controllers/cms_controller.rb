class CmsController < ApplicationController
  layout '2col-left'

  before_filter :load_meta, :only => [:show]
  before_filter :load_file_resource, :only => [:download]

  def show
    if @meta && @meta.metaable.is_showable
      @content_title = @meta.current_cms_content.title
      @content = @meta.current_cms_content.content
      @title = @meta.title
      @keywords = @meta.keywords
      @description = @meta.description
    else
      render :text => 'No', :status => 404
    end
  end

  def download
    if @file_resource && @file_resource.is_showable && @file_resource.current_release
      send_file("#{RAILS_ROOT}/file_resources/#{@file_resource.id}/#{@file_resource.current_release.file}")
    else
      render :text => 'No', :status => 404
    end
  end

protected

  def load_meta
    @meta = params[:id].nil? ? CmsMeta.first(:conditions => {:metaable_type => 'CmsPage', :url => 'home'}) : CmsMeta.find(params[:id])
    verify_access if @meta.access == 'private'
  end

  def load_file_resource
    @file_resource = FileResource.find(params[:id])
    verify_access if @file_resource.cms_meta.access == 'private'
  end

end