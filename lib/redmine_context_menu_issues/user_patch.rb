module RedmineContextMenuIssues
  module UserPatch
    def self.included(base)
      base.send :include, InstanceMethods

      base.class_eval do

      end
    end

    module InstanceMethods
      def name(*args); @name || I18n.t(:label_user_anonymous) end
      def name=(new_name)
        @name = new_name
      end
    end
  end
end
