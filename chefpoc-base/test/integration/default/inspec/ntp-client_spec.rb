describe processes('ntp') do
  its('list.length') { should = 1 }
  its('users') { should eq ['ntp'] }
end
