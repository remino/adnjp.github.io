module PageHelper
  def html_title
    return t 'title' unless current_page.data.title

    t 'layout.title_format', page: current_page.data.title,
      site: t('title')
  end
end
