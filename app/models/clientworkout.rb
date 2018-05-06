class Clientworkout < ApplicationRecord
    validates :paid_amount, numericality:true
    validates :client_name, presence: { message: "must be given please"}
end
