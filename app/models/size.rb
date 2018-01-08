# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  dimention  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Size < ApplicationRecord

  validates :dimention, presence: true
end
