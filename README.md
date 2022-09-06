Assert
======

## Description

This is a simple module to facilitate test-driven development (TDD) in Ruby. It provides a simple
Assert module that defines a VERY simple testing DSL, along with a test runner script. This
is not intended for production applications, but for introducing developers to the concepts
of testing and TDD.

## Examples

There is an included Example class:

    # lib/example.rb
    class Example
    end
    
And an included test file for it:

    # tests/example_test.rb
    test Example do
      assert "should initialize"
        subject.new.instance_of?(subject)
      end
    end
    
The `test` block above defines the subject of the test, the `Example` class in this case.
Any `assert` blocks have access to this subject automatically.
An assert block should return true if the test passes, and false otherwise.

### Defining Subject as a Lambda

A subject can also be defined as a lambda. It will be run once and memoized, and the result
will be stored as the subject. The previous test could be re-written as:

    test -> { Example.new } do
      assert "should initialize" do
        subject.instance_of?(Example)
      end
    end

## Running Tests

Running the test script in the home directory will load any files in the `lib` directory, 
run any test files in the `tests` directory, and either print out "SUCCESS" or raise an
error if it encounters a failed test:

    ruby test

