Assert
======

This is a simple module to facilitate test-driven development in ruby.  If you have a class called life:

    # life.rb
    class Life
    
    end
    
Then you can create a test file for it:

    # life_test.rb
    require 'assert'
    require 'life'
    
    test Life do
      assert "should initialize" do |subject|
        subject.new.instance_of?(subject)
      end
    end

The "test" block will do some cleanup at the end for you, as well as set the "subject" that can be used within the block.  Or if "subject" is too abstract, just use the class names directly:

    # life_test.rb
    require 'assert'
    require 'life'

    test Life do
      assert "should initialize" do
        Life.new.instance_of?(Life)
      end
    end

The "assert" method specifies some aspect of your code that you are testing.  You pass a description that will appear if your code doesn't pass your test, and you define a block to be run.  The test passes if the block returns true.  The test fails otherwise.