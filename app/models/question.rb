class Question < ApplicationRecord
    has_many :answers, dependent: :destroy
    belongs_to :category
    accepts_nested_attributes_for :answers

    has_many :result, dependent: :destroy

end
