require 'test_helper'

class LawControllerTest < ActionController::TestCase
  test "should get law" do
    get :law
    assert_response :success
  end

end
