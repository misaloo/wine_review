class Wine < ActiveRecord::Base
  VARIETALS = ["Merlot", "Barbera", "Chardonnay"]
  validates :name, :country, :year, presence: true
  validates :year,
    numericality: {only_integer: true},
    if: "year.present?"
  validates :varietal, inclusion: { in: VARIETALS,
    message: "%{value} is not a valid wine varietal." },
    unless: "varietal.blank?"
  has_many :log_entries, dependent: :destroy
end
