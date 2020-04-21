require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])

        erb :display_puppy
    end



end


# <form method="post" action="/puppy">
#   
#   <input type="text" id="name" name="name">
#   
#   <input type="text" id="breed" name="breed">
#   
#   <input type="text" id="age" name="age">
#   <input type="submit" value="submit">
# </form>