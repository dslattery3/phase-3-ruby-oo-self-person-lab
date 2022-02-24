class Person
    attr_reader :name

    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        if value > 10
            value = 10
        elsif value < 0 
            value = 0 
        end
        @happiness = value
    end

    def hygiene
        @hygiene
    end

    def hygiene=(value)
        if value > 10
            value = 10
        elsif value < 0 
            value = 0 
        end
        @hygiene = value
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(value)
        @bank_account += value
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(@happiness-2)
            friend.happiness=(friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end
    end


end