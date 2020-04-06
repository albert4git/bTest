#!/usr/bin/env ruby
#
# berg2.rb
# Copyright (C) 2020 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#

select * from atest;

require 'sqlite3'
  db = SQLite3::Database.open "dodo10.db"
  stm = db.prepare "SELECT * FROM Cars LIMIT 20"
  rs = stm.execute
  rs.each do |row|
    puts row.join "\s"
  end

output = `ls`
puts output

system "bash", "-c", "cmp <( ls ~/bakBuk ) <( ls ~/bakBuk2 )"
if $?.exitstatus == 0
  puts "They are the same, yay!"
else
  puts "They are not the same"
end
