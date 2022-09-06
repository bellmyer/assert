test Example do
  assert "should initialize" do |subject|
    subject.new.instance_of?(subject)
  end
end