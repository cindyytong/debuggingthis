class UserMailer < ApplicationMailer
    default from: 'heycindytong@gmail.com'

    def welcome_email(user)
        @user = user 
        mail(to: user.email, subject: 'Welcome to Debugging This')
    end 
end
