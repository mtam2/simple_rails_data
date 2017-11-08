require 'csv'

desc 'Imports all data from csv files'
task :import => [:environment] do 
    assistance_file = 'lib/assets/assistance.csv'
    event_file = 'lib/assets/events.csv'
    people_file = 'lib/assets/people.csv'
    
    CSV.foreach(event_file, headers: true, encoding: 'ISO-8859-1') do |row|
        Event.create! row.to_hash
    end
    CSV.foreach(people_file, headers: true, encoding: 'ISO-8859-1') do |row|
        Person.create! row.to_hash
    end
    CSV.foreach(assistance_file, headers: true, encoding: 'ISO-8859-1') do |row|
        Attendance.create! row.to_hash
    end
end