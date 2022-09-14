# get '/views/quotes' do
#     # character = params['author']
  
#     result = HTTParty.get("https://f1-drivers-quotes.p.rapidapi.com/quotes")
  
#     # all_quotes = result.parsed_response
#     all_quotes = result
    
#     p all_quotes
#     erb :quotes, locals: {
#       all_quotes: all_quotes
#     }
# end