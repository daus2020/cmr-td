class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :prospects
end

# Phone regex
# ^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-.]?\d{3}[-.]?\d{4}$

