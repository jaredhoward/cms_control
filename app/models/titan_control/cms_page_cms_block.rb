module TitanControl
  class CmsPageCmsBlock < ActiveRecord::Base
    belongs_to :cms_page
    belongs_to :cms_block

    validates :cms_page, :presence => true
    validates :cms_block, :presence => true
    validates :cms_block_id, :uniqueness => {:scope => :cms_page_id}

    scope :by_sort, order('sort ASC')

    before_validation(:on => :create) do
      set_sorting
    end

    private

    def set_sorting
      if self.sort.nil?
        self.sort = self.cms_page.cms_page_cms_blocks.empty? ? 0 : self.cms_page.cms_page_cms_blocks.by_sort.last.sort + 1
      end
    end

  end
end