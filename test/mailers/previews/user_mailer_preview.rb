# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def new_user_email
        user = User.new(name:"Joe", email:"joe@mail.com", password: "gygdi")
        UserMailer.with(user: user).new_user_email
        
    end

end
