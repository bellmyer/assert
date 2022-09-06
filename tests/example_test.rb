test Example do
  assert "should initialize" do
    subject.new.instance_of?(subject)
  end
end

test -> { Example.new } do
  assert "should initialize" do
    subject.instance_of?(Example)
  end
end