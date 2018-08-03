require "labtime/version"
require 'thor'
require 'labtime/cli'
require 'labtime/labtime'

module Labtime
  class CLI < Thor
    desc "hello [name]", "say my name"
    def hello(name)
      if name == "Heisenberg"
        puts "you are goddman right"
      else
        puts "say my name"
      end
    end

    desc "convert_decimal [decimal_labtime] [year]", "Convert a decimal labtime in a given year to real time in string format"
    def convert_decimal(decimal, year)
      puts Labtime.from_decimal(decimal.to_f,year.to_i).to_time.to_s   
    end

  end
end
