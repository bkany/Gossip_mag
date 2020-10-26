require 'test_helper'

class PotinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get potins_index_url
    assert_response :success
  end

end
