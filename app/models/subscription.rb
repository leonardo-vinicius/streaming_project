class Subscription < ApplicationRecord
  belongs_to :user
  before_save :upd_end_date, if: :paid?

  enum status: { not_paid: "not_paid", paid: "paid" }

  private

  def upd_end_date
    if paid?
      update_column(:end_date, Date.today + 30.days)    
    end
  end
end