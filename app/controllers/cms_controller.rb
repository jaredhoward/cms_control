class CmsController < ApplicationController
  layout '2col-right'
  
  def index
   metaable = CmsMeta.get_current(params[:url])
   if metaable
     @content_title = metaable.current_cms_content.title
     @content = metaable.current_cms_content.content
     @title = metaable.title
     @keywords = metaable.keywords
     @description = metaable.description
   else
    # return 404
    @content = 'PAGE NOT FOUND'
   end

  end

end