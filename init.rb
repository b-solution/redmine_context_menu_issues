Redmine::Plugin.register :redmine_context_menu_issues do
  name 'Print Punch List'
  author 'FlexSolution'
  description 'Make possible printing Punch List'
  version '0.1.1'
  url 'https://git.flex-solution.com/Simplex/Redmine_ReportPlugin/'
  author_url 'https://www.flex-solution.com'

  require 'issues_context_menu_issues_hook'
end
require 'user'
Rails.application.config.to_prepare do
  Issue.send(:include, RedmineContextMenuIssues::IssuePatch)
  Journal.send(:include, RedmineContextMenuIssues::JournalPatch)
  Attachment.send(:include, RedmineContextMenuIssues::AttachmentPatch)
  AnonymousUser.send(:include, RedmineContextMenuIssues::UserPatch)
end

