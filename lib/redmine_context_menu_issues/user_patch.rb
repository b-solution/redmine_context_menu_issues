module RedmineContextMenuIssues
  module UserPatch
    def self.included(base)
      base.send :include, InstanceMethods

      base.class_eval do
        alias_method :name_without_default, :name
        alias_method :name, :name_with_default
      end
    end

    module InstanceMethods
      def name_with_default(*args); @name || I18n.t(:label_user_anonymous) end
      def name=(new_name)
        @name = new_name
      end
    end
  end
end
