class Square
  attr_reader :side, :x, :y

  def initialize(side, x = 0, y = 0)
    @side = side
    @x = x
    @y = y
  end

  def length
    side
  end

  def width
    side
  end

  def diameter
    Math::sqrt(2) * side
  end

  def perimeter
    side * 4
  end

  def area
    side ** 2
  end

  def contains_point?(a, b)
    half_side = side/2.to_f
    left =  x - half_side
    right = x + half_side
    top = y + half_side
    bottom = y - half_side
      if a >= left && a <= right && b >= bottom && b <= top
        true
      else
        false
      end
  end
end
