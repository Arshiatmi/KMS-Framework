require 'colorize'
cmd = ""
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
  puts "[1] -> Information Gathering".colorize(:cyan)
  puts "[2] -> bypass".colorize(:cyan)
  puts "[3] -> Hash".colorize(:cyan)
  puts "[4] -> Others".colorize(:cyan)
  puts
  puts "[99] -> exit".colorize(:cyan)
  print " >>"
  cmd = gets.chomp
  if cmd.include? "1"
    system "python Python/ig.py"
  elsif cmd.include? "2"
    system "python Python/bypass.py"
  elsif cmd.include? "3"
    system "python Python/Hash.py"
  elsif cmd.include? "4"
    system "python Python/others.py"
  elsif cmd.include? "99"
  else
    puts "Wrong Command! Please Try Again!"
  end
end
