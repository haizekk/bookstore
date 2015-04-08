# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  cover       :string
#  user_id     :integer
#
# Indexes
#
#  index_books_on_slug  (slug) UNIQUE
#

class Book < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :cover, CoverUploader

  belongs_to :user
end
