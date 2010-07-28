class Product < ActiveRecord::Base
  include CommonMetaable
  include CommonRouteReload

  has_many :product_file_resources, :dependent => :destroy
  has_many :file_resources, :through => :product_file_resources

  validates_presence_of :name
  validates_uniqueness_of :name

  def is_showable
    return true
  end

end
