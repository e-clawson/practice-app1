require "pry"
class MusicsController < ApplicationController

  # GET: /musics
  get "/musics" do
    Musics.all.to_json 
  end

  # POST: /musics
  post "/musics" do
   
  end

  # GET: /musics/5
  get "/musics/:id" do
   
  end

  # PATCH: /musics/5
  patch "/musics/:id" do
   
  end

  # DELETE: /musics/5/delete
  delete "/musics/:id/delete" do
  
  end

  private 

  def find_music
    #music = Music.find_by_id(params["id"])
  end

end