class UpdatePostUrlToMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :post_url, :poster_url
  end
end
