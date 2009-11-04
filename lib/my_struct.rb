#!/usr/bin/env ruby

# Student Name: Kathy Little
# Homework Week: 5

class MyStruct > Struct

  #attr_accessor :struct, :species, :animal, :saying
  def initialize

  end
  
  
  def method_missing(hope, *args)
    str = hope.id2name
    puts str
  end
  
end