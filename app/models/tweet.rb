class Tweet < ActiveRecord::Base
  belongs_to :zombie

  attr_accessible :status, :zombie

  validates_presence_of :status, :zombie
  validates_associated :zombie

  def self.result tweets
    phrase = Array.new
    tweets.each do |tweet|
      phrase << tweet.zombie.name
    end
    phrase.uniq
  end
end
