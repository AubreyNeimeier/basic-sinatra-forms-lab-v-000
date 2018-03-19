require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
    #the newteam erb file is a form. The method for the form is post and the action is /team. This is because the info needs to be POSTED. Where? Not on this HTML page, but on the /Team html page/view.
  end


  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @sf = params[:sf]
    @pf = params[:pf]
    @c = params[:c]
    erb :team
  end

end
