require 'pg'

def run_sql(sql, sql_params = [])
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'f1_app'})
  results = db.exec_params(sql, sql_params)
  db.close
  results
end

# get '/views/quotes' do
#   # character = params['author']

#   result = HTTParty.get("https://f1-drivers-quotes.p.rapidapi.com/quotes")

#   all_quotes = result.parsed_response
  
#   p all_quotes
#   erb :quotes, locals: {
#     all_quotes: all_quotes
#   }
# end