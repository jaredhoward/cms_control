class Category < ActiveRecord::Base
  TYPES = ['Page','ProductFileResource']

  has_many :cms_page_categories, :dependent => :destroy
  has_many :product_file_resources, :dependent => :nullify

  validates_presence_of :category_type, :name
  validates_uniqueness_of :name, :scope => :category_type
  validates_inclusion_of :category_type, :in => TYPES
end
