class CmsController < ApplicationController
  before_filter :load_meta, :only => [:show]

  def show
    if @meta && @meta.metaable.is_showable
      @cms_content = @meta.current_cms_content
    else
      render :text => 'No', :status => 404
    end
  end

  protected

  def load_meta
    @meta = params[:id].nil? ? TitanControl::CmsMeta.first(:conditions => {:metaable_type => 'TitanControl::CmsPage', :url => 'home'}) : TitanControl::CmsMeta.find(params[:id])
    verify_access if @meta && @meta.access == 'private'
  end

end
