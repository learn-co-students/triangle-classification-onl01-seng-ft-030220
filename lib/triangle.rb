class Triangle
attr_accessor :a, :b, :c
def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end


def kind

if a == b && b == c 
   :equilateral
elsif a == b || b == c || a == c 
  :isosceles
elsif a != b || b != c || c != a 
   :scalene
else 
  raise TriangleError
  end
   
end
end
   

   
  class TriangleError < StandardError
    def message
      "triangle error"
    end
  end
end

      
#      if a <= 0 || a + b <= c 
#  return :equilateral if a == b && b == c
#  return :isosceles if a == b || b == c
#  return :scalene
# end






#case %w[a b c].uniq.size
#  when 1 then :equilateral
#  when 2 then :isosceles
#  when 3 then :scalene




