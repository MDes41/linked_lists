require_relative 'node'
require 'pry'

class List
  attr_reader :head

  def initialize(data)
    @head = Node.new(data)
  end

  def tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def append(node)
    new_node = Node.new(node)
    tail.next_node = new_node
  end

  def pop
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
  end

  def prepend(node)
    new_node = Node.new(node)
    new_node.next_node = @head
    @head = new_node
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

  def all?
    
  end


end
