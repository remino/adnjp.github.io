require 'slim/smart'

Time.zone = 'Tokyo'

activate :blog do |blog|
  blog.permalink = ':title.html'
  blog.sources = 'articles/:year-:month-:day-:title.html'
end

activate :directory_indexes
activate :i18n, mount_at_root: :en, path: '/:locale/'
activate :livereload

set :css_dir, 'css'
set :images_dir, 'images'
set :js_dir, 'js'
set :partials_dir, 'partials'
