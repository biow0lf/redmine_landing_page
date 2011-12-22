module RedmineLandingPage
  module Hooks
    class ViewMyAccountHook < Redmine::Hook::ViewListener
      render_on(:view_my_account, :partial => 'my/landing_page', :layout => false)
    end
  end
end
