def all_cars()
    run_sql("SELECT * FROM cars ORDER BY id")
end

def create_car(name, image_url)
    run_sql("INSERT INTO cars(name, image_url) VALUES($1, $2)", [name, image_url])
end

def get_car(id)
    run_sql("SELECT * FROM cars WHERE id = $1", [id])[0]
end

def update_car(id, name, image_url)
    run_sql("UPDATE cars SET name = $2, image_url = $3 WHERE id = $1", [id, name, image_url])
end

def delete_car(id)
    run_sql("DELETE FROM cars WHERE id = $1", [id])
end