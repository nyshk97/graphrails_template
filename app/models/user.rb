class User < ApplicationRecord
  has_many :lines, dependent: :destroy
end
