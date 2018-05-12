class TeamsController < ApplicationController
  expose_decorated :teams, -> { Team.all.includes(division: :conference).order(name: :asc) }
  expose_decorated :team, -> { Team.find params[:id] }

  def index
  end

  def show
  end
end
