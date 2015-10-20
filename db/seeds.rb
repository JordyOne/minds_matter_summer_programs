# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "James", last_name: "Bond", email: "james@example.com", password: "changeme")
User.create(first_name: "Dr.", last_name: "No", email: "no@example.com", password: "changeme")
User.create(first_name: "Felix", last_name: "Leiter", email: "james@example.com", password: "changeme")
User.create(first_name: "General", last_name: "Gogol", email: "general@example.com", password: "changeme")
User.create(first_name: "Miss", last_name: "Moneypenny", email: "miss@example.com", password: "changeme")
User.create(first_name: "Bill", last_name: "Tanner", email: "bill@example.com", password: "changeme")

User.all.each do |user|
  puts "#{user.first_name} #{user.last_name} has been created"
end

Program.create(title: "Engineering Camp", school: "Dartmouth", start_date: 10.days.ago, end_date: 1.days.ago, application_deadline: Date.today, website: "www.www.example.com", description: "The best program in the nation")
Program.create(title: "Math Camp", school: "Harvard", start_date: 7.days.ago, end_date: 2.days.ago, application_deadline: Date.today, website: "www.www.example.com", description: "The best program in the nation")
Program.create(title: "Soccer Camp", school: "Vanderbilt", start_date: 9.days.ago, end_date: 2.days.ago, application_deadline: Date.today, website: "www.www.example.com", description: "The best program in the nation")

Program.all.each do |program|
  puts "#{program.title} at #{program.school} has been created"
end