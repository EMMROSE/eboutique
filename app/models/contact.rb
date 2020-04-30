class Contact < ApplicationRecord
  validates :name, presence: true
  validates :message, presence: true
  validates :email,
    :presence => :true,
    :format => {
      :with => /\S+@\S+\.\S+/i,
      :message => "must be a valid email address"
    }
end
