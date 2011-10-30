module TitanControl
  class CmsController < TitanControl::CMS_INHERITING_CLASS.constantize
    before_filter :load_meta, :only => [:show]
    before_filter :load_file_resource, :only => [:download]

    def show
      if @meta && @meta.metaable.is_showable
        @cms_content = @meta.current_cms_content
      else
        render :text => 'No', :status => 404
      end
    end

    def download
      if @file_resource && @file_resource.is_showable && @file_resource.current_release
        send_file("#{Rails.root}/file_resources/#{@file_resource.id}/#{@file_resource.current_release.file}")
      else
        render :text => 'No', :status => 404
      end
    end

    protected

    def load_meta
      @meta = params[:id].nil? ? TitanControl::CmsMeta.first(:conditions => {:metaable_type => 'TitanControl::CmsPage', :url => 'home'}) : TitanControl::CmsMeta.find(params[:id])
      verify_access if @meta && @meta.access == 'private'
    end

    def load_file_resource
      @file_resource = TitanControl::FileResource.find(params[:id])
      verify_access if @file_resource && @file_resource.cms_meta.access == 'private'
    end

  end
end