# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator name_arr
    new_arr = []
    name_arr.each do |name|
        new_arr << "Hello, my name is #{name}."
    end

    return new_arr
end

def assign_rooms attendees
    if attendees.length == 0
        return nil
    end
    new_arr = []
    # speakers.map do |speaker, index|
    #     new_arr << "Hello #{speaker}! You'll be assigned to room #{index}"
    # end
    attendees.each_with_index do |item, index|
        new_arr << "Hello, #{item}! You'll be assigned to room #{index+1}!"
    end

    return new_arr
end

def printer attendees
    batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end