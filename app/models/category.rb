class Category < ActiveRecord::Base
  TYPES = ['Page','ProductFileResource']

  has_many :cms_page_categories, :dependent => :destroy
  has_many :product_file_resources, :dependent => :nullify

  validates_presence_of :type, :name
  validates_uniqueness_of :name, :scope => :type
  validates_inclusion_of :type, :in => TYPES
end
