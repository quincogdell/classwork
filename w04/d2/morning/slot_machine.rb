
class SlotMachine
    attr_accessor :name, :rollers, :selections

    def initialize(name = "SLOT MACHINE NUMERO UNO", num_rollers = 3)
        @name = name
        @rollers = []
        @selections = []
        num_rollers.times { @rollers << Roller.new }
    end

    def rollers(roller_num)
        @rollers << roller_num
    end

    def pull
        # starts the game
        puts "you are playing, baby!"
    end


    def add_selection(choice)
        @selections << choice
    end

    def stop_roller(roller_num)
        roller_index = roller_num - 1
        roller = @rollers[roller_index]
        add_selection(roller.stop)
        if @selections.size == @rollers.size
           did_you_win?
        end

    end

    def did_you_win?
        if @selections.uniq.size == 1
            puts "You Win!"
        else
            puts "You Loose"
        end
    end

end
