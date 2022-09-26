class Tweet < ApplicationRecord
  belongs_to :twitter_acount
  belongs_to :user
end
