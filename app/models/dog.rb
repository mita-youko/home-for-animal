class Dog < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    with_options presence: true do
        validates :image
        validates :name
        validates :date
        validates :description
        with_options numericality: { other_than: 1, message: "can't be blank" } do
            validates :m_or_f_id
            validates :year_id
            validates :dog_breed_id
            validates :size_id
        end
    end
end
