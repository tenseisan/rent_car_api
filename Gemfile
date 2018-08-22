source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'devise_token_auth' # токены вместо кукисов

group :development, :test do
  gem 'sqlite3'
  gem 'simplecov' # покрытие тестами
  gem 'rubocop'   # код-стайл
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails' # удобная консоль
  gem 'pry-byebug' # дебаггер
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
