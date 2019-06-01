module RedmineContextMenuIssues
  module IssuePatch
    def self.included(base)
      base.send :include, InstanceMethods

      base.class_eval do

      end
    end

    module InstanceMethods
      def reported_by
        self.custom_field_values.detect { |cfv| cfv.custom_field.name.to_s.downcase.include? 'reported by' }.try(:value)
      end

      def author
        real_author = super
        if real_author.is_a? AnonymousUser
          if reported_by.present?
            real_author.name= reported_by
            real_author.lastname= reported_by
          end
        end
        real_author
      end
    end
  end
end
