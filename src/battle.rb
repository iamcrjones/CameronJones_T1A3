require("colorize")
require("tty-prompt")
require_relative("./startup.rb")
require_relative("./monster.rb")

def critical_hit
    crit = rand(1..100)
    if crit <= 10
        #selected move damage += 10
    end
end


def prompt
    prompt = TTY::Prompt.new
end

player_monster_selector = ""
def choose_monster
    player_monster_selector = TTY::Prompt.new
    return player_monster_selector.select(
        "Choose your monster to battle with, good luck...",
        [
            "Bulbasaur".colorize(:color => :black, :background => :green),
            "Charmander".colorize(:color => :black, :background => :light_red),
            "Squirtle".colorize(:color => :black, :background => :cyan)
        ]
    )
end

opponent_monster = ""
def battle_setup
    moves_1 = {"Tackle" => 10, "Grass Whip" => 15}
    moves_2 = {"Scratch" => 10, "Flamethrower" => 15}
    moves_3 = {"Headbutt" => 10, "Watergun" => 15}
    monster1 = Monster.new("Bulbasaur", 100, moves_1)
    monster2 = Monster.new("Charmander", 100, moves_2)
    monster3 = Monster.new("Squirtle", 100, moves_3)
    PlayerMonsterArray = [monster1, monster2, monster3]
    monster1 = Monster.new("Bulbasaur", 100, moves_1)
    monster2 = Monster.new("Charmander", 100, moves_2)
    monster3 = Monster.new("Squirtle", 100, moves_3)
    OpponentMonsterArray = [monster1, monster2, monster3]
    sleep(0.5)
    puts "Welcome to MY battle simulation, #{ARGV[0]}."
    sleep(1.5)
    puts "I am the champion of this application."
    sleep(1.5)
    puts "You won't be able to defeat me!!!"
    sleep(1.5)
    puts ""
    player_choice = choose_monster
    case player_choice
    when "Bulbasaur".colorize(:color => :black, :background => :green)
        puts "You have selected Bulbasaur"
        player_choice = monster_array[0]
    when "Charmander".colorize(:color => :black, :background => :light_red)
        puts "You have selected Charmander"
        player_choice = monster_array[1]
    else
        puts "You have selected Squirtle"
        player_choice = monster_array[2]
    end
    sleep(1)
    puts ""
    opponent_monster = monster_array.sample
    puts "Your opponent has selected #{opponent_monster.name}"
    puts""
    sleep(1.5)
    puts"BATTLE START!"
    sleep(0.5)
    loading_bar
    system "clear"
end
#battle