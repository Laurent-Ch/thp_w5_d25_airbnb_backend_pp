TIME_CONVERSION = 86400

class Reservation < ApplicationRecord
  belongs_to :rented_lodgment, class_name: "Lodgment"
  belongs_to :guest, class_name: "User"

  # Tmp: seed 
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  
  #  after_create :send_welcome_email
  
end
  
#  private

  # It is assumed that we want the number of days and the result is in seconds
#   def duration
#     ((self.end_date - self.start_date)/TIME_CONVERSION).to_i
#   end

#   def send_welcome_email
#     "#{self.logment.welcome_message}"
#   end

#   def start_before_end?
#     errors.add(:start_date, "Please select valid starting and ending dates") unless
#     start_date < end_date
#   end

