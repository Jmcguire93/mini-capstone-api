class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :tax, :total, :money_math

  # belongs_to :product
  has_many :carted_products
end
