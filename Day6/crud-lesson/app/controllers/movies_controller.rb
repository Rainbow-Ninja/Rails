class MoviesController < ApplicationController

    #show all movies
    def index
        @movies = session[:movies]
    end

    #post a new movie
    def create
        # session is a rails way of storing data temporarily in a cookie
        if session[:movies] == nil
            session[:movies] = []
        end

        session[:movies].push(params[:movie])
        puts "session movie data"
        puts session[:movies]

        redirect_to movie_path(session[:movies].length - 1) #pass the last movie we just added to the show page and redirect there
        # puts "==================="
        # puts params[:movie]
        # puts "==================="
        # @movies = []
        # @movies.push(params[:movie])
    end

    #add a new movie
    def new
   
    end

    #show a single movie
    def show
        @movie = session[:movies][params[:id].to_i]
    end

    def edit
        @movie = session[:movies][params[:id].to_i]
    end

    def update
        puts "Update Method is Executed -----------------"
        session[:movies][params[:id].to_i] = params[:movie]
        redirect_to movie_path(params[:id].to_i)
    end

    def delete
        deletableArray = session[:movies]
        deletableArray.delete_at(params[:id].to_i)
        session[:movies] = deletableArray
        redirect_to movies_path
    end

end