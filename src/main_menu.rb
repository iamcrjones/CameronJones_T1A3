require_relative ("./startup.rb")
require_relative ("./battle.rb")
require_relative ("./rules.rb")
require ('tty-prompt')

def main_menu

def menu_options
    main_menu_prompt = TTY::Prompt.new
    return main_menu_prompt.select("What would you like to do?", ["Battle!", "Rules", "Exit"])
end

answer = ''
while answer != "Exit"
    answer = menu_options
    system "clear"
    case answer
    when "Battle!"
        battle
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