require_relative "./helpermethods.rb"
class Triangle

  include HelperMethods
  attr_accessor :x, :y, :z

  def initialize(x, y, z)   #=> sides length of the triangle.
    @x = x
    @y = y
    @z = z
  end

  def kind

    if invalid?
      raise TriangleError
    elsif equilateral?
      return :equilateral
    elsif isosceles?
      return :isosceles
    elsif scalene?
      return :scalene
    end
  end


  class TriangleError < StandardError
  end

end
