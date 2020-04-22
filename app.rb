require_relative 'config/environment'

class App < Sinatra::Base
 
    get "/" do
        erb :index
    end

    get "/new" do
        erb :new
    end

    post "/puppy" do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        # @name = params[:name]
        # @breed = params[:breed]
        # @age = params[:age]
        # binding.pry
        erb :puppy
    end

end
