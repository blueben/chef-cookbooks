describe port(22) do
  it { should be_listening }
  its('processes') { should include 'sshd' }
end

describe processes('sshd') do
  its('list.length') { should >= 1 }
  its('users') { should eq ['root'] }
end
