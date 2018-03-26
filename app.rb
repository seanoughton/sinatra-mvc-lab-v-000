require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
     erb :user_input
   end

   post '/user_input' do
     text_from_user = params[:user_text]
     #@analyzed_text = TextAnalyzer.new(text_from_user)
     erb :view_piglatin
   end

end
