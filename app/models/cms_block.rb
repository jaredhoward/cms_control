class CmsBlock < ActiveRecord::Base
  belongs_to :current_cms_content, :class_name => 'CmsContent', :dependent => :destroy
  has_many :cms_contents, :as => :contentable, :dependent => :destroy

  validates_presence_of :title, :current_cms_content_id
end
