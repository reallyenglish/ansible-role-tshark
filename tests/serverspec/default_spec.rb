require "spec_helper"
require "serverspec"

package = "tshark"
group   = "network"
log_dir = "/var/log/tshark"
dumpcap = "/usr/bin/dumpcap"
dumpcap_mode = 755
default_user = "root"
default_group = "root"

case os[:family]
when "ubuntu"
  group = "wireshark"
  dumpcap_mode = 754
when "redhat"
  package = "wireshark"
  group = "wireshark"
  dumpcap = "/usr/sbin/dumpcap"
  dumpcap_mode = 750
when "openbsd"
  default_group = "wheel"
  group = "_wireshark"
  dumpcap = "/usr/local/bin/dumpcap"
  dumpcap_mode = 550
when "freebsd"
  default_group = "wheel"
  dumpcap = "/usr/local/bin/dumpcap"
  dumpcap_mode = 2555
end

describe package(package) do
  it { should be_installed }
end

describe file(dumpcap) do
  it { should be_file }
  it { should be_mode dumpcap_mode }
  it { should be_owned_by default_user }
  it { should be_grouped_into group }
end

describe user("vagrant") do
  it { should belong_to_group group }
end

describe file(log_dir) do
  it { should exist }
  it { should be_mode 775 }
  it { should be_owned_by default_user }
  it { should be_grouped_into group }
end
