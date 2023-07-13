# Creating dealers
# In your seed file

Dealer.create([
    {
      name: 'Mecaquartz Chronograph',
      address: '17, sarat gupta road, narinda, 1100',
      contact: '89747564',
      email: 'azzurro@example.com',
      password: 'password'
    },
    {
      name: 'Richards',
      address: ' 147 Mount Royal Avenue, Nassau',
      contact: '4765738321',
      email: 'richards@example.com',
      password: 'password'
    },
    {
      name: 'Patex',
      address: 'Robinson Rd & Minnie St, Nassau',
      contact: '456473283',
      email: 'patek@example.com',
      password: 'password'
    },
    {
      name: 'Carly Suchy & Sohne',
      address: ' Depto. 26 Barrio San Fernando ',
      contact: '3453433753',
      email: 'carlysuchy4@example.com',
      password: 'password'
    },
    {
      name: 'Auguste Reymond',
      address: ' Mina El Quevar 1197 Barrio Barbara',
      contact: '4375736373 ',
      email: 'auguste5@example.com',
      password: 'password'
    }
  ])
  
  # Creating customers
  10.times do
    Customer.create(
      name: Faker::Name.name,
      address: Faker::Address.full_address,
      email: Faker::Internet.email,
      password: 'password'
    )
  end
  puts " seeding customers..."
  
  # Creating watches

  Watch.create([
    {
      name: 'Pista',
      dealer_id: 1,
      brand: 'Pista 24 - Motul Edition',
      price: 664,
      year: 2021,
      image_url: 'https://depancel.com/cdn/shop/products/Pista24-MotulEdition_300x.webp?v=1674142713'
    },
    {
      name: 'Pista GT ',
      brand: 'Pista GT -Full Black ',
      dealer_id: 1,
      price: 1106,
      year: 2022,
      image_url: 'https://depancel.com/cdn/shop/products/Sanstitre_1_77c2797f-75b5-4d42-b883-c060abe7fddc_300x.png?v=1674722173'
    },
    {
      name: 'Allure',
      dealer_id: 2,
      brand: 'Allure-Legend 60s -Panda',
      price: 660,
      year: 2020,
      image_url: 'https://depancel.com/cdn/shop/products/1_1b685dd7-35b9-46bd-9a55-d2096565722d_1000x.png?v=1678785179'
    },
    {
        name: 'Allure',
        dealer_id: 2,
        brand: 'Allure-Tangerine',
        price: 660,
        year: 2020,
        image_url: 'https://depancel.com/cdn/shop/files/JURGENII_3_4_CUIR-Siteproductpage-gallery_1000x.jpg?v=1688993572'
      },
      {
        name: 'F-back',
        dealer_id: 3,
        brand: 'f-back - Dusk Blue',
        price: 664,
        year: 1970,
        image_url: 'https://depancel.com/cdn/shop/products/f-back-DuskBlue-RacingBrown_300x.webp?v=1674141419'
      },
      {
        name: 'F-back',
        dealer_id: 3,
        brand: 'f-back - Rising  White',
        price: 664,
        year: 1990,
        image_url: 'https://depancel.com/cdn/shop/products/f-back-RisingWhite-RacingBlack_300x.webp?v=1674544477'
      },
      {
        name: 'F-back',
        dealer_id: 3,
        brand: 'f-back - Metallic Green',
        price: 664,
        year: 1990,
        image_url: 'https://depancel.com/cdn/shop/products/f-back-MetallicGreen-RacingBlack_300x.webp?v=1674142218'
      },
      {
        name: 'Cruiser',
        dealer_id: 3,
        brand: 'Cruiser -Petrol Blue',
        price: 789,
        year: 2004,
        image_url: 'https://depancel.com/cdn/shop/products/Cruiser-PetrolBlue-DrivingBlack_300x.webp?v=1673959393'
      },
      {
        name: 'Cruiser',
        dealer_id: 3,
        brand: 'Cruiser -Dark Green',
        price: 789,
        year: 2004,
        image_url: 'https://depancel.com/cdn/shop/products/Cruiser-DarkGreen-DrivingBlack_300x.webp?v=1673959379'

      },
      {
        name: 'Richard Miller',
        dealer_id: 4,
        brand: 'RM 72-01 le Mans Classic',
        price: 386000,
        year: 2019,
        image_url: 'https://cdn.thewatchpages.com/app/uploads/2023/06/22082210/richard-mille-rm-72-01-le-mans-classic-141439509-800x1346.jpeg'

      },
      {
        name: 'Richard Miller',
        dealer_id: 4,
        brand: 'RM 07-01 Automatic Racing Red',
        price: 116000,
        year: 2021,
        image_url: 'https://cdn.thewatchpages.com/app/uploads/2021/04/13202717/richard-mille-rm-07-01-automatic-racing-red-530428998-800x1236.jpg'

      },
      {
        name: 'Richard Miller',
        dealer_id: 4,
        brand: 'RM 67-02 Sebastien Ogier',
        price: 163000,
        year: 2019,
        image_url: 'https://cdn.thewatchpages.com/app/uploads/2020/01/13215213/richard-mille-rm-67-02-sebastien-ogier-800x1026.jpg'

      },
      {
        name: 'Christophe Claret',
        dealer_id: 5,
        brand: 'Angelico',
        price: 218000,
        year: 2019,
        image_url: 'https://cdn.thewatchpages.com/app/uploads/2019/11/13215732/christophe-claret-angelico-mtrdtc08020-030-800x1226.jpg'

      },
      {
        name: 'Christophe Claret',
        dealer_id: 5,
        brand: 'Maestro',
        price: 96000,
        year: 2019,
        image_url: 'https://cdn.thewatchpages.com/app/uploads/2019/11/13215733/christophe-claret-maestro-quetzalcoatl-mtrdmc16320328-800x1307.jpg'

      },
      {
        name: 'Carl F.Bucherer',
        dealer_id: 5,
        brand: 'Manero AutoDate Love',
        price: 6640,
        year: 2020,
        image_url: 'https://cdn.thewatchpages.com/app/uploads/2020/09/13211846/carl-f-bucherer-manero-autodate-love-0010922075321-800x1346.jpg'

      }
  ])
  
  puts " seeding watches completed"
  
  # Creating sales
  15.times do
    dealer = Dealer.order("RANDOM()").first
    customer = Customer.order("RANDOM()").first
    watch = Watch.order("RANDOM()").first
  
    Sale.create(
      dealer: dealer,
      customer: customer,
      watch: watch,
      sale_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      sale_quantity: Faker::Number.between(from: 1, to: 5)
    )
  end
  puts " seeding completed"