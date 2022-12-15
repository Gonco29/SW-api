class Character < ApplicationRecord

  def index
    characters = Character.all
    render json: characters.to_json(only: %i[id name actor image_url]), status: 200
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

end
