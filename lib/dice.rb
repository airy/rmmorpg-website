# Copyright (c) 2006, Jamis Buck (jamis@37signals.com)
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# * Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# * Neither the name of Jamis Buck nor the names of its contributors may be
#   used to endorse or promote products derived from this software without
#   specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

# Dice class. It represents one or more homogeneous dice, with an optional
# integer increment and an optional integer multiplier. It is best used in
# conjunction with the Integer methods added at the bottom of this file.
#
#   4.d6      # => Dice.new(4, 6)
#   4.d6 + 2  # => Dice.new(4, 6) + 2
#             # => Dice.new(4, 6, 2)
#   4.d6 * 10 # => Dice.new(4, 6) * 10
#             # => Dice.new(4, 6, 0, 10)
class Dice
  attr_reader :sides, :count, :increment, :multiplier

  def initialize(count, sides, increment=0, multiplier=1)
    @sides, @count = sides, count
    @increment, @multiplier = increment, multiplier
  end

  # Return a new Dice object, with the given multiplier. If the dice already
  # have a multipler, it accumulates.
  def *(n)
    Dice.new(count, sides, increment, multiplier * n)
  end

  # Return a new Dice object, with the given increment. If the dice already
  # have an increment, it accumulates.
  def +(n)
    Dice.new(count, sides, increment+n, multiplier)
  end

  # Same as adding a negative increment.
  def -(n)
    self.+(-n)
  end

  # Roll the dice. If +collect+ is false (the default), returns an integer.
  # Otherwise, it returns an array with one element for each rolled die.
  #
  # Note that the multipler (if any) is applied to each die, while the
  # increment is applied at the end. If an array is returned, the
  # increment (times the multiplier) will be the last element of the array.
  def roll(collect=false)
    result = collect ? [] : 0

    count.times do
      roll = (rand(sides) + 1) * multiplier
      result = result.send(collect ? :push : :+, roll)
    end

    if increment != 0
      result = result.send(collect ? :push : :+, increment * multiplier)
    end

    result
  end

  # Return the best +n+ of the dice rolled. If +collect+ is false (the default)
  # an integer is returned, otherwise an array of the best rolls is returned.
  def best(n, collect=false)
    list = to_a.sort.last(n)
    collect ? list : list.inject(0) { |s,v| s + v }
  end
  
  # Returns the highest possible integer that may be returned by rolling
  # this dice instance.
  def max
    (count * sides + increment) * multiplier
  end

  # Returns the lowest possible integer that may be returned by rolling
  # this dice instance.
  def min
    (count + increment) * multiplier
  end

  # Calculates and returns the average value (as a float) returned by rolling
  # this dice instance.
  def average
    (max + min) / 2.0
  end

  # Same as calling #roll with a non-false parameter.
  def to_a
    roll(true)
  end

  # Returns a familiar representation of the dice instance.
  def to_s
    s = "#{count}d#{sides}"
    s << "%+d" % increment if increment != 0
    s << "*%d" % multiplier if multiplier != 1
    s
  end

  alias to_i roll
  alias inspect to_s
end

class Integer
  # only define methods for common dice. I *could* use method_missing, but
  # this approach helps catch typos, since I almost certainly wouldn't
  # intend to do 2.d9 (it being a rare die, and not used by any RPG games
  # I'm aware of). Also, the optimist in me likes to think this is more
  # efficient than method_missing, though I haven't done any benchmarks. :)
  [4,6,8,10,12,20,100].each do |sides|
    define_method("d#{sides}") { Dice.new(self, sides) }
  end
end