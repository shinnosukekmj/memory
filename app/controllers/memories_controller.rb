class MemoriesController < ApplicationController
  def index
    @game=Game.new
    @games=Game.all
  end

  def create
    @game=Game.new(game_params)
    if @game.save
      redirect_to root_path
    else
      @games=Game.all
      render :index
    end
  end

  def show
    @game=Game.find(params[:id])
  end

  def edit
    @game=Game.find(params[:id])
  end

  def update
    @game=Game.find(params[:id])
    if @game.update(game_params)
      redirect_to memory_path(@game.id)
    else
      render :edit
    end
  end

  def destroy
    @game=Game.find(params[:id])
    @game.destroy
    redirect_to root_path
  end

  private
  def game_params
    params.require(:game).permit(:title,:body,:intro,:image)
  end
end
