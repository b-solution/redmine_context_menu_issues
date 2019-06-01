module RedmineContextMenuIssues
  module AttachmentPatch
    def self.included(base)
      base.send :include, InstanceMethods

      base.class_eval do

      end
    end

    module InstanceMethods
      def author
        real_author = super
        if real_author.is_a? AnonymousUser
          if reported_by = self.container&.reported_by
            real_author.name= reported_by
            real_author.lastname= reported_by
          end
        end
        real_author
      end
    end
  end
end
