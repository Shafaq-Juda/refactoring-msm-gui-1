# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    my_id = self.id
    matching_movies = Movie.where({ :director_id => my_id })

    return matching_movies
  end

  # Three 1 to many associations:
  # -Director => Movie
  # -Movie => Character
  # -Actor => Character

  # Try define:
  # - Director.filmography
  # - Movie.director
  # - Movie.Characters
  # - Character.Movie
  # - Actor.characters
  # - Character.actor
end
