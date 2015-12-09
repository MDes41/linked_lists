require 'minitest/autorun'  # => true
require 'node'              # ~> LoadError: cannot load such file -- node
require 'list'



class AppendNodeTest < Minitest::Test

  def test_list_with_head_and_tail
    list = List.new

    assert_equal nil, list.head
    assert_equal nil, list.tail
  end

  def test_if_node_is_added_and_next_node_points_to_nil
    list = List.new
    list.add_node("A")


    assert_equal "A", list.current_node.data
    assert_equal nil, list.current_node.next
  end

  def test_if_two_nodes_are_added_and_last_node_points_to_nil
    list = List.new
    list.add_node("A")
    list.add_node("B")

    # assert_equal "A", list.head.data
    assert_equal "B", list.current_node.data
    assert_equal nil, list.current_node.next
    assert_equal "A", list.head
  end

  def test_append_an_element_to_the_end_of_the_list_no_nodes
    list = List.new
    list.append("A")
    list.append("B")
    list.append("C")

    assert_equal "A", list.at(0)
    assert_equal "B", list.at(1)
    assert_equal "C", list.at(2)
    assert_equal nil, list.at(3)
  end

# prepend_an_element_at_the_beginning_of_the_list
# insert_an_element_at_an_arbitrary_position_in_the_list
# includes?_gives_back_true_or_false_whether_the_supplied_value_is_in_the_list
# pop_an_element_from_the_end_of_the_list
# count_the_number_of_elements_in_the_list
# return_the_head_value_at_the_beginning_of_the_list
# return_the_tail_value_at_the_end_of_the_list
# find_by_index_find_the_value_at_a_numeric_position
# find_by_value_finds_the_position_of_the_first_occurrence_of_value
# remove_by_index_removes_the_value_at_the_specified_index
# remove_by_value_removes_the_first_occurrence_of_the_specified_value
end

# >> Run options: --seed 20420
# >>
# >> # Running:
# >>
# >>
# >>
# >> Finished in 0.000571s, 0.0000 runs/s, 0.0000 assertions/s.
# >>
# >> 0 runs, 0 assertions, 0 failures, 0 errors, 0 skips

# ~> LoadError
# ~> cannot load such file -- node
# ~>
# ~> /Users/matt/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/matt/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/matt/Turing/1module/linked_lists/test/linked_lists_test.rb:2:in `<main>'
