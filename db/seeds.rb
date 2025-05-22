hashimoto_category = Category.find_or_create_by!(name: 'Hashimoto friendly')

[
  ['Noix du Brésil bio',  35],
  ['Romarin bio',         15],
  ['Spiruline bio',       30],
  ['Curcuma bio',         35],
  ['Gingembre bio',       15],
  ['Ashwagandha bio',     30],
  ['Farine de coco bio',  15],
  ['Graines de lin bio',  15],
  ['Maca bio',            30]
].each do |name, price|
  Product.create!(
    name: name,
    description: "Sachet de 300 g – produit 100 % biologique.",
    price: price,
    stock: 50,
    image_url: "placeholder.jpg",
    category: hashimoto_category
  )
end
