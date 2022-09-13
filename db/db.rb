require 'pg'

def run_sql(sql, sql_params = [])
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'f1_app'})
  results = db.exec_params(sql, sql_params)
  db.close
  results
end

# HTTParty.get("http://omdbapi.com?apikey=#{ENV['OMDB_API_KEY']}&t=jaws")