# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  validates :status, presence: true
end
