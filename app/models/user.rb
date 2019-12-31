require 'byebug'
require 'profile'

class User < ApplicationRecord 
    validates :first_name, :last_name, :password_digest, :session_token, presence: { message: 'must not be blank '}
    validates :email, presence: true, uniqueness: { message: 'already registered'}, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address'}
    validates :user_role, presence: true, inclusion: ["student", "coach"]
    validates :status, presence: true, inclusion: ["active", "inactive"]
    validates :password, length: { minimum: 8, allow_nil: true, message: 'must be greater than 8 characters' } 

    after_initialize :ensure_session_token
    
    has_one :profile, dependent: :destroy  
    has_many :user_courses, dependent: :destroy
    
    has_many :courses, 
    through: :user_courses

    has_many :user_lessons, dependent: :destroy
    
    has_many :lessons,
    through: :user_lessons 

    after_commit :create_profile, on: :create

    attr_reader :password 

    def self.find_by_credentials(email, password)
        user = self.find_by(email: email)
        (user && user.is_password?(password)) ? user : nil 
    end 

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end 

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end 

    def generate_session_token
        SecureRandom.urlsafe_base64 
    end 

    def ensure_session_token 
        self.session_token ||= self.generate_session_token
    end 

    def reset_session_token!
        self.session_token = self.generate_session_token 
        self.save! 
        self.session_token
    end 

    def create_profile 
        Profile.new(self)
    end 
end 