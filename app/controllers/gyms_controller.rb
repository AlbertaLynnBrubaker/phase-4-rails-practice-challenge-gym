class GymsController < ApplicationController
  def show
    render json: Gym.find(params[:id]), status: :ok
  end

  def destroy
    Gym.find(params[:id]).destroy
    head :no_content
  end
end
