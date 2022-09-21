class Category < ApplicationRecord
  has_many :items, dependent: :destroy
  
  # validate :color_code_format
  
  
  # def color_code_format
  #   unless color_code.tel.starts_with? '#'
  #     color_code.errors[]
  #   end
  # end
end
