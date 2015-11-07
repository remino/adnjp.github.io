module LinkHelper
  def link_to(*args, &block)
    url_arg_index = block_given? ? 0 : 1
    options_index = block_given? ? 1 : 2

    url = args[url_arg_index]
    options = args[options_index] || {}

    if !options[:target] && url =~ %r{^([a-zA-Z0-9]+:)?//}
      options[:target] = '_blank'
    end

    add_class_in_attrs options, :active if url == current_page.url

    args[url_arg_index] = url
    args[options_index] = options

    super(*args, &block)
  end
end
