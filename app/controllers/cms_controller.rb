class CmsController < ApplicationController
  layout '2col-right'
  
  def show
    meta = CmsMeta.find(params[:id])
    if meta && meta.metaable.is_showable
      @content_title = meta.current_cms_content.title
      @content = meta.current_cms_content.content
      @title = meta.title
      @keywords = meta.keywords
      @description = meta.description
    end
  end

end