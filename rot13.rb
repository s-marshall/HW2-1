require 'sinatra'
require 'haml'

class Rot13App < Sinatra::Base

  def encrypt(s)
    s.tr('a-zA-Z','n-za-mN-ZA-M')
  end

  get '/rot13' do
    haml :rot13
  end
  
  post '/rot13' do
    haml :rot13, :locals => {:text => encrypt(params[:text])}
  end

end
