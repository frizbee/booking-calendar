class Event < ApplicationRecord

  validates :title, presence: true
  validates :begin_date, presence: true
  validates :end_date, presence: true
end
