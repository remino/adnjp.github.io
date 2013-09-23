require 'slim/smart'

Time.zone = 'Tokyo'

activate :blog do |blog|
  blog.layout = :blog
  blog.permalink = 'blog/:year/:month/:day/title.html'
  blog.sources = 'articles/:year-:month-:day-:title.html'
end

activate :i18n, mount_at_root: :en, path: '/:locale/'
activate :livereload

activate :sync do |sync|
  sync.fog_provider = data.sync[environment].provider
  sync.fog_directory = data.sync[environment].directory
  sync.fog_region = data.sync[environment].region
  sync.aws_access_key_id = data.sync[environment].key_id
  sync.aws_secret_access_key = data.sync[environment].secret_key

  sync.existing_remote_files = 'keep'
  sync.gzip_compression = true
  sync.after_build = false
end

set :css_dir, 'css'
set :images_dir, 'images'
set :js_dir, 'js'
set :partials_dir, 'partials'
