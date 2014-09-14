class SightingsController < ApplicationController
  def new
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new
    render 'sightings/new'
  end

  def create
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.create date: params[:date],
                                          latitude: params[:latitude],
                                          longitude: params[:longitude],
                                          notes: params[:notes]
    if @sighting.save
      render 'sightings/success'
    else
      render 'sightings/new'
    end                                          
  end

  def show
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    render 'sightings/show'
  end

  def edit
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    render 'sightings/edit'
  end

  def update
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find params[:id]
    if @sighting.update date: params[:date],
                                          latitude: params[:latitude],
                                          longitude: params[:longitude],
                                          notes: params[:notes]
      render 'sightings/success'
    else
      render 'sightings/edit'
    end                                          
  end

  def destroy
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find params[:id]
    @sighting.destroy
    render 'sightings/destroy'
  end
end