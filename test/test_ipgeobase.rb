# frozen_string_literal: true

require 'test_helper'

class TestIpgeobase < Minitest::Test
  STUB_RESPONSE =
    '<?xml version="1.0" encoding="UTF-8"?>
    <query>
      <status>success</status>
      <query>8.8.8.8</query>
    </query>'

  def setup
    @ip = '8.8.8.8'

    stub_request(:get, "ip-api.com/xml/#{@ip}")
      .to_return(body: STUB_RESPONSE, status: 200)

    @ip_meta = Ipgeobase.lookup(@ip)
  end

  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def test_lookup
    assert @ip_meta.status == 'success'
    assert @ip_meta.query == @ip
  end
end
