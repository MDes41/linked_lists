require_relative 'node'  # => true
require 'pry'            # => true

class List
  attr_reader :head, :append# => nil

  def initialize(data)
    @head = Node.new(data)  # => #<Node:0x007fe114998020 @data="beep", @next_node=nil>
  end



  def tail
    current = @head                 # => #<Node:0x007fe114998020 @data="beep", @next_node=nil>, #<Node:0x007fe114998020 @data="beep", @next_node=#<Node:0x007fe11409e2f8 @data="bop", @next_node=nil>>
    until current.next_node == nil  # => true, false, true
      current = current.next_node   # => #<Node:0x007fe11409e2f8 @data="bop", @next_node=nil>
    end                             # => nil, nil
    current                         # => #<Node:0x007fe114998020 @data="beep", @next_node=nil>, #<Node:0x007fe11409e2f8 @data="bop", @next_node=nil>
  end

  def append(node)
    new_node = Node.new(node)  # => #<Node:0x007fe11409e2f8 @data="bop", @next_node=nil>, #<Node:0x007fe1149a39e8 @data="end", @next_node=nil>
    tail.next_node = new_node  # => #<Node:0x007fe11409e2f8 @data="bop", @next_node=nil>, #<Node:0x007fe1149a39e8 @data="end", @next_node=nil>
  end

  def pop
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
  end

  def prepend(node)
    new_node = Node.new(node)   # => #<Node:0x007fe1149a3290 @data="top", @next_node=nil>
    new_node.next_node = @head  # => #<Node:0x007fe114998020 @data="beep", @next_node=#<Node:0x007fe11409e2f8 @data="bop", @next_node=#<Node:0x007fe1149a39e8 @data="end", @next_node=nil>>>
    @head = new_node            # => #<Node:0x007fe1149a3290 @data="top", @next_node=#<Node:0x007fe114998020 @data="beep", @next_node=#<Node:0x007fe11409e2f8 @data="bop", @next_node=#<Node:0x007fe1149a39e8 @data="end", @next_node=nil>>>>
  end

  def count
    current = @head
    if current.data == nil
      0
    else
      counter = 1
      until current.next_node == nil
        current = current.next_node
        counter += 1
      end
      counter
    end
  end

  def location(data)
    current = @head
    location = 0
    until current.data == data
      current = current.next_node
      location += 1
    end
    puts "I'm #{location} in the list"
  end

  def includes?(includes)
    current = @head
    until current.data == includes || current.next_node == nil
      current = current.next_node
    end
    if current.data == includes
      true
    else
      false
    end
  end

  def all
    current = @head
    list = []
    until current.next_node == nil
      list << current.data
      current = current.next_node
    end
    list << current.data
    list.join(" ")
  end

  def find(index, beats)
    current = @head
    list = []
    until current.next_node == nil
      list << current.data
      current = current.next_node
    end
    list << current.data
    total = list.count
    beats_index = index + beats
    if index <= total && index > 0 && beats > 0 && beats_index <= total
      grab = list[(index - 1)..(beats_index - 2)]
      grab.join(" ")
    end
    # elsif beats < 0 || index < 0
    #   puts "Please use positive numbers"
    # elsif beats_index > total
    #   puts "Reached End: Not enough beats to grab from declared index."
    # else
    #   puts "Not a valid entry"
  end

  def first_node
    current = @head
    total = self.count
    until total == 1
      self.pop
      current = @head
      total -= 1
    end
    current
  end

  def insert(index, string)
    current = @head
    list = []
    until current.next_node == nil
      list << current.data
      current = current.next_node
    end
    list << current.data
    insert_list = string.split
    counter = index
    string_counter = 0
    until string_counter == (insert_list.count)
      list.insert(counter, insert_list[string_counter])
      counter += 1
      string_counter += 1
    end
    list.join(" ")
  end

  #
  def break_string

    arr = string.split
    total = arr.count
    counter = 0
    list = List.new(arr[0])
    counter = 1 - total
    until counter == 0
      list.append(arr[counter])
      counter += 1
    end
    list
  end


  #
  # def insert(index, string)
  #   after_insert = @head
  #   whole_string = @head
  #   before_insert = @head
  #   pop_off = self.count - index
  #   total = self.count
  #   counter = 0
  #   until counter == index
  #     after_insert = after_insert.next_node
  #     counter += 1
  #   end
  #
  #   binding.pry
  #   until pop_off == 0
  #     self.pop
  #     before_insert = @head
  #     pop_off -= 1
  #   end
  #   # counter = 0
  #   # until counter == index
  # end
  #   binding.pry
  #
  #   binding.pry
  #
  #   # after_insert = before_insert
  #   # until after_insert.next_node == nil
  #   #   after_insert =
  #   # end
  #   # until
  #   # end
  #
  #
end
#
# break_string
# list = List.new("beep")  # => #<List:0x007fe114998048 @head=#<Node:0x007fe114998020 @data="beep", @next_node=nil>>
# list.append("bop")       # => #<Node:0x007fe11409e2f8 @data="bop", @next_node=nil>
# list.append("end")       # => #<Node:0x007fe1149a39e8 @data="end", @next_node=nil>
# list.prepend("top")      # => #<Node:0x007fe1149a3290 @data="top", @next_node=#<Node:0x007fe114998020 @data="beep", @next_node=#<Node:0x007fe11409e2f8 @data="bop", @next_node=#<Node:0x007fe1149a39e8 @data="end", @next_node=nil>>>>
# list                     # => #<List:0x007fe114998048 @head=#<Node:0x007fe1149a3290 @data="top", @next_node=#<Node:0x007fe114998020 @data="beep", @next_node=#<Node:0x007fe11409e2f8 @data="bop", @next_node=#<Node:0x007fe1149a39e8 @data="end", @next_node=nil>>>>>
#             # ~> NameError: undefined local variable or method `before_insert' for main:Object

# ~> NameError
# ~> undefined local variable or method `before_insert' for main:Object
# ~>
# ~> /Users/matt/Turing/1module/linked_lists/help/list.rb:143:in `<main>'
