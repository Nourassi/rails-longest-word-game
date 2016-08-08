require "game"

class LongestwordgameController < ApplicationController
  def game
    @grid = generate_grid(15).join(" ")
  end

  def score
    @guess = params[:guess]
    @grid = params[:grid]

    if @guess.empty?
      flash[:notice] = 'Please enter letters.'
      redirect_to game_path and return
    else
      @result = run_game(@guess,@grid.split, Time.now,Time.now)
    end

  end
end
