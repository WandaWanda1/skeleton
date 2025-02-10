class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :user
  belongs_to :room
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
