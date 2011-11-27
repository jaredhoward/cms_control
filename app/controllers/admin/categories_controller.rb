class Admin::CategoriesController < Admin::BaseController
  before_filter :load_category, :only => [:show, :edit, :update, :destroy]

  def index
    @categories = TitanControl::Category.all
  end

  def new
    @category = TitanControl::Category.new
  end

  def create
    @category = TitanControl::Category.new(params[:category])
    if @category.save
      redirect_to(@category, :notice => 'Category was successfully created.')
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @category.update_attributes(params[:page])
      redirect_to(@category, :notice => 'Category was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to(categories_url)
  end

  protected

  def load_category
    @category = TitanControl::Category.find(params[:id])
  end

end
