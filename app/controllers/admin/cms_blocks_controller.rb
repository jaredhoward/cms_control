class Admin::CmsBlocksController < Admin::BaseController
  before_filter :load_cms_block, :only => [:edit, :update, :destroy]

  def index
    @cms_blocks = CmsBlock.title_order
  end

  def new
    @cms_block = CmsBlock.new
    1.times { @cms_block.cms_contents.build }
  end

  def create
    @cms_block = CmsBlock.new(params[:cms_block])
    if @cms_block.save
      redirect_to((params[:commit] == 'Save and Continue Edit' ? edit_admin_cms_block_url(@cms_block) : admin_cms_blocks_url), :notice => 'Block was successfully created.')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cms_block.update_attributes(params[:cms_block])
      redirect_to((params[:commit] == 'Save and Continue Edit' ? edit_admin_cms_block_url(@cms_block) : admin_cms_blocks_url), :notice => 'Block was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @cms_block.destroy
    redirect_to(admin_cms_blocks_url, :notice => 'Block was deleted.')
  end

protected

  def load_cms_block
    @cms_block = CmsBlock.find(params[:id])
  end

end
