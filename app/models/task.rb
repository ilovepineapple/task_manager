# frozen_string_literal: true

# Moder for user tasks
class Task < ApplicationRecord
  belongs_to :category, optional: true

  scope :complete, -> { where(completed: true) }
  scope :incoplete, -> { where(completed: false) }
  scope :sorted, -> { order(:position) }
  scope :search, ->(kw) { where('LOWER(name) LIKE ?', "%#{kw.downcase}%") }
end
