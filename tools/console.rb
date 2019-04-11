require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cults.new("Tacos 4 Lyfe", "Houston", 1800, "It's all about the tortillas") 
cult2 = Cults.new("Thunder Cats", "Seattle", 1930, "THUNDERCATS...HHHHHOOOOOO!!") 
cult3 = Cults.new("Donkey Kong Luv", "New York", 1960, "When life gives you a bananna...eat it") 

follower1 = Followers.new("Randy Savage", 55, "OOOHHH YEAAAHHHHH")
follower2 = Followers.new("Lil Wayne", 40, "WEEZY BABYYY")
follower3 = Followers.new("Snarf", 200, "SNAAAAAAAARRRRF!!!")
follower4 = Followers.new("Rick Ross", 38, "I've got a chopper and a Benz.. HRRRUMMMFFFH")
follower5 = Followers.new("Joe", 18, "HUHHH")

bloodoath1 = BloodOaths.new(cult1, follower1, "1965-01-15")
bloodoath2 = BloodOaths.new(cult1, follower2, "1999-08-25")
bloodoath3 = BloodOaths.new(cult2, follower3, "2004-11-4")
bloodoath4 = BloodOaths.new(cult3, follower4, "1970-4-10")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

# - Cults <---many--> Followers
# -Cults <---many-- BloodOaths ---many---> followers

# First step is to model the domain you are building out. As a non-discriminatory cult recruitment platform, `Cult`s will have many `Follower`s while `Follower`s will be allowed to join many `Cult`s. How do they keep track of this? `BloodOath`s of course! You cannot join a `Cult` without making a `BloodOath`.

# * What are your models?
# * What does your schema look like?
# * What are the relationships between your models?