Restaurant.destroy_all
User.destroy_all
Reservation.destroy_all


parts = Restaurant.create!(
  name:           'Parts & Labour',
  address:        '123 Queen St. W.',
  price_range:     2,
  summary:        "Established in 2010 to major acclaim as the new cultural hub of Parkdale, this design infused space boasts an haute cuisine restaurant/bar, a live-music venue on the lower level, and is available for private events.  Brought to you by the young entrepreneurs behind The Social, Oddfellows and Castor, P & L offers flexibility for event styles due to its multi-faceted and open space.  It’s internal design elements including exposed brick walls, Castor designed wood burning fireplace, multi-coloured bar lighting made out of repurposed fire extinguishers, and bar with corkscrew stools will only add a modern panache to any event.",
  neighbourhood:  'Parkdale',
  website:        'http://www.partsandlabour.ca/',
  menu_url:       'https://static1.squarespace.com/static/52255c4fe4b01cea4fd99a47/t/591f9c3db3db2b2e45f267d7/1495243848332/P%26L_2017_Spring_V2.1_WEB.pdf',
  capacity:       80,
  opens_at:       6,
  closes_at:      11,
  owner_id:       2,
  featured_image: 'http://dobbernationloves.com/wp-content/uploads/2010/09/img_7298.jpg'
)

canoe = Restaurant.create!(
  name:           'Canoe',
  address:        '5 Yonge St.',
  price_range:     5,
  summary:        "Paying tribute to the people, land, and culture of Canada’s distinct provinces, Canoe highlights our nation’s flavours and ingredients through seasonal tasting menus and à la carte dishes.  The wine list is extensive yet well-curated, featuring both Canadian winemakers and international vineyards. Our hand-crafted cocktails are rooted in classic flavours with a uniquely Canadian twist.",
  neighbourhood:  'Financial district',
  website:        'http://www.canoerestaurant.com/',
  menu_url:       'http://www.canoerestaurant.com/menus/',
  capacity:       80,
  opens_at:       7,
  closes_at:      10,
  owner_id:       2,
  featured_image: 'http://blog.weddingful.com/wp-content/uploads/2014/07/Canoe.jpg'
)

subway = Restaurant.create!(
  name:           'Subway',
  address:        '987 King St. W.',
  price_range:     1,
  summary:        "Today, the SUBWAY brand is the world's largest submarine sandwich chain with more than 44,000 locations around the world. We've become the leading choice for people seeking quick, nutritious meals that the whole family can enjoy. From the beginning, Fred has had a clear vision for the future of the SUBWAY brand. As we continue to grow, we are guided by his passion for delighting customers by serving delicious, made-to-order sandwiches.",
  neighbourhood:  'Entertainment district',
  website:        'http://www.subway.com/en-CA',
  menu_url:       'http://www.subway.com/en-CA/MenuNutrition/Menu/All',
  capacity:       12,
  opens_at:       6,
  closes_at:      12,
  owner_id:       3,
  featured_image: 'https://i.ytimg.com/vi/nLTl4czrfmw/maxresdefault.jpg'
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
