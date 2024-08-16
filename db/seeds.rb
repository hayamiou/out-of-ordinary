Booking.destroy_all
Offer.destroy_all
User.destroy_all
user = User.create(email: "pleinlabox@gmail.com", password: "555555")

Offer.create(
  user: user,
  title: "Be a firefighter for a day !",
  description: "You always dreamt to be a hero ?
  Come with our special NYC unit of firefighters for a day a save lifes !
  All founds will be refounded to firefighter's orphans.",
  price: 95,
  address: "161 S 2nd St, Brooklyn, NY 11211, USA",
  places: 2
)

Offer.create(
  user: user,
  title: "Russian Roulette",
  description: "Depressed ? Tired of living ? Make your life great again by fearing to lose it, or lose it for real.
  You'll be forever changed by this transforming crazy adventure !
  (The only bullet in the magnum 357 you'll use is in gold !)",
  price: 150,
  address: "17 rue de Trévise, 75009 Paris, France",
  places: 6
)

Offer.create(
  user: user,
  title: "Time Traveler",
  description: "Always thought you should have been 20 in Woodstock
  or eager to see what future on earth looks like ?
  Choose your era and travel there for 24 hours, not a minute more !",
  price: 1000,
  address: " 11, Yeonhui-ro 2-gil, Seodaemun-gu, Seodaemun-gu, 03784 Séoul, Corée du Sud",
  places: 1
)

Offer.create(
  user: user,
  title: "London Call",
  description: "Get an adrenaline boost with our London buses thief challenge !
  As a team of 8, you should be able to neutralize a Londonian bus driver and steal his vehicule.
  Bonus point for each passenger you have as an hostage",
  price: 150,
  address: "Great Russell St, London WC1B 3DG, United Kingdom",
  places: 8
)

Offer.create(
  user: user,
  title: "Ride a unicorn !",
  description: "You've always been told unicorns don't exist ? UNTRUE ! We have a whole stable of them to prove it. Book the ride of your life !",
  price: 300,
  address: "57G3+G8C, Nuuk 3905? groenland",
  places: 6
)

Offer.create(
  user: user,
  title: "Bucket List",
  description: "You're dying soon ? Your life is meaningless ? Give us your bucket list and we'll make it happen for you in the shortest among of time !",
  price: 1000,
  address: "932V+79M, Ouidah, Benin",
  places: 1
)

p "Created #{Offer.count} offers"
