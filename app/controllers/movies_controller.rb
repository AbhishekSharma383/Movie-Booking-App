class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    # params = params.with_indifferent_access
    @movie = Movie.new(title: params[:movie][:title], description: params[:movie][:description], release_date: params[:movie][:release_date], genre: params[:movie][:genre], image: params[:movie][:image]  )
  
    if @movie.save
      redirect_to root_path, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to root_path, notice: "Movie was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    # byebug
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path, notice: 'Movie was successfully deleted.'
  end

  def book_show
    @movie = Movie.find(params[:id])
    @shows = @movie.showtimes
  end

  def book_seat
    
  end



  private 

  def movie_params
    params.require(:movie).permit(:title, :description, :release_date, :genre, :image)
  end

end




# 11 -> 4 
# work needed . 
# -> 

# 1) Add devise gem to login 
# 2) develop book screen in home page 
# 3) Already existing code , Make Ui little proper spacing 
# 4) Add validations and edit code were possible , like in controller as seen in demo 
# 5) push code to github check . (IMP)