#!/usr/bin/env ruby
# frozen_string_literal: true
require 'json'
require 'net/http'
# vim: ts=2 sts=2 et
#

uri = URI('https://portal.msrc.microsoft.com/api/security-guidance/en-US/CVE/CVE-2020-0601')

ms_json = JSON.parse(
  Net::HTTP.get( uri)
)

#puts ms_json

ms_json['affectedProducts'].each do |x|
  puts x['name']
  puts x['articleTitle1']
  puts x['https://support.microsoft.com/help/4534293']
end

