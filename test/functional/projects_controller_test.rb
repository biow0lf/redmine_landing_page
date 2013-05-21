require File.expand_path('../../test_helper', __FILE__)

require_dependency 'projects_controller'

class ProjectsControllerTest < ActionController::TestCase
  def setup
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end

  def test_no_redirect_to_landing_page
    @project = Project.generate!(:identifier => 'demo')
    get :show, :id => @project.identifier
    assert_response :success
    assert_template 'show'
  end

  def test_redirect_to_landing_page
    @project = Project.generate!(:identifier => 'demo',
                                 :landing_page => "http://#{@request.host}/projects/demo/news")
    get :show, :id => @project.identifier
    assert_redirected_to "http://#{@request.host}/projects/#{@project.identifier}/news"
  end
end
