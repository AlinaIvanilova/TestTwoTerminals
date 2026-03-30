require 'sinatra'
require 'rack/cors'

# Налаштування CORS
use Rack::Cors do
  allow do
    origins 'http://localhost:8080'  # дозволяємо запити з фронтенду
    resource '*',
             headers: :any,
             methods: [:get, :post, :options]
  end
end

# Простий маршрут
get '/hello' do
  content_type :json
  { message: 'Привіт з бекенду (Sinatra)!' }.to_json
end

# Для тестування можна додати ще один маршрут
get '/' do
  'Бекенд працює!'
end