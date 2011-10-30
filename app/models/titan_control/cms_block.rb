module TitanControl
  class CmsBlock < ActiveRecord::Base
    include TitanControl::ModelCommonality::Contentable

    has_many :cms_page_cms_blocks, :dependent => :destroy

    scope :title_order, order('title ASC')

    validates :title, :presence => true
  end
end