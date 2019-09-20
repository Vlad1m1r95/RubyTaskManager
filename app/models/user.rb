class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


         validates :name, :email, :password, presence: true
         validates :name, :email, uniqueness: true
         validates :password, length: { minimum: 8 }       

  def admin?
    return type == "admin"
  end
end
