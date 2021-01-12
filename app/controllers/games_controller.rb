class GamesController < ApplicationController
    def show




        if Game.count == 0 || Game.last.result != nil
          @game = Game.create!(user: current_user)
          count = 1
          9.times do
            Move.create(game: @game, case: count)
            count += 1
            @moves = Move.where(game: @game)
          end
        else
          @game = Game.last
          @moves = Move.where(game: @game)
        end

        # @result = isThereAWinner?(@game, @moves)
    end


    def destroy
      Move.destroy_all
      Game.destroy_all
      redirect_to root_path
    end


    # def isThereAWinner(game, moves)

    #   if

    # end
end


