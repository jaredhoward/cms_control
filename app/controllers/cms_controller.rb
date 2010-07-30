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
    @meta = CmsMeta.find(params[:id])
    if @meta && @meta.metaable.is_showable && @meta.metaable.current_release
      send_file("#{RAILS_ROOT}/public/downloads/#{@meta.metaable.path}/#{@meta.metaable.current_release.file}")
    else
      render :text => 'No', :status => 404
    end
  end

end