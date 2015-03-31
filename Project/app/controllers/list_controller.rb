class ListController < ApplicationController
  respond_to :json
  def index

  end

  def save_list
    print params["listName"]
    list = params
    ToDo.create(name: list["listName"])
    render :nothing => true
  end

  def view_lists
    @lists = ToDo.all
    render 'list/viewlists'
  end
end
