require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinze' do
    @user_input = PigLatinizer.new(params[:user_input])

    erb :results
  end

end
