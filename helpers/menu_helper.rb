module MenuHelper
  ::NEWLINE = "\n" unless defined? ::NEWLINE

  def menu(name, options = {})
    options.reverse_merge! class: 'nav'
    items = data.menu[name].keys.map { |item| menu_item name, item }.join ''
    content_tag :ul, items, options
  end

  def menu_item(menu, item, item_options = {})
    item_options.reverse_merge! a: {}, li: {}

    options = data.menu[menu][item]
    options = { href: options } if options.is_a? String
    options.merge! item_options[:a]
    href = options.delete :href

    link = link_to t("menu.#{menu}.#{item}"), href, options

    content_tag :li, link, item_options[:li]
  end
end
