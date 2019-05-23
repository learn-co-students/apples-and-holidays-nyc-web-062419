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
  holiday_hash[:winter].each do |holiday,supplies|
    supplies.push(supply)
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter = holiday_hash[:winter]
  winter.values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holidays|
    puts "#{season.to_s.capitalize}:"
      holidays.each do |holiday,supplies|
        display_holiday = holiday.to_s.split('_').collect {|word| word.capitalize!}
        puts "  #{display_holiday.join ' '}: #{supplies.join ', '}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  matching_holidays = []
  holiday_hash.each do |season,holidays|
    holidays.each do |holiday, supplies|
      matching_holidays << holiday unless !supplies.any? "BBQ"
    end 
  end
  matching_holidays
end







