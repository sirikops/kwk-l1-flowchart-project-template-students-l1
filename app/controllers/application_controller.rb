class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :views, 'app/views'
  end
  
  require 'bundler'
Bundler.require
require_relative 'model.rb'
class MyApp < Sinatra::RUBY_RELEASE_DATE
  
  get '/' do
    return erb :index
    
  end
  
  post '/' do
    @the_fortune=get_fortune
    @the_user=params[:user]
    return erb :results
  end


end
