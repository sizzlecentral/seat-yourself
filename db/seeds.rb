Restaurant.destroy_all
User.destroy_all
Reservation.destroy_all


parts = Restaurant.create!(
  name:           'Parts & Labour',
  address:        '123 Queen St. W.',
  price_range:     2,
  summary:        'Offal',
  neighbourhood:  'Parkdale',
  website:        'partsandlabour.com',
  menu_url:       'partsandlabour.com/menu',
  capacity:       80,
  opens_at:       6,
  closes_at:      11,
  owner_id:       2

)

canoe = Restaurant.create!(
  name:           'Canoe',
  address:        '5 Yonge St.',
  price_range:     5,
  summary:        'Fancy pants',
  neighbourhood:  'Financial district',
  website:        'canoe.com',
  menu_url:       'canoe.com/menu',
  capacity:       80,
  opens_at:       7,
  closes_at:      10,
  owner_id:       2
)

subway = Restaurant.create!(
  name:           'Subway',
  address:        '987 King St. W.',
  price_range:     1,
  summary:        'Made your way',
  neighbourhood:  'Entertainment district',
  website:        'subway.com',
  menu_url:       'subway.com/menu',
  capacity:       12,
  opens_at:       6,
  closes_at:      12,
  owner_id:       3
)

bob = User.create!(
  name:           'Bob Ju',
  email:          'bob@ju.com',
  phone:          '1-800-bob-juuu',
  password:       'bob',
  password_confirmation:  'bob'
)

sean = User.create!(
  name:           'Sean Lerner',
  email:          'sean@ju.com',
  phone:          '1-800-bob-juuu',
  password:       'bob',
  password_confirmation:  'bob'
)

vlad = User.create!(
  name:           'Vlad Ju',
  email:          'vlad@ju.com',
  phone:          '1-800-bob-juuu',
  password:       'bob',
  password_confirmation:  'bob'
)

Reservation.create!(
  date:           Date.today,
  time:           7,
  party_size:     12,
  user:           bob,
  restaurant:     subway
)
