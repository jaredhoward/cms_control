# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def cms_block(block_id)
    return "got #{block_id}"
  end
end
