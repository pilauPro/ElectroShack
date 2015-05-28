c1 = Customer.create(first_name: 'Matt', last_name: 'Leininger', user_name: 'mmleinin', password: '12ozzy')
c2 = Customer.create(first_name: 'Heather', last_name: 'Eicher', user_name: 'heicher', password: '12happy')

p1 = Product.create(name: 'Samsung Galaxy s6 Edge', price: 699.99, quantity: 210, image: 'http://www.popsci.com/sites/popsci.com/files/styles/medium_1x_/public/images/2015/03/sm-g925f_014_r-front-dynamic_black_sapphire.jpg?itok=waQPEzKy')
p2 = Product.create(name: 'Apple iPhone 6 Plus', price: 750.99, quantity: 110, image: 'http://store.storeimages.cdn-apple.com/4587/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/plus/iphone6-plus-box-gold-2014?wid=478&hei=595&fmt=jpeg&qlt=9')
p3 = Product.create(name: 'Microsoft Xbox One', price: 359.99, quantity: 95, image: 'http://static1.gamespot.com/uploads/original/1534/15343359/2823737-6174472236-26119.jpg')
p4 = Product.create(name: 'Apple MacBook Pro 15 Retina', price: 2599.99, quantity: 50, image: 'http://www.notebookcheck.net/fileadmin/_processed_/csm_macbookpro_15_leopard_04_945fe656d5.jpg')
p5 = Product.create(name: 'Nintendo wii u', price: 249.99, quantity: 85, image: 'http://g-ecx.images-amazon.com/images/G/01/aplus/detail-page/B009AGXH64hardware.jpg')

o1 = Order.create(customer_id: c1.id)
o2 = Order.create(customer_id: c2.id)
o3 = Order.create(customer_id: c2.id)
o4 = Order.create(customer_id: c1.id)


o1.products << [p1, p3]
o2.products << [p1, p2, p3]
o3.products << [p4]
o4.products << [p5, p4]


orders = Order.all
orders.each do |o|
  total = 0
  o.products.each do |p|
    total += p.price
  end
  o.total = total
  o.save!
end