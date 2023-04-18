class UsersController < ApplicationController
  def index
    matching_users = User.all

   @List_of_users = matching_users.order({ :username => :asc })

   render({ :template => "user_templates/index.html.erb" })
  end

  def show
    # Parameters: {"path_username"=>"ansia"}
     url_username = params.fetch("path_username")

     matching_usernames =  User.where({ :username =>  url_username })

     @the_user = matching_usernames.first

     

     render({ :template => "user_templates/show.html.erb" })
  
  end

    def user

      render({ :template => "user_templates/user.html.erb" }) 
  end

  def update
  

    render({ :template => "user_templates/update_user.html.erb" }) 
  end
end
