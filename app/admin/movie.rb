ActiveAdmin.register Movie do

  filter :rating
  filter :title
  filter :genres

  scope :rated_r
  scope :rated_g
  scope :rated_pg
  scope :rated_pg13

  permit_params :title, :plot, :release_year, :poster_image, :rating, :rotten_tomato_link, :movie_poster, genre_ids: []

  form do |f|
    inputs '' do
      input :title
      input :release_year
      input :plot
      input :rating, :as => :select, :collection => Movie::RATINGS, :include_blank => false
      input :genres, as: :check_boxes
    end
    actions
  end

  index as: :grid do |movie|
    link_to image_tag(movie.movie_poster.url(:thumb)), admin_movie_path(movie)
  end


=begin
  index do
    selectable_column
    column "" do |movie|
      image_tag movie.movie_poster.url(:thumb)
    end
    column :title
    column :avg_rating
    column "Ratings Count" do |movie|
      link_to movie.movie_ratings.count, admin_movie_ratings_path(:q => {:movie_id_eq => movie.id})
    end
    column "Genres" do |movie|
      movie.genres.collect {|g| g.name}.join ", "
    end
    actions
  end
=end
end
