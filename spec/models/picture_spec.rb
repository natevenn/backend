# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  title       :string
#  position    :integer
#  is_print    :boolean
#  description :string
#  category_id :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Picture, type: :model do
  describe '#validation' do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to validate_presence_of(:is_print) }
    it { is_expected.to validate_presence_of(:image) }
    it { is_expected.to validate_presence_of(:position) }
  end
end
