# require 'dotenv/load'
require 'sinatra'
require 'bcrypt'
require './db/db'

# this makes the session hash work
enable :sessions

require './controllers/foods_controller'
require './controllers/users_controller'
require './controllers/sessions_controller'

require './helpers/sessions_helper'