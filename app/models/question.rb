class Question < ApplicationRecord
    has_many :answers
    has_many :options
    belongs_to :section
    accepts_nested_attributes_for :answers
end
