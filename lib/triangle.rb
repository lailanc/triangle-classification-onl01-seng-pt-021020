class Triangle
  # write code here
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    triangle?
    if length_one == length_two && length_two == length_three
      :equilateral
    elsif length_one == length_two || length_one == length_three || length_two == length_three
      :isosceles
    else
      :scalene
    end
  end 
  end
