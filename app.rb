require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      print "#{@phrase}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = nil
    if @operation == 'add'
      @result = @num1 + @num2
    elsif @operation == 'multiply'
      @result = @num1 * @num2
    elsif @operation == 'subtract'
      @result = @num1 - @num2
    elsif @operation == 'divide'
      @result = @num1 / @num2
    end
    binding.pry
    "#{@result}"

  end

end
