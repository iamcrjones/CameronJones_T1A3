def rules
    return_to_menu_prompt = TTY::Prompt.new
    system "clear"
    puts "The rules of this game are as follows: "
    sleep(2)
    puts "* Once you select to battle, there is no returning. Choose your monster and battle!"
    sleep(2)
    puts "* You will face a very challenging foe, but you must win!"
    sleep(2)
    puts "* Your monster and your opponent's monster have 100 health points each. Get theirs to zero before you!"
    sleep(2)
    puts "* Each monster has 2 moves to choose from, one with 10 damage, the other 15."
    sleep(2)
    puts "* Each time you choose a move, your monster has a chance to land a critical hit, dealing bonus damage."
    sleep(2)
    puts "* Your turn will be first, and then your opponent will make their move. This will repeat until one side loses."
    sleep(2)
    puts "* Have fun!"
    sleep(2)
    puts ""
    print "Press any key to return to menu..."
    STDIN.getch
    sleep(0.5)
    system "clear"
end