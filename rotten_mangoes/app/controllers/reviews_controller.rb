class ReviewsController < ApplicationController
  
  before_filter :load_movie #loading parent resource from nested resource controller

  def new  
    @review = @movie.reviews.build #same as: @review = Review.new(movie_id: @movie.id), automatic assignment of the foreign key
  end

  def create
    @review = @movie.reviews.build(review_params)
    @review.user_id = @current_user.id
      if @review.save
        redirect_to @movie, notice: "Review created successfully"
      else 
        render :new 
      end 
  end

  protected

  def load_movie
    @movie = Movie.find(params[:movie_id])
  end 

  def review_params
    params.require(:review).permit(:text, :rating_out_of_ten)
  end 
end
