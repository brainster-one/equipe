class InstallController < ApplicationController
  skip_before_filter :installed?

  # greetings page of the equipe installation proccss
  def index
  end

  def team
    @team = Team.new(params[:team])
    
  end  
end
