class Admin::ProductsController < Admin::BaseController
  before_filter :load_product, :only => [:edit, :update, :destroy]

  def index
    @products = Product.name_order
  end

  def new
    @product = Product.new
    @product.build_cms_meta
    1.times { @product.cms_meta.cms_contents.build }
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to((params[:commit] == 'Save and Continue Edit' ? edit_admin_product_url(@product) : admin_products_url), :notice => 'Product was successfully created.')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update_attributes(params[:product])
      redirect_to((params[:commit] == 'Save and Continue Edit' ? edit_admin_product_url(@product) : admin_products_url), :notice => 'Product was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to(admin_products_url, :notice => 'Product was deleted.')
  end

  protected

  def load_product
    @product = Product.find(params[:id])
  end

end