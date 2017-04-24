require 'pry'

class Board
  attr_accessor :cells

  def reset!
    self.cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def initialize
    reset!
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    puts "Please enter 1-9:"
    index = input.to_i - 1
    self.cells[index]
  end

  def full?
    # binding.pry
    # self.cells.include?(" ")
    self.cells.include?("X") && self.cells.include?("O") if !self.cells.include?(" ")

  end

end
