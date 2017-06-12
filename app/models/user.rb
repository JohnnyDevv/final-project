class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :comments
  has_many :articles

  #def admin? 
  #	self.admin == true 
  #end

  def full_name
    return "#{fname} #{lname}".strip if (fname || lname)
    #"Anonymous"
  end
end
