
class Roller
    attr_accessor :selection

    def initialize
        @choices = [1, 2, 3, 4, 5]
    end

    def stop
        @choices.sample
    end


end
