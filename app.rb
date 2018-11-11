require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse!
    "#{@reversed_name}"
  end

end