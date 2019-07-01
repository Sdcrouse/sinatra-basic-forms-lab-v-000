require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :index
  end
  
  get "/new" do 
    erb :create_puppy
  end
  
  post "/puppy" do 
    new_puppy = Puppy.new(params)
    @name, @breed, @age = new_puppy.name, new_puppy.breed, new_puppy.age
    erb :display_puppy
  end

end
