class ListController < ApplicationController
  respond_to :json # Telling the controller that it can except incoming data in JSON format.
  def index
    @lists = ToDo.all
  end

  def view
    @current_list = ToDo.find_by_id(params[:id])
  end

  def save_list
    print params["listName"]
    list = params # For readability
    @new_list = ToDo.create(name: list["listName"]) # Creates a ToDo object with that name attribute set to the input you gave it.
    # render :nothing => true # Tells rails not to expect the page to change.
    render json: {new_list: @new_list}.to_json
  end

  def view_lists
    @lists = ToDo.all # Retrieves an array of all ToDo objects in the database.
    render 'list/viewlists' #Renders the html page in views/list/viewlist.html.erb
  end
end
