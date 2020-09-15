class RosesController < ApplicationController
  def new
    @rose = Rose.new
  end

  def create
    @rose = Rose.new(rose_params)
    if @rose.save
      redirect_to @rose
    else
      render 'new'
  end

  def show
    @rose = Rose.find(params[:id])
  end

  private
    def rose_params
      params.require(:rose).permit(:name, :meaning, :image_url, :user_id)
    end
  end
end
