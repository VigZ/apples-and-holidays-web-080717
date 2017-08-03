require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]<< supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  temp_array = []
  holiday_hash[:winter].each do |holiday, value|
    temp_array << value
  end
  temp_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, value|
    puts "#{season.capitalize.to_s}:"
    value.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  temp_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
          temp_array << holiday
      end
    end
  end
 temp_array
end
