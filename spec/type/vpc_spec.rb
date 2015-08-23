require 'spec_helper'
Awspec::Stub.load 'vpc'

describe vpc('vpc-ab123cde') do
  it { should exist }
  it { should be_available }
  it { should have_route_table('rtb-a12bcd34') }
  it { should have_route_table('my-route-table') }
  it { should have_network_acl('acl-1abc2d3e') }
  it { should have_network_acl('my-network-acl') }
end

describe vpc('my-vpc') do
  it { should exist }
  it { should be_available }
end
