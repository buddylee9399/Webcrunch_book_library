# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  author      :string
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_books_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Book < ApplicationRecord
  has_one_attached :thumbnail
  belongs_to :user
  has_many :libraries
  has_many :added_books, through: :libraries, source: :user
end
