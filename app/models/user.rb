class User < ApplicationRecord 
    validates :first_name, :last_name, :password_digest, :session_token, presence: { message: 'must not be blank '}
    validates :email, presence: true, uniqueness: { message: 'already registered'}, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address'}
    validates :user_role, presence: true, inclusion: ["student", "coach"]
    validates :status, presence: true, inclusion: ["active", "inactive"]
    validates :password, length: { minimum: 8, allow_nil: true, message: 'must be greater than 8 characters' } 

    has_one :profile, dependent: :destroy  
    has_many :user_courses, dependent: :destroy
    
    has_many :courses, 
    through: :user_courses

    has_many :user_lessons, dependent: :destroy
    
    has_many :lessons,
    through: :user_lessons 

end 