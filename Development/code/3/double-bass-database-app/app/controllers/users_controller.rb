require "pry"
class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
  end

  # POST: /users
  post "/users" do
   
  end

  # GET: /users/5
  get "/users/:id" do
   
  end

  # PATCH: /users/5
  patch "/users/:id" do
   
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
  
  end

  private 

  def find_user
    #user = User.find_by_id(params["id"])
  end

end
