class Prospect < ApplicationRecord
  has_many :conversations
  belongs_to :user


  validates :first_name, :last_name, :phone, :status, presence: true


end
