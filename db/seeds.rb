
["Horror", "SciFi", "Thriller", "Suspense", "Comedy"].each do |g|
  Genre.where(name: g).first_or_create
end

User.where(name: "Guest", email: "guest@guest.com").first_or_create

def random_select(array)
  array_source = array.dup
  results = []
  rand(1..3).times do
    i = rand(array_source.size)
    results << array_source[i]
    array_source.delete_at(i)
  end
  return results
end

if Movie.count < 10
  genre_ids = Genre.all.collect{|g| g.id}
  100.times do |counter|
    random_movie_rating = Movie::RATINGS[rand(Movie::RATINGS.count)]
    Movie.create(title: Faker::Name.title,
                rating: random_movie_rating,
                genre_ids: random_select(genre_ids),
                plot: Faker::Lorem.paragraph(rand(20)),
                release_year: Faker::Time.between(25.years.ago, Time.now).year,
                remote_movie_poster_url: "http://lorempixel.com/485/720/abstract/")
  end
end
