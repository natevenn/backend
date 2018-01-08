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

FactoryGirl.define do
  factory :picture do
    title 'wildFlower'
    description 'wildFlower festival'
    position Faker::Number.between(1, 10)
    is_print Faker::Boolean.boolean
    image
    category
  end
end
