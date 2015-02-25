json.array!(@movie_ratings) do |movie_rating|
  json.extract! movie_rating, :id
  json.url movie_rating_url(movie_rating, format: :json)
end
