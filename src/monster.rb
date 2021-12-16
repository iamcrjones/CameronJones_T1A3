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

    # This function takes a move and a monster.
    # It uses the move against that monster and prints out all the details
    def use_move(move, enemy_monster)
        # Print the name of the monster and move
        puts "#{@name} used #{move}"
        puts ""
        sleep(1)

        # Figure out how much damage the move does
        damage = @moves[move]

        # Figure out if the move should crit
        should_crit = rand(0..100) <= @critical_chance * 100

        # If it should crit print that out and set the new damage
        if should_crit
            puts "It was a critical hit!"
            sleep(1)
            damage = (damage * 1.5).round
        end

        # Print how much damage it does
        puts "#{@name} does #{damage} damage"
        sleep(1)

        # Deal the damage to the enemy monster and show it's health
        puts ""
        enemy_monster.health -= damage
        enemy_monster.show_health_bar
        sleep(1.5)
    end

    def ask_moves
        moves = TTY::Prompt.new
        return moves.select("Which move would you like to use?", @moves.keys)
    end

    def show_health_bar
        health_bar = TTY::ProgressBar.new("#{@name} :current/:total HP [:bar]", total: @max_health, width: 20)
        health_bar.current = @health
        health_bar.stop
    end
end

