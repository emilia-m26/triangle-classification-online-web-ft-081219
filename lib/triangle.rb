class Triangle
  attr_accessor :l1, :l2, :l3
  
  def intialize(l1, l2, l3)
    @l1=l1
    @l2=l2
    @l3=l3
  end
  
  # def valid?
  #     (l1+l2 <= l3) || (l1+l3 <= l2) || (l2+l3 <= l1) && l1<=0 ||l2 <=0||l3 <=0
  #     raise TriangleError
  # end
  
  def kind 
    # valid?
    if l1 == l2 && l2 == l3 
        :equilateral
    elsif l1 == l2 || l2 == l3 || l1==l3
        :isosceles
    else
        :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end
