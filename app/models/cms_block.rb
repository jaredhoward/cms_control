class CmsBlock < ActiveRecord::Base
  include CommonContentable

  validates_presence_of :title
end
