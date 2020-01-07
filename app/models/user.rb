class User < ApplicationRecord 
    validates :first_name, :last_name, :password_digest, :session_token, presence: { message: 'must not be blank '}
    validates :email, presence: true, uniqueness: { message: 'already registered'}, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address'}
    validates :user_role, presence: true, inclusion: ["student", "coach"]
    validates :status, presence: true, inclusion: ["active", "inactive"]
    validates :password, length: { minimum: 6, allow_nil: true, message: 'Password must be greater than 6 characters' } 

    after_initialize :ensure_session_token
    after_create :create_profile
    
    has_one :profile, dependent: :destroy  

    has_many :course_enrollments,
    class_name: :UserCourse,
    foreign_key: :user_id, 
    dependent: :destroy
   
    has_many :courses, 
    through: :course_enrollments,
    source: :course
    
    has_many :user_lessons, dependent: :destroy
    
    has_many :lessons,
    through: :user_lessons,
    source: :lesson 

    attr_reader :password 

    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        (user && user.is_password?(password)) ? user : nil 
    end 

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end 

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end 

    def generate_session_token
        SecureRandom.urlsafe_base64(16) 
    end 

    def reset_session_token!
        self.session_token = self.generate_session_token 
        self.save! 
        self.session_token
    end 

    private 

    def ensure_session_token 
        self.session_token ||= self.generate_session_token
    end 

    def create_profile 
        Profile.create(user_id: self.id)
    end 
end 