#! /usr/bin/env ruby

$: << File.dirname(__FILE__) unless $:.include? File.dirname(__FILE__)

require 'dependencies'

linode = Linode.new(:api_key => API_KEY)

domains = linode.domain.list
domains.each do |domain|
  if domain.domain == ARGV[0]
    linode.domain.delete(:DomainID => domain.domainid)
    break
  end
end
