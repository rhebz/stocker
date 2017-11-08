class HomeController < ApplicationController
  def index
   # @stock = StockQuote::Stock.quote("aapl")
   
   if params[:id] == ""
    @nothing = "Hey, you forget to enter symbol"
    elsif
        if params[:id]
            
            #@stock = StockQuote::Stock.quote("aapl,tsla")
        
            # I also tried use this code to show the content of StockQuote in hash format but I can't extract it
            @stock  = StockQuote::Stock.json_quote(params[:id])
        end
   end
   rescue JSON::ParserError
    []
  end
  
  def about
  end
end
