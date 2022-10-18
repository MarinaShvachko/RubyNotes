data = ['hexlet', 'online courses', topics: ['php', 'js']]
puts data.length

data = ['hexlet', 'online courses', ['php', 'js']]
# для доступа ко вложенному массиву используются круглые скобки
name, description, (first_topic, second_topic) = data # учли количество элементов
puts data
puts '---'
# _ – используется, когда значение не важно
_, _, (first_topic, _) = data # так же все элементы учтены

# * – указывает, что нам не важны все значения
*, (_, second_topic) = data # пропустили элементы в первом массиве, во вложенном количество учтено

# данный пример вызовет исключение: не учли количество элементов
#name, description, (first_topic) = data # Error


# отделение первого или последнего элемента
name, *rest = data
puts data #hexlet online courses php js
puts
puts *rest #online courses php js (delete first element)

puts
# В любом месте (delete first and last element)
name, *rest, topic = data
puts rest # ["online courses"]

puts '--------- for hash -------------'
data = {
  name: 'hexlet',
  description: 'online courses',
  topic: 'programming'
}

# values_at возвращает массив из значений для указанных ключей
name, description = data.values_at(:name, :description)
puts data


puts ' --- ---'

# разложен первый аргумент
# обязательны скобки
def process((name, *rest))
  # логика
  puts name
  print *rest
end

data = ['hexlet', 'online courses', 'programming']
 process(data)


puts ' --- delete second element ---'
def convert(data77)
  result=[]
  data77.each do | o, t, h|
    result << [o, h]
  end
  result
end

data6 = [
  ['ruby', 'dynamic', 'strong'],
  ['js', 'dynamic', 'weak'],
  ['c', 'static', 'weak'],
  ['kotlin', 'static', 'strong']
]
puts
puts convert(data6)