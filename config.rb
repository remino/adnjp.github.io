require 'slim/smart'

Time.zone = 'Tokyo'

# Ignore, I18n, and blogs are ordered below for a localised blog

ignore %r{^blog/}
ignore %r{^index\.[a-z]{2}\.}

activate :i18n, mount_at_root: false, path: '/:locale/'

activate :blog do |blog|
  blog.name = 'en'
  blog.permalink = 'en/blog/:title.html'
  blog.sources = 'en/blog/:year-:month-:day-:title.html'
  blog.taglink = 'en/blog/:tag.html'
end

activate :blog do |blog|
  blog.name = 'ja'
  blog.permalink = 'ja/blog/:title.html'
  blog.sources = 'ja/blog/:year-:month-:day-:title.html'
  blog.taglink = 'ja/blog/:tag.html'
end

activate :directory_indexes
activate :livereload

configure :build do
  activate :minify_css
  activate :minify_javascript
end

set :css_dir, 'css'
set :images_dir, 'images'
set :js_dir, 'js'
set :markdown_engine, :redcarpet
set :partials_dir, 'partials'
