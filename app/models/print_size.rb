# == Schema Information
#
# Table name: print_sizes
#
#  id         :integer          not null, primary key
#  print_id   :integer
#  size_id    :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PrintSize < ApplicationRecord
  belongs_to :print
  belongs_to :size

  validates :price, presence: true
end
