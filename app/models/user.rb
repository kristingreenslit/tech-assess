class User < ActiveRecord::Base
  has_many :computers #dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.score(param)
    score = 0
    score += param[:osversion]
    score += param[:shutoff]
    score += param[:pass]
    score += param[:cookies]
    score += param[:backups]
    score += param[:wifi] 
    return score
  end
#  @user.score
end
