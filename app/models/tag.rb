class Tag < ApplicationRecord 
    has_many :tag_courses, dependent: :destroy 
    has_many :courses,
    through: :tag_courses 
end 
