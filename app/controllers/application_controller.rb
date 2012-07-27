class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :installed?

  # redirects to the installation page if equipe is not installed
  def installed?
    redirect_to "/" if Settings.installed? && controller_name == "install"
    redirect_to :install_index if not Settings.installed? and controller_name != "install"
  end
end
