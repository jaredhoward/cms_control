class CmsContent < ActiveRecord::Base
  CONTENTABLES = ['CmsBlock','CmsMeta']
  STATUSES = ['draft','published']

  belongs_to :contentable, :polymorphic => true

  validates_presence_of :contentable
  validates_inclusion_of :status, :in => STATUSES
  validates_inclusion_of :contentable_type, :in => CONTENTABLES

  before_validation_on_create :set_status_to_published
  after_create :insure_contentable_has_current

  def self.create_new_current_content(hash)
    contentable = find(hash[:id]).contentable

    cms_content = create!(:contentable => contentable, :title => hash[:title], :content => hash[:content])

    contentable.current_cms_content = cms_content
    contentable.save!
  end

private

  def set_status_to_published
    self.status = 'published'
  end

  def insure_contentable_has_current
    self.contentable.assign_current_cms_content if self.contentable.current_cms_content.nil?
  end

end
