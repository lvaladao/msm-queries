class DirectorsController < ActionController::Base
  def index
    @list_of_directors = Director.all

    render({ :template => "directors_templates/index.html.erb"})
  end

  def eldest
    @oldest = Director.where.not({ :dob =>  nil }).order({ :dob => :asc }).at(0)

    render({ :template => "directors_templates/eldest.html.erb"})
  end

  def details
    @director = Director.where({ :id => params.fetch("id") }).at(0)

    render({ :template => "directors_templates/details.html.erb"})
  end
end
