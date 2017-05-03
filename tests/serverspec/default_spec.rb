require "spec_helper"
require "serverspec"

package = "tshark"
group   = "network"
log_dir = "/var/log/tshark"
default_user = "root"
default_group = "root"

case os[:family]
when "openbsd"
  default_group = "wheel"
  group = "_wireshark"
when "freebsd"
  default_group = "wheel"
end

describe package(package) do
  it { should be_installed }
end 

describe user("vagrant") do
  it { should belong_to_group group }
end

describe file(log_dir) do
  it { should exist }
  it { should be_mode 755 }
  it { should be_owned_by default_user }
  it { should be_grouped_into group }
end
