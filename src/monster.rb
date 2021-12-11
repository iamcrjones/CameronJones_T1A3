#Monster class will be defined here
class Monster
    attr_reader :name, :moves
    attr_accessor :health
    def initialize(name, health, moves)
        @name = name
        @health = health
        @moves = moves
    end
    def to_s
        return "#{@name} #{@health} #{@moves}"
    end
end

