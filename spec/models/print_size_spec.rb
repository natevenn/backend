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

require 'rails_helper'

RSpec.describe PrintSize, type: :model do
  describe '#validation' do
    it { is_expected.to belong_to(:print) }
    it { is_expected.to belong_to(:size) }
    it { is_expected.to validate_presence_of(:price) }
  end
end
