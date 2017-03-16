my_group = []
person_1 = {name:'Dania', age: 29, gender: 'Male'}
person_2 = {name:'Jojo', age:  29, gender: 'Female'}
person_3 = {name:'Tobias', age: 2, gender: 'Male'}

my_group << person_1
my_group << person_2
my_group << person_3

my_group.each do |person|
  puts "#{person[:name]} is a #{person[:age]} 'years' 'old' #{person[:gender]}"
end
