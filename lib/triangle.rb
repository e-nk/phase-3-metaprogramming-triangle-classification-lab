class Triangle
  # write code here
  attr_accessor :length, :width, :height
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if is_triangle?
      sides = [length, width, height]
      if sides.uniq.size == 1
        :equilateral
      elsif sides.uniq.size == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end

  end
  class TriangleError < StandardError
  end
  private
  def is_triangle?
    sorted = [length, width, height].sort
    longest_side = sorted.pop
    longest_side < sorted.sum
  end

  def triangle_type

  end


end




