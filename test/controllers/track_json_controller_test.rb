require 'test_helper'

class TrackJsonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get track_json_index_url
    assert_response :success
  end

end
