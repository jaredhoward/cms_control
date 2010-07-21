class Admin::CmsPagesController < ApplicationController
  before_filter :load_cms_page, :only => [:show, :edit, :update, :destroy]

  def index
    @cms_pages = CmsPage.all
  end

  def new
    @cms_page = CmsPage.new
    @cms_page.build_cms_meta
    1.times { @cms_page.cms_meta.cms_contents.build }
  end

  def create
    @cms_page = CmsPage.new(params[:cms_page])
    if @cms_page.save
      redirect_to([:admin, @cms_page], :notice => 'Page was successfully created.')
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @cms_page.update_attributes(params[:cms_page])
      redirect_to([:admin, @cms_page], :notice => 'Page was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @cms_page.destroy
    redirect_to(admin_cms_pages_url)
  end

protected

  def load_cms_page
    @cms_page = CmsPage.find(params[:id])
  end

end
