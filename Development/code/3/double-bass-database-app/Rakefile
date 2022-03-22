require_relative './config/environment'
require 'sinatra/activerecord/rake'

def reload
    load_all "./app" if Dir.exists?("./app")
end

desc "rake console"
task :console do 
    puts "Loading..."
    reload
    puts "Starting the pry console..."
    Pry.start
end

desc "reset db"
task :reset_db do
    puts "dropping the database"
    system "rm ./db/development.sqlite"
    system "rm ./db/schema.rb"
    puts "running migrations"
    system "rake db:migrate"
    puts "seeding the database"
    system "rake db:seed"
    puts "done seeding"
end