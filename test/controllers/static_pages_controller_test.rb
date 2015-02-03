require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get sac" do
    get :sac
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get testimonial" do
    get :testimonial
    assert_response :success
  end

end
