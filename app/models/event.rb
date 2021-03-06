class Event < ActiveRecord::Base
  has_many :taggings
  has_many :tags, :through => :taggings

  validates :name, :location, :date, :number_of_women, :number_of_men, :organizer_name, :organizer_url, :percent_women, :tags, presence: true

  def percent_women
  	 #puts "SCHEISSE"
  	 number_of_women.to_f / (number_of_women + number_of_men).to_f * 100
  end
end
