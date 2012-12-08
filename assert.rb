module Assert  
  def color
    true
  end
  
  def test test_subject, &block
    @test_subject = test_subject
    
    block.call
    
    puts "\n\nSUCCESS!\n\n"
  end
  
  def assert assertion, &block
    unless block.call(@test_subject)
      puts "\n\n"
      raise assertion unless block.call(@test_subject)
    end
  end
end