========================================================================
Week 5 Homework
========================================================================

This week's homework involves two tasks. First, you must create a simple
banking system. Then, you must implement a simplified version of the
OpenStruct class from the standard library.  Details on both problems
are below.

------------------------------------------------------------------------
Banking System
------------------------------------------------------------------------

Implement a simple bank system.  It should have Bank and Account
classes, with the following features:

Bank
 * has a number of accounts
 * provides methods to:
   * create an account
   * close an account
   * make deposits into a specific account
   * make withdrawals from a specific account

Account
 * has a balance
 * provides methods to:
   * return the balance
   * deposit funds
   * withdraw funds

Some skeletal tests have been provided to give you a hint as to the
direction you should be headed, but those tests are meant only as hints.
Feel free to throw them away and start over, but as with everything else
you must have tests for all of your code.

------------------------------------------------------------------------
MyStruct
------------------------------------------------------------------------

Create a class called MyStruct that behaves similarly to the OpenStruct
class in the standard library.  Specifically, your class must have the
following features:

 * allow new attributes to be added to your struct by simply calling
   them into existence:

     struct = MyStruct.new
     struct.some_attribute # => nil
     struct.some_attribute = "something cool"
     struct.some_attribute # => "something cool"

 * know when no attributes have been defined via an #empty? method
 * allow conversion to a hash via a #to_hash method

You may also add whatever other features you like, but you must also add
tests for any features you add.

-----
Hints
-----

 * ri Kernel#method_missing
 * remember that "obj.foo = :bar" is passing the "foo=" message to obj
