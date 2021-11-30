class Work < ApplicationRecord
    attr_accessor :current_date
    validates :r_time, presence:true, numericality: {greater_than: 0, less_than: 1441}
    validates :r_date, presence:true
    
end
