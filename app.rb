require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse
    @reversed_name
  end

  get '/square/:number' do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @new_phrase = ""
    @num.to_i.times do |x|
      @new_phrase << @phrase
    end
    @new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    # @result = @num1.to_i.method(@operation).(@num2.to_i)
    # @result.to_s
    #add => +
    case @operation
    when "add"
      @result = @num1 + @num2
      @result.to_s
    when "subtract"
      @result = @num1 - @num2
      @result.to_s
    when "multiply"
      @result = @num1 * @num2
      @result.to_s
    when "divide"
      @result = @num1 / @num2
      @result.to_s
    end
  end

end
