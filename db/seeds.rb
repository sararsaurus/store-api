# Product.create!(name: "Tiny Hippo", price: 15, description: "A tiny hippo with a huge nose and stumpy little legs, small enough to sit on your palm.", image: "https://cdn.shopify.com/s/files/1/1163/8814/files/IMG_8779_large.JPG?v=1547717542")

# Product.create!(name: "Sleepy Dragon", price: 30, description: "A baby comforter in the shape of a snuggly dragon.", image: "https://d2tk9av7ph0ga6.cloudfront.net/image/catalog/2021/4/pifpaf-dino-1-700xauto.jpg")

# Product.create!(name: "Bad Cat", price: 5, description: "A somewhat abstract interpretation of a cat.", image: "https://thoresbycottage.com/wp-content/uploads/2018/08/IMG_1289-1024x683.jpg")

Category.create!([
  { name: "Cheap" },
  { name: "Wearable" },
  { name: "Infant-Safe" },
  { name: "Sea Creature" },
  { name: "Land Animal" },
])
