class RosesController < ApplicationController
  def new
    @rose = Rose.new
  end

  def show
    @rose = Rose.find(params[:id])
  end

  private
    def rose_params
      params.require(:rose).permit(:name, :meaning, :image_url)
    end
  end
