#
# Cookbook Name:: firewallrules
# Recipe:: default
#
 
#
# Apache 2.0 
#

include_recipe "simple_iptables"

# Allow HTTPS
simple_iptables_rule "http" do
  rule [ "--proto tcp --dport 443" ]
  jump "ACCEPT"
end
