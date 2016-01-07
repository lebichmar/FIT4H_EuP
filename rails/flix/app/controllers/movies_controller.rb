class MoviesController < ApplicationController

	def index
	@movies = Movie.past
	end

	def show
		@movie = Movie.find(params[:id])			#globale Parameter (sind alle enthalten)
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		#man muss Parameter erlauben (Sicherheitsaspekt)
		if @movie.update(movie_params)
			redirect_to movie_path(@movie.id)
		else
			render "edit"
		end
	end


	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "Ihre Daten wurden gespeichert."
			redirect_to movie_path(@movie.id)
		else
			render "new"
		end
	end


	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_url

	end

	private 
		def movie_params
		params.require(:movie).permit(:title, :rating, :description, :total_gross, :released_on, :plegding_ends_on, :website, )		
		end







end


