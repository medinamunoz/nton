class Movie < ApplicationRecord
	has_many :movie_tags
	has_many :tags, through: :movie_tags

	validates :title, presence: true, uniqueness: true

	attr_accessor :tags_ids

end
