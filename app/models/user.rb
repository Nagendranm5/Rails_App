class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :projects
  def destroy
    update(disable:true )
  end

  def active_for_authentication?
    super && !disable
  end

  
end
