source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'active_model_serializers', '~> 0.10.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'tiddle'
gem 'validates_overlap' # валидация для аренды

group :development, :test do
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker' # для тестов которых нет и db:seed
  gem 'rspec-rails'
  gem 'rubocop' # код-стайл
  gem 'shoulda-matchers'
  gem 'simplecov', require: false # для того чтобы знать, что тестов нету
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
