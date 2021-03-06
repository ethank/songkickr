require 'helper'

class TestRemote < Test::Unit::TestCase
  context "Given a remote with no api key" do
    should "raise an APIKeyNotSet exception when created with no key" do
      assert_raise APIKeyNotSet do
        @remote = Songkickr::Remote.new
      end
    end
  end
  
  # TODO: Fix this later
  # context "Given a remote with an invalid api key" do
  #   setup do
  #     stub_get('http://api.songkick.com/api/3.0/events.json', 'events.json')
  #     @remote = Songkickr::Remote.new 'omgwtfbbq_fake_key'
  #   end
  # 
  #   should "generate a remote" do
  #     assert_not_nil @remote
  #   end
  #   
  #   should "generate nil results" do
  #     [nil, ':artist_name => ""', ':artist_name => "Madonna"'].each do |remote_params|
  #       assert_nil @remote.send(:events, remote_params).results
  #     end
  #   end
  # end
  
end
