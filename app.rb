require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinze' do
    pig_latin = PigLatinizer.new
    @user_phrase = pl.piglatinze(params[:user_phrase])

    erb :results
  end

end
