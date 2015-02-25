
["Horror", "SciFi", "Thriller", "Suspense", "Comedy"].each do |g|
  Genre.where(name: g).first_or_create
end

User.where(name: "Guest", email: "guest@guest.com").first_or_create
