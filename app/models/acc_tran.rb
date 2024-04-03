class AccTran < ApplicationRecord
  belongs_to :acc_bank_account
  belongs_to :acc_account
end
