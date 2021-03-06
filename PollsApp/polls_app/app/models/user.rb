class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :authored_polls,
    class_name: :Poll,
    primary_key: :id,
    foreign_key: :author_id
end
