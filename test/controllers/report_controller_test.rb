require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get idsr_report" do
    get :idsr_report
    assert_response :success
  end

end
