class Product < ActiveRecord::Base
  include CommonMetaable
  include CommonRouteReload

  has_many :product_file_resources, :dependent => :destroy
  has_many :file_resources, :through => :product_file_resources

  scope :name_order, order('name ASC')

  validates :name, :presence => true, :uniqueness => true
end