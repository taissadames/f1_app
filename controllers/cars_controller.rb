require './models/car'

get '/' do
    cars = all_cars()
  
    erb :'cars/index', locals: {
      cars: cars
    }
end
  
get '/cars/new' do
    erb :'cars/new'
end
  
post '/cars' do
    name = params['name']
    image_url = params['image_url']

    create_car(name, image_url)

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