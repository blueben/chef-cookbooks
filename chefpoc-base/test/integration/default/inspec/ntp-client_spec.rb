describe processes('ntp') do
  its('list.length') { should eq 1 }
  its('users') { should eq ['ntp'] }
end
