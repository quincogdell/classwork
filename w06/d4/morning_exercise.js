s = new Store();

u1 = new User();
sCart = new shoppingCart();

i1 = new Item('one');
i2 = new Item('two');

s.showItems();

u1.addItem(i1);
u1.addItem(i2);

sCart.showItems();
sCart.showTotalCost();

u1.removeItem(i2);

sCart.showItems();
sCart.showTotalCost();

u1.checkout();
sCart.collectPayment();






// CitiBikes

bikeSystem = new BikeSystem();

s1 = bikeSystem.create_station();
s2 = bikeSystem.create_station();


