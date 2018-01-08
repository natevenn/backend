# == Schema Information
#
# Table name: prints
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  picture_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Print < ApplicationRecord
  belongs_to :picture

  validates :title, presence: true
end
