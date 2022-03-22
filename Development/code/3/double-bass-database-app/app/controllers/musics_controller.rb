
class MusicsController < ApplicationController

  # GET: /musics
  get "/musics" do
    Music.all.to_json 
  end

  # POST: /musics
  post "/musics" do
        music = Music.new(params)
        if @music.id
         serialized_music
       else
         @music.errors.full_messages.to_sentence
       end
  end

  # GET: /musics/5
  get "/musics/:id" do
    find_music
    if @music
      serialized_music
    else
      {errors: @music.errors.full_messages.to_sentence}.to_json
    end
  end

  # PATCH: /musics/5
  patch "/musics/:id" do
    find_music
    if @music && @music.update(params)
      serialized_music
    elsif !@music
      {errors: "Music not found with id #{params['id']}"}.to_json
    else
      {errors: @music.errors.full_messages.to_sentence}.to_json
    end
  end

  # DELETE: /musics/5/delete
  delete "/musics/:id/delete" do
    find_music
    if @music&.destroy
      {messages: "Music successfully destroyed"}.to_json
    else
      {errors: "Music not found with id #{params['id']}"}.to_json
    end
  end

  private 

  def find_music
    @music = Music.find_by_id(params["id"])
  end

  def serialized_music
    @music.to_json
  end
end