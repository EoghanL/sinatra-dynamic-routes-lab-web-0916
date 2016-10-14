require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @final_arr = []
    @num.to_i.times { @final_arr << @phrase }
    "#{@final_arr.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final_sntnc = params[:captures].join(" ") + "."
    "#{@final_sntnc}"

  end

  

  get '/:operation/:number1/:number2' do

    operate = params[:operation]
    operate = "+" if operate == "add"
    operate = "-" if operate == "subtract"
    operate = "*" if operate == "multiply"
    operate = "/" if operate == "divide"

    num_1 = params[:number1]
    num_2 = params[:number2]
    #binding.pry
    @final_num = eval num_1 + operate + num_2
    "#{@final_num}"

  end


end
