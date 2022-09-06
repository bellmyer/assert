module Assert
  def color
    true
  end

  def test test_subject, &block
    @test_subject = test_subject

    block.call

    puts "SUCCESS!"
  end

  def assert assertion, &block
    unless block.call(@test_subject)
      puts "\n\n"
      raise(@test_subject.to_s + ' ' + assertion)
    end
  end
end