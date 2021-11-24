class Event < ApplicationRecord
  belongs_to :user
  has_many :myevents
  has_many :prests
  has_many :users, through: :myevents
end
