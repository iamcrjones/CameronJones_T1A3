system "clear"
require("tty-progressbar")

def seed
#Makes sure user enters a username with at least one character
while ARGV.length == 0
    print "Enter a valid user name: "
    name = gets.chomp
    if name == ""
        next
    else
        ARGV[0] = name
        break
    end
end
if ARGV.size > 0
    user = ARGV[0]
    difficulty = ARGV[1]
end

def loading_bar
    loading = TTY::ProgressBar.new("[:bar]", total: 20)
    20.times do
        sleep(0.1)
        loading.advance  # by default increases by 1
      end
 end

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
