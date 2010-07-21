class CmsContent < ActiveRecord::Base
  belongs_to :contentable, :polymorphic => true

  validates_presence_of :contentable

  after_create :insure_contentable_has_current

private

  def insure_contentable_has_current
    self.contentable.assign_current_cms_content if self.contentable.current_cms_content.nil?
  end

end
