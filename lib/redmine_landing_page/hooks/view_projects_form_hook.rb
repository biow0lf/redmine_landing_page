module RedmineLandingPage
  module Hooks
    class ViewProjectsFormHook < Redmine::Hook::ViewListener
      render_on(:view_projects_form, :partial => 'projects/landing_page', :layout => false)
    end
  end
end
