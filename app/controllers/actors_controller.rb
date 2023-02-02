class ActorsController < ActionController::Base
  def index
    @list_of_actors = Actor.all

    render({ :template => "actors_templates/index.html.erb"})
  end

  def details
    @actor = Actor.where({ :id => params.fetch("id") }).at(0)
    @characters = Character.where({ :actor_id => params.fetch("id") })

    render({ :template => "actors_templates/details.html.erb"})
  end
end
