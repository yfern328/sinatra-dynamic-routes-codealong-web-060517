require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  #This is a sample static route.
  get '/hello' do
    "Hello World!"
    #erb :hello
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    erb :hello
    #"Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    erb :goodbye
    #"Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @result = (@num1 * @num2).to_s
    erb :multiply
  end

end
