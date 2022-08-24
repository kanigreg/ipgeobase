# frozen_string_literal: true

require_relative 'ipgeobase/version'
require_relative 'ipgeobase/ip_service'

module Ipgeobase
  def self.lookup(ip)
    IPApiService.metadata_of(ip)
  end
end
