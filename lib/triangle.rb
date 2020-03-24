class Triangle
  # write code here
  def initalize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  def kind
    triangle?
    if side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
  end
  
  def triangle?
    triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
    [side_one, side_two, side_three].each do |side|
      triangle << false if side <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end
  
  
  
  
  class TriangleError < StandardError
    
  end 
end
