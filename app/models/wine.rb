class Wine < ActiveRecord::Base
  validates :name, :country, :year, presence: true
  validates :year,
    numericality: {only_integer: true},
    if: "year.present?"
  validates :varietal, inclusion: { in: %w(Merlot Barbera Chardonnay),
    message: "%{value} is not a valid wine varietal." },
    unless: "varietal.blank?"
end
