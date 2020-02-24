#!/usr/bin/env ruby
#
# ruby1SQLight.rb
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
#=========================================================
begin
  require 'sqlite3'
  db = SQLite3::Database.open "dodo10.db"
  db.execute "CREATE TABLE IF NOT EXISTS Cars(Id INTEGER PRIMARY KEY, Name TEXT, Price INT)"
  db.execute "INSERT INTO Cars VALUES(21,'22Audi',52642)"
  db.execute "INSERT INTO Cars VALUES(22,'22Mercedes',57127)"
  db.execute "INSERT INTO Cars VALUES(23,'22Skoda',9000)"
  db.execute "INSERT INTO Cars VALUES(24,'22Volvo',29000)"
  db.execute "INSERT INTO Cars VALUES(25,'22Bentley',350000)"
  db.execute "INSERT INTO Cars VALUES(26,'22Citroen',21000)"
  db.execute "INSERT INTO Cars VALUES(27,'22Hummer',41400)"

rescue SQLite3::Exception => e
  puts "Exception occurred"
  puts e

ensure
  db.close if db
end
#=========================================================
begin
require 'sqlite3'
  db = SQLite3::Database.open "dodo10.db"
  stm = db.prepare "SELECT * FROM Cars LIMIT 20"
  rs = stm.execute
  rs.each do |row|
    puts row.join "\s"
  end

rescue SQLite3::Exception => e
  puts "Exception occurred"
  puts e

ensure
  db.close if db
end

#====================New?DB=====================================

begin
  db = SQLite3::Database.new ":memory:"
  puts db.get_first_value 'SELECT SQLITE_VERSION()'
rescue SQLite3::Exception => e
  puts "Exception occurred"
  puts e
ensure
  db.close if db
end
#=========================================================

begin
        db = SQLite3::Database.open "dodo10.db"
        db.execute "CREATE TABLE IF NOT EXISTS Cars(Id INTEGER PRIMARY KEY, Name TEXT, Price INT)"
        db.execute "INSERT INTO Cars VALUES(1,'Audi',52642)"
        db.execute "INSERT INTO Cars VALUES(2,'Mercedes',57127)"
        db.execute "INSERT INTO Cars VALUES(3,'Skoda',9000)"
        db.execute "INSERT INTO Cars VALUES(4,'Volvo',29000)"
        db.execute "INSERT INTO Cars VALUES(5,'Bentley',350000)"
        db.execute "INSERT INTO Cars VALUES(6,'Citroen',21000)"
        db.execute "INSERT INTO Cars VALUES(7,'Hummer',41400)"

rescue SQLite3::Exception => e
        puts "Exception occurred"
        puts e

ensure
        db.close if db
end

#=========================================================

begin

        db = SQLite3::Database.open "dodo10.db"
        stm = db.prepare "SELECT * FROM Cars LIMIT 5"
        rs = stm.execute
        rs.each do |row|
                puts row.join "\s"
        end

rescue SQLite3::Exception => e

        puts "Exception occurred"
        puts e

ensure
        stm.close if stm
        db.close if db
end
