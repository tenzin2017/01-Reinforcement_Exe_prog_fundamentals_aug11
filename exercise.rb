array = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#saving direction of train 111 as variable
train_111_dir = 0
array.each do |train|
 if train[:train]=="111"
   train_111_dir = train[:direction]
end
end
puts train_111_dir

#saving freq of train 80B into a variable
train_80B_freq = 0
array.each do |train|
  if train[:train]=="80B"
    train_80B_freq = train[:frequency_in_minutes]
  end
end
puts train_80B_freq

#saving direction of train 610 into a variable
train_610_dir = 0
array.each do |train|
  if train[:train] == "610"
    train_610_dir = train[:direction]
  end
end
puts train_610_dir

#creating array of trains travelling to south
north_train = []
array.each do |train|
  if train[:direction] == "south"
    north_train << train[:train]
  end
end
puts north_train.inspect

#creating array of trains travelling to east
east_train = []
array.each do |train|
  if train[:direction] == "east"
    east_train << train[:train]
  end
end
puts east_train.inspect

#creating a method
def trains(array,direction)
  your_train = []
  array.each do |train|
    if train[:direction] == direction
      your_train << train[:train]
    end
  end
  return your_train
end

puts trains(array, "south")
puts trains(array,"east")

#adding key/value pair for the first-departure-time
array[0].store(:first_departure_time, 1300)
puts array

#another way for storing new key/value pair in hash
array[0][:first_departure_time] = 1300
