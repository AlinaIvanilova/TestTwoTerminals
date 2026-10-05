require 'sinatra'
require 'rack/cors'

# Налаштування CORS
use Rack::Cors do
  allow do
    # ⬇️ ЗАМІНІТЬ на URL вашого фронтенд-сервісу на Render
    # Можна додати кілька origin через кому:
    origins 'http://localhost:8080',
            'https://sinatra-frontend-pxfn.onrender.com'

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