# frozen_string_literal: true

class AdminUser < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at email id updated_at] # Add other attributes as needed
  end

  # other code...
end
