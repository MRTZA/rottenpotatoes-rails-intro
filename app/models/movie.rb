class Movie < ActiveRecord::Base
  def self.with_ratings
    Movie.select(:rating).distinct.inject([]) { |a, m| a.push m.rating }
  end
end
