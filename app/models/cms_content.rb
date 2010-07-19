class CmsContent < ActiveRecord::Base
  belongs_to :contentable, :polymorphic => true

  validates_presence_of :contentable_type, :contentable_id
end
