require_relative ("./startup.rb")
require ('tty-prompt')

def main_menu

def menu_options
    main_menu_prompt = TTY::Prompt.new
    return main_menu_prompt.select("What would you like to do?", ["Battle!", "Rules", "Exit"])
end

answer = ''
while answer != "Exit"
    answer = menu_options
    exit_prompt = TTY::Prompt.new
    system "clear"
    case answer
    when "Battle!"
        puts "Let the battle begin!!!"
    when "Rules"
        puts "Rules will reside here"
    else
        exit_prompt.yes?("Are you sure you wish to exit?")
        puts "Goodbye for now!"
        sleep(0.75)
        system "clear"
        next
    end
end

# while menu_options != "Exit"
#     puts "not exit"
# end
end