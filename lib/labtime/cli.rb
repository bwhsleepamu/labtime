require 'thor'
require 'labtime'

class CLI < Thor
  desc "convert_labtime LABTIME YEAR", "Converts decimal labtime to realtime."
  
  def convert_labtime(labtime, year)
    Labtime.from_decimal(labtime, year).to_time.to_s
  end
end