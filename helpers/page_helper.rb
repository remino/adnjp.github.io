module PageHelper
  def heading(page_title, level = :h1)
    title page_title if level.to_sym == :h1
    content_tag level, page_title
  end

  def html_title
    return t 'title' unless @title
    t 'layout.title_format', page: @title, site: t('title') if @title
  end

  def title(new = nil)
    @title = nil if new == false
    @title = new if new
    @title
  end
end
