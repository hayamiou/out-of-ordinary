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
  address: "Williamsburg, NYC, USA",
  places: 2
)

Offer.create(
  user: user,
  title: "Russian Roulette",
  description: "Depressed ? Tired of living ? Make your life great again by fearing to lose it, or lose it for real.
  You'll be forever changed by this transforming crazy adventure !
  (The only bullet in the magnum 357 you'll use is in gold !)",
  price: 150,
  address: "La Goutte d'Or, Paris 18, FRANCE",
  places: 6
)

Offer.create(
  user: user,
  title: "Time Traveller",
  description: "Always thought you should have been 20 in Woodstock
  or eager to see what future on earth looks like ?
  Choose your era and travel there for 24 hours !",
  price: 1000,
  address: "Retour vers le futur 3, Dolorean avenue, FANTASIA",
  places: 1
)

Offer.create(
  user: user,
  title: "London Call",
  description: "Get an adrenaline boost with our London buses thief challenge !
  As a team of 8, you should be able to neutralize a Londonian bus driver and steal his vehicule.
  Bonus point for each passenger you have as an hostage",
  price: 150,
  address: "Soho, London, ENGLAND",
  places: 8
)

p "Created #{Offer.count} offers"
