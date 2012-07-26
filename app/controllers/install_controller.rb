class InstallController < ApplicationController
  skip_before_filter :installed?

  # step 0: greetings page of the equipe installation proccss
  def index
  end

  # step 1: saves team information
  def team
    @team = Team.new(request.post? ? params[:team] : nil)
    if request.post? && @team.valid?
      Settings.team_name = @team.name
      redirect_to :action => "description"
    end
  end

  # step 2: saves team description 
  def description
  end
end
