class BloodOaths
    attr_accessor :cults, :followers, :initiation_date

    @@all = []

    def initialize(cults, followers, initiation_date)
        @cults = cults
        @followers = followers
        @initiation_date = initiation_date
        @@all << self

        # * `BloodOath#initiation_date`
#   * returns a `String` that is the initiation date of this blood oath in the format _YYYY-MM-DD_.
    end

    def self.all
        @@all
        # * `BloodOath.all`
#   * returns an `Array` of all the blood oaths
    end

end