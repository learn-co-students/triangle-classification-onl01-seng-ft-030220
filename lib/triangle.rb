class Triangle
 attr_accessor :side1, :side2, :side3
    
    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end

    def kind
      if (self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0) || (self.side1 + self.side2 <= self.side3 || self.side2 + self.side3 <= self.side1 || self.side1 + self.side3 <= self.side2)   
        raise TriangleError
      elsif @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2  || @side1 == @side3 || @side2 == @side3
        :isosceles
      elsif @side1 != @side2 && @side2 != @side3 && @side3 != @side1
        :scalene 
      end
    end
  
    class TriangleError < StandardError
      def message
        "Triangle knows that triangles with no size are illegal."
      end
    end

end