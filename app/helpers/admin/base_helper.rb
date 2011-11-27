module Admin::BaseHelper

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

  def admin_menu_items(obj)
    unless obj.items.empty?
      items = []
      obj.items_sorted.each do |item|
        item_class = []
        if item[1].items.empty?
          item_class << 'first' if item == obj.items_sorted.first
          item_class << 'last' if item == obj.items_sorted.last
        else
          item_class << 'container'
        end

        content = if item[1].url.present?
          link_to(item[1].label, send(item[1].url))
        else
          item[1].label
        end
        content << admin_menu_items(item[1]) unless item[1].items.empty?

        items << content_tag(:li, content.html_safe, :class => item_class.join(' '))
      end

      content_tag(:ul, items.join("").html_safe)
    end
  end

end
