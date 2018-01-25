# Exercise A

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket"]
#1 Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh Waverley")
#2 Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen Street")
#3 Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4, "Polmont")
#4 Work out the index position of "Linlithgow"
stop = 0
for station in stops
  if station == "Linlithgow"
    p "Found Linlithgow at index position #{stop}"
  end
  stop += 1
end
#5 Remove "Livingston" from the array using its name
stops.delete("Livingston")
#6 Delete "Cumbernauld" from the array by index
stops.delete_at(2)
#7 How many stops there are in the array?
p "There are #{stops.length} stops in the array."
#8 How many ways can we return "Falkirk High" from the array?
p stops[2]
p stops[-5]
#9 Reverse the positions of the stops in the array
stops.reverse!()
#10 Print out all the stops using a for loop
for station_name in stops
  puts station_name
end

puts "" #added for spacing
puts ""
# Exercise B
users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linlithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  },
}

#1 Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users["Jonathan"][:twitter]
#2 Get Erik's hometown
p users["Erik"][:home_town]
#3 Get the array of Erik's favourite numbers
p users["Erik"][:favourite_numbers]
#4 Get the type of Avril's pet Colin
p users["Avril"][:pets]["colin"]
#5 Get the smallest of Erik's favourite numbers
sorted_array = users["Erik"][:favourite_numbers].sort
p "Erik's lowest favourite number is #{sorted_array[0]}"
#6 Add the number 7 to Erik's favourite numbers
users["Erik"][:favourite_numbers].push(7)
p users["Erik"][:favourite_numbers]
#7 Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town]
#8 Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["fluffy"] = :dog
p users["Erik"][:pets]
#9 Add yourself to the users hash
users["Graeme"] = {:home_town => "Linlithgow",:pets=>{"buster" => :dog, "charlie" => :dog}}
p users ["Graeme"]

puts "" #added for spacing
puts ""
# Exercise C
united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

#1 Change the capital of Wales from "Swansea" to "Cardiff".
united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital]
#2 Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
united_kingdom.push({:name => "Northern Ireland",:population => 1811000, :capital => "Belfast"})
p united_kingdom[3]
#3 Use a loop to print the names of all the countries in the UK.
country = 0
while country < united_kingdom.length
  p united_kingdom[country][:name]
  country += 1
end
#4 Use a loop to find the total population of the UK.
country = 0
total_population = 0
while country < united_kingdom.length
  total_population += united_kingdom[country][:population]
  country += 1
end
p "Total Population of UK is #{total_population}"
