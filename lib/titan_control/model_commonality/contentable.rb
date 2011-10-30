module TitanControl
  module ModelCommonality::Contentable

    def self.included(base)
      base.belongs_to :current_cms_content, :class_name => 'TitanControl::CmsContent'
      base.has_many :cms_contents, :as => :contentable, :class_name => 'TitanControl::CmsContent', :dependent => :destroy

      base.accepts_nested_attributes_for :cms_contents, :allow_destroy => true

      base.before_validation(:on => :create) do
        associate_cms_contents_contentable_to_self
      end
      # base.after_create :assign_current_cms_content
    end

    def cms_content=(hash)
      TitanControl::CmsContent.create_new_current_content(hash)
    end

    protected

    def assign_current_cms_content
      if current_cms_content.nil?
        unless self.cms_contents.empty?
          self.current_cms_content_id = self.cms_contents.first.id
          self.save!
        end
      end
    end

    private

    def associate_cms_contents_contentable_to_self
      self.cms_contents.each do |cms_content|
        cms_content.contentable = self if cms_content.contentable.nil?
      end unless self.cms_contents.empty?
    end

  end
end