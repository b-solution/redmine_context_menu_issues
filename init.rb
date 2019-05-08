Redmine::Plugin.register :redmine_context_menu_issues do
  name 'Redmine Context Menu Project plugin'
  author 'Bilel KEDIDI'
  description "Make possible to show all issues details in context menu"
  version '0.0.1'
  url 'https://www.github.com/bilel-kedidi/redmine_context_menu_issues'
  author_url 'https://www.github.com/bilel-kedidi'

  require 'issues_context_menu_issues_hook'

  # begin
  #   directory = File.join(Rails.root, 'plugins', 'redmine_context_menu_issues', 'assets', 'stylesheets')
  #   source_files = Dir[directory + "/*"]
  #   destination = File.join(Rails.root, 'public')
  #   source_files.each do |file|
  #     begin
  #       target = destination
  #       unless File.exist?(target) && FileUtils.identical?(file, target)
  #         FileUtils.cp(file, target)
  #       end
  #     rescue Exception => e
  #       raise "Could not copy #{file} to #{target}: " + e.message
  #     end
  #   end
  # end
end
