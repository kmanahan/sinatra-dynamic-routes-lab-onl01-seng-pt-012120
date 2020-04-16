require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
    binding.pry
  end  
  
  get '/square/:number' do
    @num = params[:number] 
    @squared = @num.to_i * @num.to_i
    @squared.to_s
  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase] + " " 
    @result = @phrase * @number.to_i 
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word5 = params[:word5] 
    @word4 = params[:word4] + " "
    @word3 = params[:word3] + " "
    @word2 = params[:word2] + " "
    @word1 = params[:word1] + " "
    
    @result = @word1 + @word2 + @word3 + @word4 + @word5 + "."
    @result
  end 
  
  get  '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    
    if @operation == "add" 
      @result = @number1.to_i + @number2.to_i
      @result.to_s
      elsif @operation == "subtract" 
        @result = @number1.to_i - @number2.to_i 
        @result.to_s
      elsif @operation == "multiply" 
        @result = @number1.to_i * @number2.to_i 
        @result.to_s
      elsif @operation == "divide" 
        @result = @number1.to_i / @number2.to_i 
        @result.to_s
    end
  end 
  
end