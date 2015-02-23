class WelcomeController < ApplicationController
  def hello
    @name = params[:name]
    console
  end

  def index
    @movies = [
      ["Oblivion", "http://www.imdb.com/title/tt1483013/?ref_=nv_sr_1",
      "http://ia.media-imdb.com/images/M/MV5BMTQwMDY0MTA4MF5BMl5BanBnXkFtZTcwNzI3MDgxOQ@@._V1_SX214_AL_.jpg",
      "Tom Cruise stars in Oblivion, an original and groundbreaking cinematic event from the visionary director of TRON: Legacy and producers of Rise of the Planet of the Apes. On a spectacular future Earth that has evolved beyond recognition, one man's confrontation with the past will lead him on a journey of redemption and discovery as he battles to save mankind. 2077: Jack Harper (Cruise) serves as a security repairmen stationed on an evacuated Earth. Part of a massive operation to extract vital..."],
      ["John Wick", "http://www.imdb.com/title/tt2911666/?ref_=nv_sr_1",
      "http://ia.media-imdb.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_SX214_AL_.jpg", "An ex-hitman comes out of retirement to track down the gangsters that took everything from him."],
      ["Skyfall", "http://www.imdb.com/title/tt1074638/?ref_=nv_sr_1",
      "http://ia.media-imdb.com/images/M/MV5BMjAyODkzNDgzMF5BMl5BanBnXkFtZTcwMDMxMDI4Nw@@._V1_SX214_AL_.jpg", "Bond's loyalty to M is tested when her past comes back to haunt her. Whilst MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost."]
    ]

    @date = Date.today
    @movie = @movies[0]
    #console
  end
end
