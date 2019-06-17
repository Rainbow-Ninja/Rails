class GamesController < ApplicationController
    def page
        @games = ["mario", "sonic", "pacman"]
    end
end