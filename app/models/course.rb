class Course < ApplicationRecord
    validates :title, :description, presence: true 
    
    has_many :tag_courses, dependent: :destroy 
    
    has_many :tags,
    through: :tag_courses 

    has_many :lessons, dependent: :destroy 
    has_many :user_courses 

    has_many :users,
    through: :user_courses 
end 