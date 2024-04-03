class VillageCategory < ApplicationRecord
	has_and_belongs_to_many :villages
end
