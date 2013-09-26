module MenuHelper
  ::NEWLINE = "\n" unless defined? ::NEWLINE

  def lang_menu(options = {})
    options.reverse_merge! class: 'nav'

    items = langs.each.map do |lang|
      next unless lang != @lang
      path = current_page.url.gsub %r{^/#{@lang}/}, "/#{lang}/"
      content_tag :li, link_to(t("locale.#{lang}"), path)
    end.join ''

    menu_list items, options
  end

  def menu(name, options = {})
    options.reverse_merge! class: 'nav'
    items = data.menu[name].keys.map { |item| menu_item name, item }.join ''
    menu_list items, options
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

  def menu_list(content, options = {})
    options.reverse_merge! tag: :ul
    content_tag options.delete(:tag), content, options
  end
end
