class MoviesController < ApplicationController


  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
    @cart_action = @movie.cart_action current_user.try :id
  end

    # Never trust parameters from the scary internet, only allow the white list through.

end
