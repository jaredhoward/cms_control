class Category < ActiveRecord::Base
  TYPES = ['Page','ProductFileResource']

  has_many :cms_page_categories, :dependent => :destroy
  has_many :product_file_resources, :dependent => :nullify

  validates :category_type, :presence => true, :inclusion => {:in => TYPES}
  validates :name, :presence => true, :uniqueness => {:scope => :category_type}
end