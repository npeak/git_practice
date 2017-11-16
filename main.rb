require 'colorize'
require 'git'

class Main
    include git

def self.menu
    puts "1 Enter git command".colorize(:cyan)
    puts "2 Exit".colorize(:red)
    choice = gets.to_i
    case choice
    when 1
        puts "Enter git command"
        git.puts_git(gets.strip)
        menu
     when 2
        abort('Goodbye!')
     else
        puts "invalid choice".colorize(:yellow)
        menu
     end
    end
end    
    Main.menu