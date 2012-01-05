class Tweet < ActiveRecord::Base
  belongs_to :user
  validates_length_of :text, :maximum => 140
  validates :text, :presence => true


end
