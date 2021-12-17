system "clear"
require("tty-progressbar")

def seed
#Makes sure user enters a username with at least one character other than spaces
while ARGV.length == 0
    print "Enter a valid user name: "
    name = gets.chomp
    if name == ""
        next
    elsif name.strip.empty?
        next
    else
        ARGV[0] = name
        break
    end
end
#If no second argument entered, then user will be prompted to enter difficulty
while ARGV.length < 2
    print "Type (Normal/Hard) to select difficulty level: "
    mode = STDIN.gets.chomp
    if mode == ""
        next
    else
        ARGV[1] = mode
        break
    end
end
#Assigns command line arguments to variables
if ARGV.size > 0
    user = ARGV[0]
    difficulty = mode
end
#If user has entered a difficulty but is not correctly typed, they are propmpted to enter it correctly
while ARGV.size == 2
    if ARGV[1].capitalize != "Hard" && ARGV[1].capitalize != "Normal"
        print "Enter a valid difficulty level (Normal/Hard): "
        ARGV[1] = STDIN.gets.chomp
        next
    else
        difficulty = ARGV[1].capitalize
        break
    end
end
def loading_bar
    loading = TTY::ProgressBar.new("[:bar]", total: 20)
    20.times do
        sleep(0.1)
        loading.advance  # by default increases by 1
      end
 end
#Loading progress to appear that app takes time to load for user experience
def prepare_progress
    puts "Setting up the battlefield..."
    sleep(0.5)
    loading_bar
    sleep(0.25)
    system "clear"
    puts "Powering up the monsters..."
    sleep(0.5)
    loading_bar
    sleep(0.25)
    system "clear"
    puts " Entering Main Menu..."
    sleep(0.5)
    loading_bar
    sleep(0.25)
    system "clear"
end
#Hard difficulty selected as argument
if difficulty == "Hard"
    puts "Activating #{difficulty} mode..."
    sleep(0.5)
    loading_bar
    system "clear"
    puts "Welcome, #{user}. Please wait while we initialize your program..."
    sleep(1)
    prepare_progress
    sleep(0.5)
else
    #No difficulty argument is specified
    system "clear"
    puts "Welcome, #{user}. Please wait while we initialize your program..."
    sleep(1)
    prepare_progress
    sleep(0.5)
end
end
