class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #before_create :check_user_name
  has_many :posts




  def check_user_name
    if self.email != 'test@test.com'
      return false
    end
  end


end
