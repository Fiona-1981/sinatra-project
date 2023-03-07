require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
   end

  # get '/names' do
  #   return "Julia, Mary, Karim"
  # end
  
  names = "Joe,Alice,Zoe,Julia,Kieran".split(",")
  ordered_names = names.sort.join(",")

  p names
  p ordered_names


  post '/sort-names' do
    # names = params[:names]
    return ordered_names
  end

end