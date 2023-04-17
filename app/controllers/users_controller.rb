class UsersController < ApplicationController
  def index
    matching_users = User.all

   @List_of_users = matching_users.order({ :username => :asc })

   render({ :template => "user_templates/index.html.erb" })
  end

  def show
    # Parameters: {"path_username"=>"ansia"}
  url_username = params.fetch("path_username")

     User.where({ :username =  url_username })

    render({ :template => "user_templates/show.html.erb" })
  
  end
end
