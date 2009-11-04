#!/usr/bin/env ruby

###
# Student Name: FIXME (no really, fill this in)
# Homework Week: 5
#
###
# Description
#
# Make the tests below pass.  You will need to implement a class called
# MyStruct in lib/my_struct.rb to do so.
#
# The functionality of MyStruct is described in lib/my_struct.rb
#

$: << 'lib'

require 'test/unit'
require 'my_struct'

class TestMyStruct < Test::Unit::TestCase
  def setup
    @struct = MyStruct.new
  end

  def test_initial_state
    assert @struct.empty?, "struct is initially empty"
  end

  def test_missing_attributes
    assert_nil @struct.some_attribute, "missing attributes are nil"
  end

  def test_creating_attributes
    @struct.cats = "awesome!"
    assert_equal "awesome!", @struct.cats
  end

  def test_to_hash
    expected = {
      :cats => "seriously awesome you guys",
      :dogs => "okay I guess",
      :fish => "why?"
    }

    expected.each do |key, value|
      @struct.send "#{key}=".intern, value
    end

    assert_equal expected, @struct.to_hash
  end
end
