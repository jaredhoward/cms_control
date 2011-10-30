module TitanControl
  class ProductFileResource < ActiveRecord::Base
    belongs_to :product
    belongs_to :file_resource
    belongs_to :category

    validates :product_id, :presence => true
    validates :file_resource_id, :presence => true, :uniqueness => {:scope => :product_id}
  end
end