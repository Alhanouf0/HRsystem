class UserMailer < ApplicationMailer
    def new_user_email(user)
        @user = user #params[:user]
        mail(to: @user.email, subject: 'Welcome Email')
    end
end
