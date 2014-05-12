# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode

# def rectangle_area
# 	width * height
# ENDDEF

# def rectangle_perimeter
# 	width*2 + height*2
# ENDDEF

# def rectangle_diagonal
# 	root of width^2 * height^2
# ENDDEF

# def rectangle_square?
# 	if width = height
# 		return true
# 	ENDIF
# ENDDEF


# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
  	(@width * 2) + (@height * 2)
  end

  def diagonal
  	diag = (@width ** 2) + (@height ** 2)
  	Math.sqrt(diag)
  end

  def square?
  	if @width == @height
  		true
  	else
  		false
  	end
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
  	(@width * 2) + (@height * 2)
  end

  def diagonal
  	Math.sqrt((@width ** 2) + (@height ** 2))
  end

  def square?
  	@width == @height ? true : false
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end


rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20, 20)

p Rectangle.method_defined?(:area) === true
p rectangle.area === 200
p square.area === 400
p Rectangle.method_defined?(:perimeter) === true
p rectangle.perimeter === 60
p square.perimeter === 80
p rectangle.diagonal === 22.360679774997898
p square.diagonal === 28.284271247461902
p rectangle.square? === false
p square.square? === true
# 5. Reflection 
# This was fairly easy for me, and I imagine it was one of the simpler Ruby problems. Still, though, I enjoyed it. There is something intensely satisfying about making assert statements clear. It's like gamifying code, and it keeps me going no matter what until it's all finished. I like it. As for this problem, I didn't hit any hiccups really, and finding Math.sqrt will come in handy in the future for sure. Ruby has some seriously convenient methods built-in. Sometimes I worry that the more I learn Ruby, the less I will be able to learn a less semantic language like C. From what I understand, in legacy languages, the programmer has to type out literally everything. I would be interested in trying that out. 


