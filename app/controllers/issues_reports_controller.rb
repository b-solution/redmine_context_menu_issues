class IssuesReportsController < ApplicationController

  layout 'issues_reports'
  # before_action :require_login

  include ApplicationHelper
  include IssuesHelper
  include JournalsHelper
  helper :journals
  helper :issues
  def index
    @issues = Issue.where(id: params[:issue_ids])
  end
end
