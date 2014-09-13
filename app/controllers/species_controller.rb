class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render 'species/index'
  end

  def new
    @species = Species.new
    render 'species/new'
  end

  def show
    @species = Species.find(params[:id])
    render 'species/show'
  end

  def create
    @species = Species.create(name: params[:name])
    if @species.save
      render 'species/success'
    else
      render 'species/new'
    end 
  end

  def edit
    @species = Species.find(params[:id])
    render 'species/edit'
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(name: params[:name])
      render 'species/success'
    else
      render 'species/edit'
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    render 'species/destroy'
  end


end