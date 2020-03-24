class Triangle
  # write code here
  
  attr_accessor :side_one, :side_two, :side_three

  def initalize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end 
  
  def kind
    if (@side_one <= 0) || (@side_two <= 0) || (@side_three <= 0)
      raise TriangleError
    elsif (@side_one + @side_two <= @side_three) || (@side_one + @side_three <= @side_two) || (@side_two + @side_three <= @side_one)
      raise TriangleError
    else
      if((@side_one == @side_two) && (@side_two == @side_three))
        :equilateral
      elsif((@side_one == @side_two) || (@side_two == @side_three) || (@side_three == @side_a))
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "illegal traingle"
    end
  end
end