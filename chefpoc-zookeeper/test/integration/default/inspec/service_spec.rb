describe processes('java') do
  its('list.length') { should eq 1 }
  its('users') { should eq ['zookeep+'] }
end

describe port('2181') do
  it { should be_listening }
  its('processes') { should include 'java' }
end

describe port('54981') do
  it { should be_listening }
  its('processes') { should include 'java' }
end
