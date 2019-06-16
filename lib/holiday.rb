require 'pry'
require 'byebug'

def second_supply_for_fourth_of_july(holiday_hash)

  return holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
    holiday_hash[:winter][:christmas] = supply
    holiday_hash[:winter][:new_years] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
 
    holiday_hash[:spring][:memorial_day] = supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

    holiday_hash[season][holiday_name] = supply_array      
    puts holiday_hash

end


def all_winter_holiday_supplies(holiday_hash)
      collection = []
      holiday_hash[:winter].each do |holiday, supply|
          
          collection << supply
            
      end
      return collection.flatten
end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holidays_array = []
  holiday_hash.each do |season, holiday_and_supplies|
    puts "#{season.to_s.capitalize}:"
    holiday_and_supplies.each do |holiday, supply_array|

      split_holiday = holiday.to_s.split('_')
      capitalized_holiday = split_holiday.collect {|word| word.capitalize}.join(' ')

      capitalized_supplies = supply_array.collect do |individual_supply|
        if individual_supply == "BBQ"
          individual_supply.upcase
        else
          individual_supply.split(' ').collect {|word| word.capitalize}.join(' ')
        end
      end
      
      puts "  #{capitalized_holiday}: #{capitalized_supplies.join(', ')}"
      end
    end

end

def all_holidays_with_bbq(holiday_hash)

    array = []
    holiday_hash.collect do |season, holiday_name_and_supplies|
      holiday_name_and_supplies.collect do |holiday, supplies|
        if supplies.include?("BBQ")
        array.push(holiday)
        end
      end
    end
    array
end

 





