class ListController < ApplicationController
  respond_to :json
  def index
  end

  def save_list
    print params["listName"]
    list = params # For readability
    ToDo.create(name: list["listName"]) # Creates a ToDo object with that name attribute set to the input you gave it.
    render :nothing => true # Tells rails not to expect the page to change.
  end

  def view_lists
    @lists = ToDo.all # Retrieves an array of all ToDo objects in the database.
    render 'list/viewlists' #Renders the html page in views/list/viewlist.html.erb
  end
end
