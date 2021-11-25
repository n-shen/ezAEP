class Prest < ApplicationRecord
  belongs_to :event
  has_many :users, through: :myprests
  has_many :users, through: :pgrades
end
