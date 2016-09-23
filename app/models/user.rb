class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins

end

  # validates :password, :presence => true,
  #                    :on => :create,
  #                    :format => {:with => /\A.*(?=.{7,})(?=.*\d).*\Z/ }
#Password restrictions explanations:
#First, we match for at least 10 characters:
#(?=.{10,})
#Next, we match for digits (numbers), using "\d":
#(?=.*\d)
#Then, we match a lowercase alphabet character:
#(?=.*[a-z])
#And then we match an uppercase alphabet character:
#(?=.*[A-Z])
#This code matches a special character.  Note how each special character needs to be escaped using the "\" character:
#(?=.*[\@\#\$\%\^\&\+\=])

