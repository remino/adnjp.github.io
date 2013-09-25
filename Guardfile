guard 'middleman' do
  watch %r{^config.rb}
  watch %r{^data/.*}
  watch %r{^public/.*}
  watch %r{^source/.*}
  watch %r{^views/.*}

  callback(:run_start) { `bundle exec middleman build --clean` }
end
