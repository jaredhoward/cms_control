module TitanControl
  class Admin::CmsPagesController < Admin::BaseController
    before_filter :load_cms_page, :only => [:edit, :update, :destroy]

    def index
      @cms_pages = CmsPage.meta_title_order
    end

    def new
      @cms_page = CmsPage.new
      @cms_page.build_cms_meta
      1.times { @cms_page.cms_meta.cms_contents.build }
    end

    def create
      @cms_page = CmsPage.new(params[:cms_page])
      if @cms_page.save
        redirect_to((params[:commit] == 'Save and Continue Edit' ? edit_admin_cms_page_url(@cms_page) : admin_cms_pages_url), :notice => 'Page was successfully created.')
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @cms_page.update_attributes(params[:cms_page])
        redirect_to((params[:commit] == 'Save and Continue Edit' ? edit_admin_cms_page_url(@cms_page) : admin_cms_pages_url), :notice => 'Page was successfully updated.')
      else
        render :edit
      end
    end

    def destroy
      @cms_page.destroy
      redirect_to(admin_cms_pages_url, :notice => 'Page was deleted.')
    end

    protected

    def load_cms_page
      @cms_page = CmsPage.find(params[:id])
    end

  end
end