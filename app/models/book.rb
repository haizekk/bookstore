class Book < ActiveRecord::Base
  before_save :update_slug

  def update_slug
    self.slug = name.parameterize
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
