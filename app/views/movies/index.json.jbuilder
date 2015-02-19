json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :plot, :release_year, :poster_image, :rating, :rotten_tomato_link
  json.url movie_url(movie, format: :json)
end
