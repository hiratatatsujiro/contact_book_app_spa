class Timetable < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :next_day
    validates :homework
    validates :preparation
    validates :leave_time
  end

  with_options numericality: { other_than: 1, message: "が選択されていません" } do
    validates :first_class_id 
    validates :second_class_id
    validates :third_class_id
    validates :fourth_class_id
    validates :fifth_class_id
    validates :sixth_class_id
  end

  def self.search(search)
    if search != ""
      Timetable.where('next_day LIKE(?)', "%#{search}%")
    else
      Timetable.all
    end
  end
end
