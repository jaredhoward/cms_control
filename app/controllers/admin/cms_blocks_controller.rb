class Admin::CmsBlocksController < Admin::BaseController
  before_filter :load_cms_block, :only => [:show, :edit, :update, :destroy]

  def index
    @cms_blocks = CmsBlock.all
  end

  def new
    @cms_block = CmsBlock.new
    1.times { @cms_block.cms_contents.build }
  end

  def create
    @cms_block = CmsBlock.new(params[:cms_block])
    if @cms_block.save
      redirect_to([:admin, @cms_block], :notice => 'Block was successfully created.')
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @cms_block.update_attributes(params[:cms_block])
      redirect_to([:admin, @cms_block], :notice => 'Block was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @cms_block.destroy
    redirect_to(admin_cms_blocks_url)
  end

protected

  def load_cms_block
    @cms_block = CmsBlock.find(params[:id])
  end

end
