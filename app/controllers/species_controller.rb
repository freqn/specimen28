class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render 'species/index'
  end
end