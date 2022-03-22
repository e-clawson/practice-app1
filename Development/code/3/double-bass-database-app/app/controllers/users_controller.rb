require "pry"
class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
  end

  # POST: /users
  post "/users" do
   @user = User.create(params)
   if @user.id
    serialized_user
  else
    @user.errors.full_messages.to_sentence
  end
end

  # GET: /users/5
  get "/users/:id" do
    find_user
    if @user
      serialized_user
    else
      {errors: "User not found with id #{params['id']}"}.to_json
    end
  end

  # PATCH: /users/5
  patch "/users/:id" do
    find_user
    if @user && @user.update(params)
      serialized_user
    elsif !@user
      {errors: "User not found with id #{params['id']}"}.to_json
    else
      {errors: @user.errors.full_messages.to_sentence}.to_json
    end
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    find_user
    if @user&.destroy
      {messages: "User successfully destroyed"}.to_json
    else
      {errors: "User not found with id #{params['id']}"}.to_json
    end
  end

  private 

  def find_user
    @user = User.find_by_id(params["id"])
  end

  def serialized_user
    @user.to_json
  end
end
