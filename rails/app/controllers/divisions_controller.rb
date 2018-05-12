class DivisionsController < ApplicationController
  expose_decorated :divisions, -> { Division.all.includes(:conference) }

  def index
  end
end
