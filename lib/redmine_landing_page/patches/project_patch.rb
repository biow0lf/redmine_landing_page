module RedmineLandingPage
  module Patches
    module ProjectPatch
      def self.included(base)
        base.class_eval do
          safe_attributes 'landing_page'
        end
      end
    end
  end
end
