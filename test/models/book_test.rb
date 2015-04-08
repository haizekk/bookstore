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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
