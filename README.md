# Rails app to import CSV files and display data
This Ruby on Rails app imports data from CSV files and displays them into tables and JSON format.

## Model
There exists 3 tables
Events with Columns: id, name, location, price, date
People with Columns: id, first_name, last_name, email, gender, city, street, state, country, language, birthdate
Attendance with Columns: person_id, event_id

## Controllers
Event controller was the only one used due to the simplicity of this model.

# Views
Only two views exist, the main '/' and '/event/#'. Anything else redirects to '/'.

# API
You can submit a GET request to '/event/#.json' to get a JSON Response of attendees of a specific event.

# Creation
To create an app similar to this, follow these steps:
1. `Gem install rails`
2. `Rails new Event --database=postgresql`
3. `Rails g controller event`

    a. Create a home.html.erb file in /Events/app/views/event/
	
	b. Edit /Events/config/routes.rb with root 'event#home'
4. `rails g model Event name:string location:string price:string date:date`
5. `rails g model Person first_name:string last_name:string email:string gender:string city:string city:string street:string state:string country:string language:string birthdate:string`
6. `rails g model Attendance event:references person:references`
7. Edit database.yml
    a. Added `template: template0` to the default setup
8. `Rake db:create`
9. `Rake db:migrate`
10. Create your views, controllers, and routes. Add any migrations if you need to edit the model.
11. `rails s -p $PORT -b $IP `