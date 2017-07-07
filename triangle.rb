# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  s = (a + b + c) / 2.0
  t = (s - a) * (s - b) * (s - c)
  raise TriangleError if a * b * c <= 0 || t <= 0
  case [a, b, c].uniq.size
  when 1 then :equel_sides 
  when 2 then :equel_2_sides 
  when 3 then :not_equel_sides
  end 
end
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
