if Recipe.count.zero?
  puts "Seeding recipes..."

  path = File.join(File.dirname(__FILE__), "./data/recipes-en.json")
  records = JSON.parse(File.read(path))

  records.each do |record|
    Recipe.create!(
      title: record["title"],
      cook_time: record["cook_time"],
      prep_time: record["prep_time"],
      ingredients: record["ingredients"],
      ratings: record["ratings"],
      cuisine: record["cuisine"],
      category: record["category"],
      author: record["author"],
      image: record["image"]
    )
  end

  puts "Recipes are seeded"
end
