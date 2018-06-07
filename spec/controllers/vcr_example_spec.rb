require 'spec_helper'

describe "VCR-RSpec integration" do
  def make_http_request
    Net::HTTP.get_response('localhost', '/', 7777).body
  end

  context "without an explicit cassette name" do
    use_vcr_cassette

    it 'records an http request' do
      make_http_request.should == 'Hello'
    end
  end

  context "with an explicit cassette name" do
    use_vcr_cassette "net_http_example"

    it 'records an http request' do
      make_http_request.should == 'Hello'
    end
  end
end
