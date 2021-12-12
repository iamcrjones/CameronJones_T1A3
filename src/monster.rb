require("tty-progressbar")
require("tty-prompt")

#Monster class will be defined here
class Monster
    attr_reader :name, :moves, :critical_chance
    attr_accessor :health, :health_bar, :max_health
    def initialize(name, health, moves, critical_chance = 0.1)
        @name = name
        @max_health = health
        @health = health
        @moves = moves
        @critical_chance = critical_chance
    end
    def to_s
        return "#{@name} #{@health} #{@moves}"
    end
end

