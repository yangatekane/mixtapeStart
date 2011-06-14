require 'faker'


namespace :db do
desc "Fill database with sample data"
task :populate => :environment do
Rake::Task['db:reset'].invoke
Artist.create!(:name => "Example User",
	       :email => "example@railstutorial.org",
               :genre=> "foobar",
	       :category=>"foo",
               :record_label => "foobar", 
	       :artist_type=>"foobar",
	       :website=>"foobar")
99.times do |n|
name = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
genre= "genre"

Artist.create!(:name => name,
	      :email => email,
	      :genre=>genre,
	      :category=>genre,
	      :record_label=>genre,
	      :artist_type=>genre,
	      :website=>genre)
end
end
end


