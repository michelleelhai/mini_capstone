
User.create!([
  {name: "mishy", email: "mishy@yahoo", password_digest: "$2a$12$oZChhUfmhkFpcQnjSSCzdeYCRyNHpwS8/XM9OAJ7HOBD1ZSA/6whC", admin: false},
  {name: "joe", email: "joe@yahoo.com", password_digest: "$2a$12$Mf6wkKkVoe6wZ69IEvcu7eSbDs004by8uYL1GjpnxHPRL9N54fVIC", admin: true},
  {name: "a", email: "a@yahoo.com", password_digest: "$2a$12$lWvyYzOoG884mMKm0GKb8eChKTh15sIcHY5aHzebuE1.lD.ejnJGu", admin: false},
  {name: "laura", email: "laura@gmail.com", password_digest: "$2a$12$RvdfZ4UHGgaw3PsV0KM1XuOAX4.ZkN98atf07pWgru70FR6NW8Syq", admin: false}
])
Supplier.create!([
  {name: "Lots of Products Co", email: "LOP@LOP.co", phone_number: "898-9898"},
  {name: "Dog King", email: "dogking@gmail.co", phone_number: "454-4545"},
  {name: "Products and More", email: "productsandmore@gmail.com", phone_number: "343-3435"}])
Product.create!([
  {name: "doggos", price: "130.0", description: "only the cutest damn thing in the world", supplier_id: 3},
  {name: "turtles", price: "78.99", description: "just maybe the second cutest damn thing ever", supplier_id: 3},
  {name: "backpack", price: "48.0", description: "a helpful school supply for all ages.", supplier_id: 3},
  {name: "balloons", price: "38.0", description: "danis fear", supplier_id: 1}
])
Category.create!([
  {name: "fluffy things"},
  {name: "animals"}
])
Image.create!([
  {url: "http://static.ddmcdn.com/en-us/apl/breedselector/images/breed-selector/dogs/breeds/shiba-inu_01_lg.jpg", product_id: 1},
  {url: "https://images.unsplash.com/photo-1496196614460-48988a57fccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", product_id: 2},
  {url: "https://cdn2-www.dogtime.com/assets/uploads/2011/01/file_22906_akita-460x290.jpg", product_id: 1},
  {url: "https://partycity6.scene7.com/is/image/PartyCity/_pdp_sq_?$_1000x1000_$&$product=PartyCity/229504", product_id: 4},
  {url: "https://images.jansport.com/is/image/JanSport/JS0A47J1_008_front?$WC-FULLIMAGE$", product_id: 3}
])
Order.create!([
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 3, subtotal: "48.0", tax: "4.32", total: "52.32"},
  {user_id: 3, subtotal: "48.0", tax: "4.32", total: "52.32"}
])

ProductCategory.create!([
  {category_id: 1, product_id: 4},
  {category_id: 2, product_id: 4},
  {category_id: 1, product_id: 1}
])

