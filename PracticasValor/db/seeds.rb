# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

employee = User.new
employee.first_name = "Marco"
employee.last_name = "Pacheco"
employee.email = "marcopache@gmail.com"
employee.email_confirmation = "marcopache@gmail.com"
employee.job_title = "Boss"
employee.password = "pacheco"
employee.password_confirmation = "pacheco"
employee.save!