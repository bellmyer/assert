module Assert
  def test test_subject, &block
    @subject = test_subject

    block.call

    puts "SUCCESS!"
  end

  def assert assertion, &block
    unless block.call
      puts "\n\n"
      raise(subject.to_s + ' ' + assertion)
    end
  end

  def subject
    @subject
  end
end