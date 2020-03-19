class Triangle
attr_accessor :a, :b, :c
def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end

 

def kind
   triangle?
sides = [a, b, c]
[:equilateral, :isosceles, :scalene].fetch([a,b,c].uniq.size - 1)
 end

 def triangle?
    s = a or b or c
    if not :isosceles or :equilateral or :scalene
    if s <= 0  || a + b <= c || a + c <= b || b + c <= a 
      then raise TriangleError
      end      
    end
  end
      
  class TriangleError < StandardError
    def message
      "invalid"
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




