class ProductFileResource < ActiveRecord::Base
  belongs_to :product
  belongs_to :file_resource
  belongs_to :category

  validates_presence_of :product_id, :file_resource_id
  validates_uniqueness_of :file_resource_id, :scope => :product_id
end
