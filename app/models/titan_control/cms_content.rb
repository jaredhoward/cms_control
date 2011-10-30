module TitanControl
  class CmsContent < ActiveRecord::Base
    CONTENTABLES = ['TitanControl::CmsBlock','TitanControl::CmsMeta']
    STATUSES = ['draft','published']

    belongs_to :contentable, :polymorphic => true

    validates :contentable, :presence => true
    validates :status, :inclusion => {:in => STATUSES}
    validates :contentable_type, :inclusion => {:in => CONTENTABLES}

    before_validation(:on => :create) do
      set_status_to_published
    end
    after_create :insure_contentable_has_current

    def self.create_new_current_content(hash)
      contentable = find(hash[:id]).contentable

      cms_content = create!(:contentable => contentable, :title => hash[:title], :content => hash[:content])

      contentable.current_cms_content = cms_content
      contentable.save!
    end

    private

    def set_status_to_published
      self.status = 'published' if self.status.nil?
    end

    def insure_contentable_has_current
      self.contentable.send(:assign_current_cms_content) if self.contentable.current_cms_content.nil?
    end

  end
end