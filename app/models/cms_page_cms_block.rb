class CmsPageCmsBlock < ActiveRecord::Base
  belongs_to :cms_page
  belongs_to :cms_block

  validates_presence_of :cms_page, :cms_block
  validates_uniqueness_of :cms_block_id, :scope => :cms_page_id

  named_scope :by_sort, :order => 'sort ASC'

  before_validation_on_create :set_sorting

private

  def set_sorting
    if self.sort.nil?
      self.sort = self.cms_page.cms_page_cms_blocks.empty? ? 0 : self.cms_page.cms_page_cms_blocks.by_sort.last.sort + 1
    end
  end

end
