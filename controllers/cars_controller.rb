require './models/car'

# get '/cars/all_listing' do
# #   cars = all_cars()
# "Hello"
# end

get '/' do
    # cars = all_cars()
    owner_id = session['user_id']
    logged_cars = car_owner(owner_id)
    erb :'cars/index', locals: {
      cars: logged_cars
    }
end
  
get '/cars/new' do
    erb :'cars/new'
end
  
post '/cars' do
    name = params['name']
    image_url = params['image_url']
    owner_id = session['user_id']

    create_car(name, image_url, owner_id)

    redirect '/'
end

get '/cars/:id/edit' do
    id = params['id']
    car = get_car(id)
    
    erb :'cars/edit', locals: {
      car: car
    }
end
  
put '/cars/:id' do
    id = params['id']
    name = params['name']
    image_url = params['image_url']
  
    update_car(id, name, image_url)
    redirect '/'
end
  
delete '/cars/:id' do
    id = params['id']
  
    delete_car(id)
    redirect '/'
end