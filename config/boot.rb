db_url = ENV["DATABASE_URL"] || "postgres://localhost:5432/mister_user_app_development"
DB = Sequel.connect(db_url)
Dir['./helpers/*.rb'].each { |helper| require helper }
Dir['./models/*.rb'].each { |model| require model }
require './controllers/application_controller'
Dir['./controllers/*.rb'].each { |controller| require controller }
Dir['./lib/*.rb'].each { |lib| require lib }
