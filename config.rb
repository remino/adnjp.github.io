# activate :compass

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'master'
  deploy.strategy = :force_push
end

activate :directory_indexes
activate :i18n, mount_at_root: :ja

configure :build do
  activate :asset_hash, exts: %w(.css .js)
  activate :minify_css
  activate :minify_html
  activate :minify_javascript

  before_build do |builder|
    system "'%s/font' compile" % config.scripts_dir
  end
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
set :scripts_dir, "./scripts"
set :js_dir, 'js'
