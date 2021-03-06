class Board
attr_accessor :cells

  @cells = []

  def initialize
      self.cells = Array.new(9, " ")
    end

  def reset!
    self.cells = Array.new(9, " ")
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(user_input)
    self.cells[user_input.to_i-1]
  end

  def full?
    self.cells.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.count("X") + self.cells.count("O")
  end

  def taken?(position) #check board position
      self.cells[position.to_i-1] == "X" ||
      self.cells[position.to_i-1] == "O"
    end

    #board position -1 because of test using range 1-9 (user input numbers)

    def valid_move?(user_input)
      user_input = user_input.to_i
      !(taken?(user_input)) && user_input.between?(1, 9)
    end

    def update(position, player)
      self.cells[position.to_i-1] = player.token
  end



end
