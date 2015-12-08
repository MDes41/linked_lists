require_relative 'node'  # => true

class List
  attr_accessor :name, :append, :list, :data, :all  # => nil

  def initialize
    @data = nil   # => nil
    @tail = nil   # => nil
  end

  def all
    @data  # => #<Node:0x007fc1cb1af8f8 @next=#<Node:0x007fc1cb1af740 @next=#<Node:0x007fc1cb1af588 @next=nil, @data="C">, @data="B">, @data="A">
    # puts "#{@data}"  # => nil
  end


  def prepend(node)

    if @data.nil?
      @data = node
      @tail = node
    else
      node.next = @head
      @data = node
    end
    return self
  end



  def append(node)
    if @data.nil?        # => true, false, false
      @data = node       # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">
      @tail = node       # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">
    else
      @tail.next = node  # => #<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, #<Node:0x007ff7b40ad378 @next=nil, @data="C">
      @tail = node       # => #<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, #<Node:0x007ff7b40ad378 @next=nil, @data="C">
    end                  # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">, #<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, #<Node:0x007ff7b40ad378 @next=nil, @data="C">
    return self          # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=nil, @data="A">, @tail=#<Node:0x007ff7b40ad800 @next=nil, @data="A">>, #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, @data="A">, @tail=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">>, #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=#<Node:0x007ff7b40ad378 @next=nil, @data="C">, @data="B">, @data="A">, @tail=#<Node:0x007ff7b40ad378 @next=nil, @data="C">>
  end



end

node1 = Node.new("A")  # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">
node2 = Node.new("B")  # => #<Node:0x007ff7b40ad5d0 @next=nil, @data="B">
node3 = Node.new("C")  # => #<Node:0x007ff7b40ad378 @next=nil, @data="C">

list = List.new     # => #<List:0x007ff7b40ad210 @data=nil, @tail=nil>
list.append(node1)  # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=nil, @data="A">, @tail=#<Node:0x007ff7b40ad800 @next=nil, @data="A">>
list.data           # => #<Node:0x007ff7b40ad800 @next=nil, @data="A">
list.append(node2)  # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, @data="A">, @tail=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">>
list.data           # => #<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=nil, @data="B">, @data="A">
list.append(node3)  # => #<List:0x007ff7b40ad210 @data=#<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=#<Node:0x007ff7b40ad378 @next=nil, @data="C">, @data="B">, @data="A">, @tail=#<Node:0x007ff7b40ad378 @next=nil, @data="C">>
list.data           # => #<Node:0x007ff7b40ad800 @next=#<Node:0x007ff7b40ad5d0 @next=#<Node:0x007ff7b40ad378 @next=nil, @data="C">, @data="B">, @data="A">
list.all            # => nil

# >> #<Node:0x007ff7b40ad800>
