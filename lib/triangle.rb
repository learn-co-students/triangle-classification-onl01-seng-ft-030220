require 'pry'

class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all = [@side1, @side2, @side3]
  end

  def kind
    if @all.any? { |side| !(side.positive?) } || @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
    else
      if @all.uniq.length == 1
        :equilateral
      elsif @all.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
