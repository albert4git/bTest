#!/usr/bin/env ruby
#
# mini.rb
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
# file:///home/red/Documents/RUBY/A%20Gentle%20Introduction%20to%20Routine%20Task%20Automation%20with%20Ruby%20%E2%80%93%20Something%20Somewhere.html
#require "profile"

full_name = "My Name is Ravikanth\r\n" 
full_name.chop!
puts full_name   #=> "My Name is Ravikanth"
full_name.chop!  #=> "My Name is Ravikant"
puts full_name   #=> "My Name is Ravikanth"
full_name.chop!  #=> "My Name is Ravikant"
puts full_name   #=> "My Name is Ravikanth"
full_name.chop!  #=> "My Name is Ravikant"
puts full_name   #=> "My Name is Ravikanth"

# puts "Creating directory..."
# exec 'mkdir', 'new_directory'
# the code here and below will never be read

# spawn – gives you a good level of control
# Takes the same parameters as exec and system: [env,] command [,options]
# env Optional hash with :name => environment_name, e.g. spawn(:name => 'development', 'echo hello world') 
# A single string which is passed to the standard shell (with shell expansion), e.g. exec('cat * | grep denied')
# The command name and one or more plain arguments (without shell expansion), e.g. exec *[ 'git', 'add', 'Gemfile' ]
# If the first command is a two-element array, the first element is taken as the command to be executed, and the second argument is used as the argv[0] value, which may show up in process listings. E.g. exec ['ls', 'foo'], 'foo.bar', 'baz.bar'


def RUBYback()
  if system 'cp', '/full/path/to/my_file', '/target/directory'
    puts "You made it!"
  else
    puts "Something went wrong"
  end
end

puts "===========================================================================1==="

def download(file_URL, file_name)
  system("wget -c \"#{file_URL}\" -O \"#{file_name}\"")
end


puts "===========================================================================1==="

puts "Hello World!"
puts "Hello Again"
puts "I like typing this."
puts "This is fun."
puts "Yay! Printing."
puts "I'd much rather you 'not'."
puts 'I "said" do not touch this.'

puts "===========================================================================2==="
def prnthelp
  puts "Hello sir, what would you like to do?"
  puts "1: dir"
  puts "2: exit"
end

# def loop2
#   prnthelp
#   case gets.chomp.to_i
#     when 1 then puts "you chose dir!"
#     when 2 then puts "you chose exit!"
#       exit
#   end
#   loop
# end

puts "===========================================================================3==="
def do_convert(ip)
  ipa = ip.split('.')
  ipb1 = "%08b" % ipa[0]
  ipb2 = "%08b" % ipa[1]
  ipb3 = "%08b" % ipa[2]
  ipb4 = "%08b" % ipa[3]
  ipb = "#{ipb1}.#{ipb2}.#{ipb3}.#{ipb4}"
  printf "%-14s %-35sn","Dotted Decimal","#{ip}"
  printf "%-14s %-35sn","Binary", "#{ipb}" 
end

ips = "111.222.333.444"
do_convert(ips)

puts "\n "
puts "===========================================================================4==="

# print "Enter an IP Address .. "
# STDOUT.flush
# ips = gets.chomp
# do_convert(ips)

def get_prime_no_upto(number)
  start = 2
  primes = (start..number).to_a
  (start..number).each do |no|
    (start..no).each do |num|
      if ( no % num  == 0) && num != no
        primes.delete(no)
        break
      end
    end
  end
  primes
end

puts get_prime_no_upto(50)

puts "===========================================================================5==="


##Just check whether $0 is the same as __FILE__:
# tell_me.rb
#def tell_me
#    if $0 == __FILE__
#      puts "I'm a command line script now!"
#    else
#      puts "Someone else is running me (I feel so violated...)"
#    end
#end

## CLI
#$ ruby ./tell_me.rb
#I'm a command line script now!

## IRB
#> load './tell_me.rb'
#Someone else is running me (I feel so violated...)
##=> true


puts "===========================================================================5==="

name = 'ls'
result = `which #{name}`
print result 

# system "ls", "/"

puts "===========================================================================6==="

system "bash", "-c", "cmp <( ls ~/Pictures ) <( ls ~/Music )"
if $?.exitstatus == 0
  puts "They are the same, yay!"
else
  puts "They are not the same"
end

puts "===========================================================================7==="

# output = `ls`
# puts output

puts "===========================================================================8==="

# system "sudo apt-get -y install vvim"
# if $?.exitstatus > 0
#   puts "I failed to install VVim, I am very sorry :'("
# end

puts "===========================================================================9==="
class Periods
  def each
    yield "Classical"
    yield "Jazz"
    yield "Rock"
  end
end
periods = Periods.new
for genre in periods
  print genre, " "
end

puts "===========================================================================11==="
