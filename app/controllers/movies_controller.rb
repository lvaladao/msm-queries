class MoviesController < ActionController::Base
  def index
    @list_of_movies = Movie.all

    render({ :template => "movies_templates/index.html.erb"})
  end

  def details
    @movie = Movie.where({ :id => params.fetch("id") }).at(0)

    render({ :template => "movies_templates/details.html.erb"})
  end
end
