require_relative 'config/environment'
require "pry"
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/medicines/:id' do
    @medicine = all_the_medicines.select do |medicine|
      medicine.id == params[:id]
    end.find
      erb :'/medicines/show.html'
  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    # binding.pry
    @num1 = params[:num1].to_i  ##params[:num1] is a string
    @num2 = params[:num2].to_i  ##params[:num2] is a string
    "#{@num1 * @num2}"
  end


end
