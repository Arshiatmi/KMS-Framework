require 'colorize'
cmd = ""
file = File.open("ErrorLog.txt", "w+")
while cmd != "99"
  puts "========================================================".colorize(:red)
  puts "|".colorize(:red) + "                                    __                ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "            |  /                   /  \\               ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "            | /                   |                   ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "            |/       /\\    /\\      \\                  ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "            |\\      /  \\  /  \\      \\                 ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "            | \\    /    \\/    \\      \\                ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "            |  \\                      |               ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "                                   \\__/               ".colorize(:cyan) + "|".colorize(:red)
  puts "|".colorize(:red) + "                                                      ".colorize(:cyan) + "|".colorize(:red)
  puts "========================================================".colorize(:red)
  puts
  puts "  [1] -> Information Gathering".colorize(:cyan)
  puts "  [2] -> bypass".colorize(:cyan)
  puts "  [3] -> Hash".colorize(:cyan)
  puts "  [4] -> XSS".colorize(:cyan)
  puts "  [5] -> Others".colorize(:cyan)
  puts
  puts "  [99] -> exit\n".colorize(:cyan)
  print " >> "
  cmd = gets.chomp
  @catcher = nil
  if cmd.include? "1"
    @catcher = system "python Python/ig.py"
  elsif cmd.include? "2"
    @catcher = system "python Python/bypass.py"
  elsif cmd.include? "3"
    @catcher = system "python Python/Hash.py"
  elsif cmd.include? "4"
    @catcher = system "python Python/xss.py"
  elsif cmd.include? "5"
    @catcher = system "python Python/others.py"
  elsif cmd.include? "99"
    @catcher = True
  else
    puts "Wrong Command! Please Try Again!"
    @catcher = True
  end
  if @catcher.nil?
    file.write("Error at Main.rb, lines 26 - 39: Issue executing Python system command. Make sure Python is installed and works on your terminal system.\n")
  end
end
