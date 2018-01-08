# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  dimention  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Size, type: :model do
  describe '#validation' do
    it { is_expected.to validate_presence_of(:dimention) }
  end
end
