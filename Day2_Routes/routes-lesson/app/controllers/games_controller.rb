class GamesController < ApplicationController # every controller inherits from application controller
    def page
        #if no code here it redirects to view
        @games = ["Mario", "TF2", "OverWatch", "PacMan"]
    end
end