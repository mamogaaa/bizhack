class ConferencesController < ApplicationController
  expose_decorated :conferences, -> { Conference.all.includes(:divisions) }

  def index
  end
end
