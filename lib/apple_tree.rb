# Apple tree
class AppleTree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end

  def pre_order(arr = [])
    arr << @value
    left.pre_order(arr) if left
    right.pre_order(arr) if right

    arr.join(', ')
  end

  def in_order(arr = [])
    left.in_order(arr) if left
    arr << @value
    right.in_order(arr) if right

    arr.join(', ')
  end

  def post_order(arr = [])
    left.post_order(arr) if left
    right.post_order(arr) if right
    arr << @value

    arr.join(', ')
  end
end

tim = AppleTree.new('Tim')
jony = tim.left = AppleTree.new('Jony')
phil = tim.right = AppleTree.new('Phil')
phil.left = AppleTree.new('Craig')
phil.right = AppleTree.new('Eddie')
jony.left = AppleTree.new('Dan')
katie = jony.right = AppleTree.new('Katie')
katie.left = AppleTree.new('Phil')
katie.right = AppleTree.new('Andrea')
