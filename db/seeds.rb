
["Horror", "SciFi", "Thriller", "Suspense", "Comedy"].each do |g|
  Genre.where(name: g).first_or_create
end

User.where(name: "Guest", email: "guest@guest.com").first_or_create

if Movie.count < 10
  100.times do |counter|
    random_movie_rating = Movie::RATINGS[rand(Movie::RATINGS.count)]
    Movie.create(title: Faker::Name.title,
                rating: random_movie_rating,
                plot: Faker::Lorem.paragraph(rand(20)),
                release_year: Faker::Time.between(25.years.ago, Time.now).year,
                remote_movie_poster_url: "http://lorempixel.com/485/720/abstract/")
  end
end