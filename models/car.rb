def all_cars(current_user)
    run_sql("SELECT * FROM cars WHERE owner = $1 ORDER BY id", [current_user])
end

def create_car(name, image_url, current_user)
    run_sql("INSERT INTO cars(name, image_url, owner) VALUES($1, $2, $3)", [name, image_url, current_user])
end

def get_car(id, current_user)
    run_sql("SELECT * FROM cars WHERE id = $1 AND owner = $2", [id, current_user])[0]
end

def update_car(id, name, image_url, current_user)
    run_sql("UPDATE cars SET name = $2, image_url = $3 WHERE id = $1 AND owner = $4", [id, name, image_url, current_user])
end

def delete_car(id)
    run_sql("DELETE FROM cars WHERE id = $1", [id])
end