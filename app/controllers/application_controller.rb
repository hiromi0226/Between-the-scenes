require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :homepage
  end
  
  get '/index' do
    return erb :index
  end
  
   get '/hawaii' do
    return erb :hawaii
  end
  
  get '/europe' do
    return erb :europe
  end
  
   get '/newyork' do
    return erb :newyork
  end
  
   get '/california' do
    return erb :california
  end
  
  
  post '/results' do
    points_array = params.values
    total = 0
    points_array.each do |point|
      total += point.to_i
    end
    
    
    result = calculate_result(total)
    
    if result == "New York"
      return erb :newyork
    elsif result == "Europe"
      return erb :europe
    elsif result == "Hawaii"
      return erb :hawaii
    else
      return erb :california
    end
    
  end
end
