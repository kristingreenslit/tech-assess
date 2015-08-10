class User < ActiveRecord::Base
  has_many :computers, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# quiz functionality is difficult. But I like where your head is at for this. Where would
# you use this method, how would you store this data?
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
