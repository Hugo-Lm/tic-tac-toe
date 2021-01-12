class MovesController < ApplicationController
  def update
    @move = Move.find(params[:id])
    @move.played = "o"
    @move.save

    empty_case = Move.where(played: nil)
    if empty_case.count > 0
      ennemy_move = empty_case.sample
      ennemy_move.played = "x"
      ennemy_move.save
    end

    redirect_to game_path(params[:game_id])

  end
end
