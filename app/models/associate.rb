class Associate < ApplicationRecord
  begin
    validates :surname, presence: true
    validates :first, presence: true
    validates :email, presence: true
  end

  has_many :associate_payments

  scope :financial, -> { where.not(financialto: nil) }
  scope :notfinancial, -> { where(financialto: nil) }
  scope :allassociates, -> { all }

end

=begin   
  scope :notfinancial, -> { where(status_id: 2) }
  scope :cancelled, -> { where(status_id: 4) }
=end

=begin   
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Associate.create! row.to_hash
    end
  end
=end