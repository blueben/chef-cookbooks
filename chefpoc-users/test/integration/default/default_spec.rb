describe user('tester') do
  it { should exist }
  its('groups') { should eq %w(tester sudo) }
  its('home') { should eq '/home/tester' }
  its('shell') { should eq '/bin/bash' }
end
