class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    render json: { id: bird.id, species: bird.species, name: bird.name }
    render json: bird.slice(:id, :species, :name)
  end
end
