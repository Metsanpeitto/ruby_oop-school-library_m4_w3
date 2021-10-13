require 'json'
require './classes/book'
require './classes/person'
require './classes/rental'

def get_path(path)
  data_hash = nil
  if Dir.exist?('./store') && !File.zero?(path)
    raw = File.open(path)
    file = File.read(raw)
    data_hash = JSON.parse(file) if file != ''
  end
  data_hash
end

def set_path(category, data)
  data_hash = JSON.parse(data)
  File.write(category, JSON.dump(data_hash))
end

def save_data
  books = books_2_json
  rentals = rentals_2_json
  if books.size.positive? && rentals.size.positive? && @people.size.positive?
    set_path('./store/books.json', books.to_json)
    set_path('./store/rentals.json', rentals.to_json)
    set_path('./store/people.json', JSON.generate(@people))
    puts 'Data Stored'
  else
    puts 'No data stored'
  end
end

def obtain_data
  books = get_path('./store/books.json')
  people = get_path('./store/people.json')
  rentals = get_path('./store/rentals.json')

  if books && people && rentals
    puts 'Data loaded'
    json_2_books(books)
    json_2_people(people)
    json_2_rentals(rentals)
  else
    puts "Can't find any stored data"
  end
end

def books_2_json
  books = []
  @books.each do |b|
    book = { title: b.title, author: b.author }
    books.push(book)
  end
  books
end

def people_2_json
  people = []
  @people.each do |p|
    person = { role: p.person[:role],
               name: p.person[:name],
               id: p.person[:id.to_s],
               age: p.person[:age],
               classroom: p.person[:classroom],
               rentals: p.person[:rentals] }
    people.push(person)
  end
  people
end

def rentals_2_json
  rentals = []
  @rentals.each do |r|
    date = r.date
    book = r.book
    person = r.person
    next unless date && book && person

    rental = { date: r.date,
               book: r.book,
               person: r.person }
    rentals.push(rental)
  end
  rentals
end

def json_2_books(json_data)
  json_data.each do |d|
    book = Book.new({ title: d['title'], author: d['author'] })
    @books << book
  end
end

def json_2_people(json_data)
  json_data.each do |d|
    role = d['role']
    permission = d['permission']
    user = Person.new(age: d['age'], permission: permission, name: d['name'])
    person = { role: role, name: user.name, id: user.id, age: user.age, parent_permission: permission, rentals: [] }
    user.from_json(d)
    @people << person
  end
end

def json_2_rentals(json_data)
  rentals = []
  p @books
  p @people
  json_data.each do |r|
    rental = Rental.new(r['date'])
    rental.book = get_item(@books, r, 'book')
    rental.person = get_item(@people, r, 'person')
    rentals.push(rental)
  end
  @rentals = rentals
end

def get_item(array_of_items, reserve, type)
  if array_of_items
    array_of_items.each do |item|
      if type == 'person'
        return item if item[:name] == reserve[type]
      elsif item.title == reserve[type]
        return item
      end
    end
  end
end
