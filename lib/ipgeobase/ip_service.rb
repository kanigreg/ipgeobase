# frozen_string_literal: true

require 'happymapper'
require 'net/http'
require 'addressable/template'

module Ipgeobase
  class IPApiService
    HOST = 'ip-api.com'
    URI_TEMPLATE = Addressable::Template.new('http://{host}/xml{/ip}')

    def self.metadata_of(ip)
      uri = URI_TEMPLATE.expand(host: HOST, ip: ip)
      ip_xml_data = Net::HTTP.get(uri)
      HappyMapper.parse(ip_xml_data)
    end
  end
end
