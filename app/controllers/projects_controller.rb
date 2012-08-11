class ProjectsController < ApplicationController
  # GET /projects
  def index
    #  todo: show only published projects
    @projects = Project.all
  end

  # GET /projects/1
  def show
    @project = Project.find(params[:id])
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  def create
    Project.publish(param[:name], param[:description])
  end

  # PUT /projects/1
  def update
    @project = Project.find(params[:id])
  end

  # DELETE /projects/1
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end
end
