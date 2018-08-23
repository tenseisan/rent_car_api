# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'active_model_serializers', '~> 0.10.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'devise_token_auth' # токены вместо кукисов
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'

group :development, :test do
  gem 'faker' # для демо-данных машин
  gem 'rubocop' # код-стайл
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug' # дебаггер
  gem 'pry-rails' # удобная консоль
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
