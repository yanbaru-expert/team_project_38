class CreateWatchedMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :watched_movies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
    add_index :watched_movies, [:user_id, :movie_id], unique: true
  end
end
