class Triangle
  # write code here
  def initalize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
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
  
  
  
  
  class TriangleError < StandardError
    
  end 
end
