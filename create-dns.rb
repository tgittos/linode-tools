#! /usr/bin/env ruby

$: << File.dirname(__FILE__) unless $:.include? File.dirname(__FILE__)
require 'dependencies'

linode = Linode.new(:api_key => API_KEY)

# create a new domain
domain = linode.domain.create(:Domain => ARGV[0], :Type => 'master', :SOA_Email => ADMIN_EMAIL)
domain_id = domain.domainid

# create some records
if not domain_id.nil?
  linode.domain.resource.create(:DomainID => domain_id, :Type => 'A', :Target => LINODE_IP)
  linode.domain.resource.create(:DomainID => domain_id, :Type => 'A', :Name => 'www', :Target => LINODE_IP)
else
  puts "Something went wrong: #{domain.inspect}"
end
