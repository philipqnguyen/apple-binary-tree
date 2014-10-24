require 'spec_helper'
require 'apple_tree'

describe 'Apple Tree' do
  before do
    @apple = tim = AppleTree.new('Tim')
    jony = tim.left = AppleTree.new('Jony')
    phil = tim.right = AppleTree.new('Phil')
    phil.left = AppleTree.new('Craig')
    phil.right = AppleTree.new('Eddie')
    jony.left = AppleTree.new('Dan')
    katie = jony.right = AppleTree.new('Katie')
    katie.left = AppleTree.new('Phil')
    katie.right = AppleTree.new('Andrea')
  end

  it 'should run a pre order traversal' do
    @apple.pre_order.must_equal(
      'Tim, Jony, Dan, Katie, Phil, Andrea, Phil, Craig, Eddie')
  end

  it 'should run an in order traversal' do
    @apple.in_order.must_equal(
      'Dan, Jony, Phil, Katie, Andrea, Tim, Craig, Phil, Eddie')
  end

  it 'should run a post order traversal' do
    @apple.post_order.must_equal(
      'Dan, Phil, Andrea, Katie, Jony, Craig, Eddie, Phil, Tim')
  end
end
