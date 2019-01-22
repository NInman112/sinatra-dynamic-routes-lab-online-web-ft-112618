require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    phrase = []
    params.each.with_index do |key,value,index|
      binding.pry
      if value < params.count
        phrase << "#{value} "
      else
        phrase << "#{value}."
      end
      phrase.join
    end
    binding.pry

  end
end
