class Course < ApplicationRecord

  validates :title, :level, :language, :price, presence: true
  validates :description, presence: true, length: { :minimum => 5 }
  has_rich_text :description

  extend FriendlyId
  friendly_id :title, use: :slugged

  LANGUAGES = [:English, :Russian, :Ukrainian, :Polish, :Spanish]

  def self.languages
    LANGUAGES.map {|language| [language, language]}
  end

  LEVELS = [:Beginner, :Intermediate, :Advanced]

  def self.levels
    LEVELS.map { |level| [level, level] }
  end

  belongs_to :user

  def to_s
    title
  end

end
