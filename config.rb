# activate :compass
activate :directory_indexes
activate :i18n, mount_at_root: :ja

configure :build do
  activate :asset_hash, exts: %w(.css .eot .js .ttf .woff .woff2)
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end

configure :development do
  activate :livereload
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

ignore '/js/include/*'

set :css_dir, 'css'
set :environment, ENV['MM_ENV'].to_sym if ENV['MM_ENV'].present?
set :images_dir, 'img'
set :js_dir, 'js'
