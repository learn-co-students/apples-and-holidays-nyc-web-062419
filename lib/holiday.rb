require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  #holiday_hash[:winter][:christmas].push(supply)
  #holiday_hash[:winter][:new_years].push(supply)
  holiday_hash[:winter].each do |k, v|
    v.push(supply)
    #binding.pry
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season] = {
      holiday_name => supply_array 
  }      
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

 
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
      holiday.each do |holiday, supplies|
        puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  def all_holidays_with_bbq(supplies_hash)
    supplies_hash.map do |season, holidays|
      holidays.map do |holiday, supplies|
        holiday if supplies.include?("BBQ")
      end
    end.flatten.compact
  end
end







