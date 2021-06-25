Supplier.create!([
  {name: "Dell", email: "dell@example.com", phone_number: "555-555-5555"}
])
Product.create!([
  {name: "Microphone", price: "39.99", image_url: "https://images-na.ssl-images-amazon.com/images/I/71V4ytRfB0L._AC_SL1500_.jpg", description: "Blue Snowball iCE USB Mic for Recording and Streaming on PC and Mac, Cardioid Condenser Capsule, Adjustable Stand, Plug and Play – Black", stock: 5},
  {name: "Computer", price: "800.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/7161%2BB-5StL._AC_SL1500_.jpg", description: "This is a description of the Computer product.", stock: nil},
  {name: "Keyboard", price: "50.0", image_url: "https://mercari-images.global.ssl.fastly.net/photos/m99461935228_1.jpg?1598297530", description: "This is a description of the Keyboard product.", stock: nil},
  {name: "Mousepad", price: "8.0", image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5869/5869549_sd.jpg;maxHeight=640;maxWidth=550", description: "This is a gaming mousepad", stock: nil},
  {name: "Headset", price: "100.0", image_url: "https://assets.sennheiser.com/img/18209/product_detail_x2_desktop_HD_559_Sennheiser_01.jpg", description: "The open around ear headphones HD 559 is the ideal choice for listeners seeking an optimal blend of all-round performance and quality for home entertainment.", stock: nil}
])
