class InstallController < ApplicationController
  include Wicked::Wizard
  steps :welcome, :team, :description, :complete

  def show
    case step
    when :team
      @team = Team.new
    when :description
      @article = Article.new      
    end
    render_wizard
  end

  def update
    case step
    when :welcome
      redirect_to next_wizard_path
      return
    when :team
      @team = Team.new(params[:team])
      if @team.valid?
        Settings.team_name = @team.name
        redirect_to next_wizard_path
        return
      end
    when :description
      @article = Article.publish(params[:article])
      Settings.team_description_article_id = @article.id
      redirect_to next_wizard_path
      return
    when :complete
      Settings['installed?'] = true
      redirect_to "/"
      return
    end
    render_wizard
  end
end
