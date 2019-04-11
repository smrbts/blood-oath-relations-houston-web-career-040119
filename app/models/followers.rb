# **`Follower`**


class Followers
    attr_accessor :name, :age, :motto

    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
# * `Follower#name`
#   * returns a `String` that is the follower's name
# * `Follower#age`
#   * returns a `Fixnum` that is the age of the follower
# * `Follower#life_motto`
#   * returns a `String` that is the follower's life motto
    end

    def self.all
        @@all
        # * `Follower.all`
#   * returns an `Array` of all the followers
    end

    def cults
        result = BloodOaths.all.select{|bloodoath| bloodoath.followers == self}

        cults = result.map {|result| result.cults}
        # * `Follower#cults`
#   * returns an `Array` of this follower's cults
    end

    def join_cult(cult, initiation_date)
        BloodOaths.new(cult, self, initiation_date)
        # * `Follower#join_cult`
#   * takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
    end

    def self.of_a_certain_age(age)
        self.all.select{|followers| followers.age >= age}
        # * `Follower.of_a_certain_age`
#   * takes a `Fixnum` argument that is an age and returns an `Array` of followers who are the given age or older
    end

end