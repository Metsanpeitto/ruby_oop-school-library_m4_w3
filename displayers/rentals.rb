require_relative '../texts'

def list_rentals
  Texts.text_r1
  id = gets.chomp

  @rentals.each do |r|
    puts "#{r.person[:name]} rented #{r.book.title}  on #{r.date}" if r.person[:id] == id.to_i
  end
end
