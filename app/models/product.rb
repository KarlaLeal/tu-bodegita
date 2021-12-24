class Product < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'products' }
  after_update_commit { broadcast_replace_to 'products' }
  after_destroy_commit { broadcast_remove_to 'products' }

  validates :name, uniqueness: true, presence: true
  validates :stock, numericality: { only_integer: true }, presence: true
  validates :description, presence: true
end
