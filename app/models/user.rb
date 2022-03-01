class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #, :confirmable
  has_one_attached :cover
   


  
  after_create :new_user_email
  # def new_user_email
  #   unless user.nil?
  #     new_user_email
  #     #if not user == nil
      
  #       # UserMailer.new_user_email(self).deliver_now
  #   end
  # end

  private
  def new_user_email
    UserMailer.new_user_email(self).deliver
  end
        
end
