def list_people
  @people.each_with_index do |p, index|
    puts p.class
    puts "#{index} ) [#{p[:role]}]  Name: #{p[:name]}, ID: #{p[:id]}, Age: #{p[:age]}"
  end
end
