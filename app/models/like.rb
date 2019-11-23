class Like < ApplicationRecord
  validates_uniqueness_of :liked_account_id, scope: :user_id
end
