require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
   end

  get '/names' do
    return "Julia, Mary, Karim"
  end

end