
["Horror", "SciFi", "Thriller", "Suspense", "Comedy"].each do |g|
  Genre.where(name: g).first_or_create

  #Genre.find_or_create_by_name(g)
end
