require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do #enters new pirate
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = params[:pirate]

      erb :'/pirates/show'
    end

  end
end
