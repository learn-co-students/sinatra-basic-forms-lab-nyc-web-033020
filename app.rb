require_relative 'config/environment'
require_relative 'models/puppy.rb'
class App < Sinatra::Base
  get '/' do
    erb :index
  end
  get '/new' do
    erb :create_puppy
  end
  post '/puppy' do
    @puppy = Puppy.new({
      name: params[:name],
      age: params[:age],
      breed: params[:breed]})
    erb :display_puppy
  end
end
