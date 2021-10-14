require_relative '../texts'

def list_rentals
  Texts.text_r1
  @rentals.each do |r|
    puts "#{r.person} rented #{r.book}  on #{r.date}"

  end
end
