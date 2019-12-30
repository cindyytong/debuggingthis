class Lesson < ApplicationRecord 
    validates :title, presence: true 

    belongs_to :course 
    has_many :user_lessons, dependent: :destroy
end 