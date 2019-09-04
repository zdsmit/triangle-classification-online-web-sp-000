class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    valid_triangle?
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    if greater_than_zero? && equal_triangle?
      true
    else
      raise TriangleError
    end
  end

  def equal_triangle?
    if side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2 + side_3 > side_1
      true
    else
      false
  end

  def greater_than_zero?
    if side_1 > 0 && side_2 > 0 && side_3 > 0
      true
    else
      false
    end
  end

  class TriangleError < StandardError
  end

end
