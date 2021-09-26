def list_books
  @books.each_with_index do |b, index|
    puts "#{index} ) #{b.title} by #{b.author}"
  end
end
