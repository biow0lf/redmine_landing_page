module RedmineLandingPage
  module Hooks
    class ViewUsersFormHook < Redmine::Hook::ViewListener
      render_on(:view_users_form, :partial => 'users/landing_page', :layout => false)
    end
  end
end
