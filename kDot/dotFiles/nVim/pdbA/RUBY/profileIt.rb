#!/usr/bin/env ruby
#
# profileIt.rb Copyright (C) 2019 red <red@red-Swift-SF113-31>
#
# Distributed under terms of the MIT license.
#
# You can add profiling to your code using the command-line option -r profile, or
#   from within the code using require "profile". For example:


require "profile"
class Peter
  def initialize(amt)
    @value = amt
  end
  def rob(amt)
    @value -= amt
    amt
  end
end

class Paul
  def initialize
    @value = 0
  end
  def pay(amt)
    @value += amt
    amt
  end
end

peter = Peter.new(1000)
paul = Paul.new

1000.times do
  paul.pay(peter.rob(10))
end

