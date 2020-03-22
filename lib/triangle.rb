class Triangle
   def initialize(line_1, line_2, line_3)
     @line_1 = line_1
     @line_2 = line_2 
     @line_3 = line_3
   end 
   def kind()
    if (@line_1 <= 0) || (@line_2 <= 0) || (@line_3 <= 0)
      raise TriangleError
    elsif (@line_1+@line_2 <= @line_3) || (@line_1+@line_3 <= @line_2) || (@line_2+@line_3 <= @line_1)
      raise TriangleError
    else
      if (@line_1 == @line_2) && (@line_2 == @line_3)
        :equilateral
      elsif (@line_1 == @line_2) || (@line_2 == @line_3) || (@line_1 == @line_3)
        :isosceles
      elsif (@line_1 != @line_2) && (@line_2 != @line_3) && (@line_1 != @line_3)
        :scalene
      end
    end

  end


class TriangleError < StandardError
end
end