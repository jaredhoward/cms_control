module AdminHelper

  def get_title
    action = params[:action]

    item = if params[:controller].include?('block') then 'Block'
    elsif params[:controller].include?('page') then 'Page'
    elsif params[:controller].include?('product') then 'Product'
    elsif params[:controller].include?('file') then 'File'
    else ''
    end

    action = if params[:action].include?('new') || params[:action].include?('create') then 'Creating New'
    elsif params[:action].include?('edit') then 'Editing'
    elsif params[:action].include?('update') then 'Editing'
    else params[:action]
    end

    return action + ' ' + item
  end

  def required_tag
    content_tag(:span, '*', :class => 'required', :title => 'This item is required')
  end

end
