Redmine::Plugin.register :redmine_context_menu_issues do
  name 'Print Punch List'
  author 'FlexSolution'
  description 'Make possible printing Punch List'
  version '0.0.1'
  url 'https://git.flex-solution.com/Simplex/Redmine_ReportPlugin/'
  author_url 'https://www.flex-solution.com'

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
