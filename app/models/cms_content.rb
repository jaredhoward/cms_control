class CmsContent < ActiveRecord::Base
  has_many :contentable, :polymorphic => true

  validates_presence_of :contentable_type, :contentable_id
end
