require 'minitest/autorun'
require 'minitest/pride'
require_relative 'list'

class ListTest < Minitest::Test

  def test_that_it_finds_the_end_of_the_list
    list = List.new("beep")

    assert_equal "beep", list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_that_it_adds_a_new_node
    list = List.new("beep")
    list.append("bop")

    assert_equal "bop", list.tail.data
    assert_equal nil, list.tail.next_node
  end

  def test_pops_the_end_of_the_element_off
    list = List.new("beep")
    list.append("bop")
    list.append("top")
    list.append("hop")
    list.pop

    assert_equal "top", list.tail.data
  end

  def test_prepend_node_to_head
    list = List.new("beep")
    list.append("bop")
    list.append("top")
    list.append("hop")
    list.prepend("boop")

    assert_equal "boop", list.head.data
    assert_equal "hop", list.tail.data
    assert_equal "hop", list.head.next_node.next_node.next_node.next_node.data
  end

  def test_count_number_of_data_in_the_list
    list = List.new("beep2")
    list.append("bop3")
    list.append("top4")
    list.append("hop5")
    list.prepend("boop1")

    assert_equal 5, list.count

    list.append("beep6")

    assert_equal 6, list.count
  end

  def test_if_item_is_included_in_the_list
    list = List.new("beep")
    list.append("bop")
    list.append("beep")
    list.append("bobo")
    list.prepend("top")

    assert_equal true, list.includes?("beep")
    assert_equal true, list.includes?("bop")
    assert_equal true, list.includes?("top")
    assert_equal false, list.includes?("hop")
    assert_equal false, list.includes?("boop")
    assert_equal true,  list.includes?("bobo")
  end

  def test_to_return_all_the_values_in_the_list
    list = List.new("beep")
    list.append("bop")
    list.append("beep")
    list.append("bobo")
    list.prepend("top")

    assert_equal "top beep bop beep bobo", list.all
  end


end
