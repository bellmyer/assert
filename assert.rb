module Assert
  def test test_subject, &block
    @subject = test_subject.is_a?(Proc) ? test_subject.call : test_subject

    block.call
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