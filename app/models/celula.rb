class Celula < ApplicationRecord
  belongs_to :sector

  def name_with_sector
    "Sector #{self.sector.name} - Celula #{self.name}"
  end
end
