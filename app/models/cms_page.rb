class CmsPage < ActiveRecord::Base
  STATUSES = ['draft','published']

  has_one :cms_meta, :as => :metaable, :dependent => :destroy
  belongs_to :current_cms_content, :class_name => 'CmsContent', :dependent => :destroy
  has_many :cms_contents, :as => :contentable, :dependent => :destroy
  has_many :cms_page_categories, :dependent => :destroy
  has_many :categories, :through => :cms_page_categories

  accepts_nested_attributes_for :cms_meta

  validates_presence_of :status
  validates_inclusion_of :status, :in => STATUSES, :allow_nil => true

  before_validation_on_create :associate_cms_meta_metaable_to_self

  def is_showable
    return self.status == 'published'
  end

protected

  # def after_initialize
  #   build_cms_meta
  # end

private

  def associate_cms_meta_metaable_to_self
    self.cms_meta.metaable = self if self.cms_meta.metaable.nil?
  end

  # def build_cms_meta
  #   meta = CmsMeta.new
  #   meta.metaable = self
  #   self.cms_meta = meta
  # end

end
