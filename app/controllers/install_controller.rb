class InstallController < ApplicationController
  skip_before_filter :installed?

  # greetings page of the equipe installation proccss
  def index
  end

  # saves team information
  def team
    @team = Team.new(params[:team])
    if @team.valid?
    	Settings.team_name = @team.name
    end
  end
end
