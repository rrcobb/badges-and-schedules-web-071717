# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map do |attendee|
    badge_maker(attendee)
  end
end

def assign_room(attendee, room_number)
  "Hello, #{attendee}! You'll be assigned to room #{room_number}!"
end

def assign_rooms(attendees)
  attendees.each_with_index.map { |a, i| assign_room(a, i + 1) }
end

def printer(attendees)
  batch_badge_creator(attendees).each { |str| puts str }
  assign_rooms(attendees).each { |str| puts str }
end
