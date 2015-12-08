class Node
  attr_accessor :next, :data  # => nil

  def initialize(data)
    @next = nil
    @data = data
  end
end
