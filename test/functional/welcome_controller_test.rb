require File.expand_path('../../test_helper', __FILE__)

require_dependency 'welcome_controller'

class WelcomeControllerTest < ActionController::TestCase
  def setup
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end

  def test_show_default_welcome_page
    get :index
    assert_response :success
    assert_template 'index'
  end

  def test_redirect_to_landing_page
    @user = User.generate!(:landing_page => "http://#{@request.host}/projects")
    @request.session[:user_id] = @user.id
    get :index
    assert_redirected_to "http://#{@request.host}/projects"
  end
end
