ActiveAdmin.register MovieRating do
  filter :user_id, as: :numeric

  index do
    selectable_column
    column :movie do |movie_rating|
      link_to movie_rating.movie.title, edit_admin_movie_path(movie_rating.movie)
    end
    column :rating
    column :user
    actions
  end
end
