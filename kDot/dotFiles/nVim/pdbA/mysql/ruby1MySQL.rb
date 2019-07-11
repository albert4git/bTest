#!/usr/bin/env ruby
#
# ruby1MySQL.rb
# Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#


require 'mysql2'  
  
# my = Mysql.new(hostname, username, password, databasename)  
# con = Mysql2.new('localhost', 'root', 'mypass', 'ruby')  

con = Mysql2('localhost', 'root', 'mypass', 'ruby')  
rs = con.query('select * from atest')  
rs.each_hash { |h| puts h['name']}  
con.close
