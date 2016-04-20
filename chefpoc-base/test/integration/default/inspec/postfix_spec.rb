describe port(25) do
  it { should be_listening }
  its('processes') { should include 'master' }
end

describe processes('master') do
  its('list.length') { should eq 1 }
  its('users') { should eq ['root'] }
end

describe processes('qmgr') do
  its('list.length') { should eq 1 }
  its('users') { should eq ['postfix'] }
end

describe processes('pickup') do
  its('list.length') { should eq 1 }
  its('users') { should eq ['postfix'] }
end
