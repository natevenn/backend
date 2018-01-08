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

require 'rails_helper'

RSpec.describe Print, type: :model do
  describe '#validation' do
    it { is_expected.to belong_to(:picture) }
    it { is_expected.to validate_presence_of(:title) }
  end
end
