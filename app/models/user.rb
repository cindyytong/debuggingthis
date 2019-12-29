class User < ApplicationRecord 
    validates :email, :first_name, :last_name, :password_digest, :session_token, :status, presence: { message: 'must not be blank '}
    validates :email, uniqueness: { message: 'already registered'}, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address'}
    validates :password, length: { minimum: 8, allow_nil: true, message: 'must be greater than 8 characters' } 

end 