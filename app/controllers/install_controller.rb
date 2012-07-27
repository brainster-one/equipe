class InstallController < ApplicationController
  include Wicked::Wizard
  steps :welcome, :team, :description, :complete

  def show
    case step
    when :team
      @team = Team.new
    end
    render_wizard
  end

  def update
    case step
    when :team
      @team = Team.new(params[:team])
      if @team.valid?
        Settings.team_name = @team.name
        redirect_to next_wizard_path
        return
      end
    #when :complete
    #  Settings.installed? = true
    end
    render_wizard
  end
end
