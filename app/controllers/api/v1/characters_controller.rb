class Api::V1::CharactersController < ApplicationController
  before_action :set_character, only: %i[show update destroy]

  def index
    characters = Character.all
    render json: characters.to_json(only: %i[id name actor image_url]), status: 200
  end

  def show
    if @character
      render json: @character.to_json(only: %i[id name actor image_url]), status: 200
    else
      render json: { status: 404, messege: 'Character not found' }, status: 404
    end
  end

  def create
    character = Character.new(character_params)
    if character.save
      render json: character, status: 201
    else
      render json: { status: 422, messege: "Error creating character" }, status: :unprocesable_entity
    end
  end

  def update
    if character
      if character.update(character_params)
        render json: { status: 200, messege: "Updated correctly" }, status: 200
      else
        render json: { status: 422, messege: "Error updating character" }, status: :unprocesable_entity
      end
    else
      render json: { status: 404, messege: "Not Found" }, status: 404
    end
  end

  def destroy
    if character
      character.destroy
      render json: { status: 200, messege: "Character deleted"}, status: 200
    else
      render json: { status: 404, messege: "Not Found" }, status: 404
    end
  end

  private

  def set_character
    @character = Character.find_by_id(params[:id])
  end

  def character_params
    params.require(:character).permit(:name :actor, :info, :image_url)
  end

end
