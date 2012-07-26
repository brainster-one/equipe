class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :installed?

  # redirects to the installation page if equipe is not installed
  def installed?
    redirect_to :install unless Settings.installed?
  end
end
