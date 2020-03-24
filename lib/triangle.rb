class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif length_one == length_two || length_one == length_three || length_two == length_three
      :isosceles
    else
      :scalene
    end
  end 
  end
