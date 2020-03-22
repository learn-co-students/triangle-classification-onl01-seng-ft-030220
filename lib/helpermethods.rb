module HelperMethods

  def scalene?
    if (x != y && x != z) && (x + y > z  || x + z > y)
      return true
    end
  end

  def isosceles?
    if (x == y && z < x + y) || (x == z && y < x + z) || (y == z && x < y + z)
      return true
    end
  end

  def equilateral?
    if x == y && x == z
      return true
    end
  end

  def invalid?
    if x <= 0 || y <= 0 || z <= 0
      return true
    elsif (x + y <= z  || x + z <= y || y + z <= x)
      return true
    end
  end


end
