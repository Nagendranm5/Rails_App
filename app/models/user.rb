class User < ApplicationRecord

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
