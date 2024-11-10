class Subscription < ApplicationRecord
  belongs_to :user

  enum status: { not_paid: "not_paid", paid: "paid" }
end