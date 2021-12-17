require_relative ("./startup.rb")
require_relative ("./battle.rb")
require_relative ("./rules.rb")
require ('tty-prompt')
require ('tty-font')

def main_menu
#Prompt to display menu options
def menu_options
    main_menu_header = TTY::Font.new(:doom)
    puts main_menu_header.write("Terminal Monsters")
    sleep(1)
    main_menu_prompt = TTY::Prompt.new
    return main_menu_prompt.select("What would you like to do?", ["Battle!", "Rules", "Exit"])
end
#Loop for the main menu application which calls rules and battle and also exits app
answer = ''
while answer != "Exit"
    answer = menu_options
    system "clear"
    case answer
    when "Battle!"
        monsters = battle_setup
        battle(monsters[0], monsters[1])
    when "Rules"
        rules
    else
        puts "Goodbye for now!"
        sleep(0.75)
        system "clear"
        next
    end
end
end