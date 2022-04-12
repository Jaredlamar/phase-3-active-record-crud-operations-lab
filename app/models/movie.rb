class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.where(title: "This is a title")
    end
    
    def self.first_movie
        Movie.first
    end
    
    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.where(id)
    end

    def self.find_movie_with_attributes(director)
        Movie.find_by director
    end

    def self.find_movies_after_2002
        Movie.where('release_date>2002')
    end



end