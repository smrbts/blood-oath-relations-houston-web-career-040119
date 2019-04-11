
class Cults
    attr_accessor :name, :city, :founding_year

    @@all = []

    def initialize(name, city, founding_year, slogan)
        @name = name
        @city = city
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
# * `Cult#name`
#   * returns a `String` that is the cult's name
# * `Cult#location`
#   * returns a `String` that is the city where the cult is located
# * `Cult#founding_year`
#   * returns a `Fixnum` that is the year the cult was founded
# * `Cult#slogan`
#   * returns a `String` that is this cult's slogan
    end

    def self.all
        @@all
        # * `Cult.all`
#   * returns an `Array` of all the cults
    end

    def followers
        result = BloodOaths.all.select{|bloodoath| bloodoath.cults == self}

        cults = result.map {|result| result.followers}
    end

    def cult_population
        total = 0
        self.followers.each{||total| total += followers.count}
        total

        # * `Cult#cult_population`
#   * returns a `Fixnum` that is the number of followers in this cult
    end

    def recruit_follower(follower, initiation_date)
        BloodOaths.new(self, follower, initiation_date)
        # * `Cult#recruit_follower`
#   * takes in an argument of a `Follower` instance and adds them to this cult's list of followers

    end

    def self.find_by_name(name)
        self.all.select{|cult| cult.name == name}
        # * `Cult.find_by_name`
#   * takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
    end

    def self.find_by_location(city)
        self.all.select{|cult| cult.city == city}
        # * `Cult.find_by_location`
#   * takes a `String` argument that is a location and returns an `Array` of cults that are in that location
    end

    def self.find_by_founding_year(founding_year)
        self.all.select{|cult| cult.founding_year == founding_year}
        # * `Cult.find_by_founding_year`
#   * takes a `Fixnum` argument that is a year and returns all of the cults founded in that year
    end









end