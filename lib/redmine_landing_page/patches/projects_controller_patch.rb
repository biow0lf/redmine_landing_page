module RedmineLandingPage
  module Patches
    module ProjectsControllerPatch
      def self.included(base)
        base.class_eval do
          unloadable

          alias_method :show_without_landing_page, :show unless method_defined? :show_without_landing_page

          def show
            if @project.landing_page && !@project.landing_page.empty?
              redirect_to @project.landing_page, :status => 302
            else
              show_without_landing_page
            end
          end
        end
      end
    end
  end
end
