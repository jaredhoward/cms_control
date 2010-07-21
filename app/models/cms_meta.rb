class CmsMeta < ActiveRecord::Base
  belongs_to :metaable, :polymorphic => true
  belongs_to :current_cms_content, :class_name => 'CmsContent'
  has_many :cms_contents, :as => :contentable, :dependent => :destroy

  accepts_nested_attributes_for :cms_contents

  validates_presence_of :metaable, :url, :title
  validates_uniqueness_of :url

  before_validation_on_create :associate_cms_contents_contentable_to_self
  # after_create :assign_current_cms_content

  def self.get_current(url)
    meta = self.find_by_url(url)

    if meta && meta.metaable.is_showable
      return meta
    else
      return nil
    end
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
