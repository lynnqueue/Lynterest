# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

User.destroy_all
Board.destroy_all
Pin.destroy_all
BoardsPins.destroy_all


# user_id: 1
user1 = User.create(
  username: 'aries',
  first_name: 'Danny',
  last_name: 'Ocean',
  email: 'd_ocean@gmail.com',
  password: '123456',
  location: 'vegas',
  description: 'It sure as sh*t aint sad.'
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/download.jpeg")
user1.photo.attach(io: file, filename: "download.jpeg")

# user_id: 2
user2 = User.create(
  username: 'pisces',
  first_name: 'Linus',
  last_name: 'Caldwell',
  email: 'l_cald@gmail.com',
  password: '123456',
  location: 'vegas',
  description: 'See you when I see you'
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/download.jpeg")
user2.photo.attach(io: file, filename: "download.jpg")

# user_id: 3
user3 = User.create(
  username: 'gemini',
  first_name: 'Rusty',
  last_name: 'Ryan',
  email: 'rr123@gmail.com',
  password: '123456',
  location: 'vegas',
  description: 'Im running away with your wife'
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/download.jpeg")
user3.photo.attach(io: file, filename: "download.jpg")

# user_id: 4
user4 = User.create(
  username: 'libra',
  first_name: 'Reuben',
  last_name: 'Tishkoff',
  email: 'reu_tish@gmail.com',
  password: '123456',
  location: 'vegas',
  description: 'Are you out of your goddamn mind?'
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/download.jpeg")
user4.photo.attach(io: file, filename: "download.jpg")

# user_id: 5
# user = User.create(
#   username: 'virgo',
#   first_name: 'Frank',
#   last_name: 'Catton',
#   email: 'f_catton@gmail.com',
#   password: '123456',
#   location: 'vegas',
#   description: 'Nough said'
# )

# file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/download.jpeg")
# user.photo.attach(io: file, filename: "download.jpg")


# board_id: 1
Board.create(
  title: "Animals",
  description: "Animal photos",
  user_id: user1.id
)

# board_id: 2
Board.create(
  title: "Nature",
  description: "Nature photos",
  user_id: user2.id
)

# board_id: 3
Board.create(
  title: "Interiors",
  description: "Interiors photos",
  user_id: user3.id
)

# board_id: 4
Board.create(
  title: "Travel",
  description: "travel photos",
  user_id: user4.id
)


# ANIMAL
pin = Pin.create(
  title: "",
  description: "animal 1",
  url: "",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/nTnXC9nzTgGCXImAeU2B_submission2.jpg")
pin.photo.attach(io: file, filename: "nTnXC9nzTgGCXImAeU2B_submission2.jpg")

BoardsPins.create(
  pin_id: 1,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 2",
  url: "",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1484406566174-9da000fda645.jpeg")
pin.photo.attach(io: file, filename: "photo-1484406566174-9da000fda645.jpg")

BoardsPins.create(
  pin_id: 2,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 3",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1504208434309-cb69f4fe52b0.jpeg")
pin.photo.attach(io: file, filename: "photo-1504208434309-cb69f4fe52b0.jpeg")

BoardsPins.create(
  pin_id: 3,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 4",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1531958532341-b88dc3d33abe.jpeg")
pin.photo.attach(io: file, filename: "photo-1531958532341-b88dc3d33abe.jpeg")

BoardsPins.create(
  pin_id: 4,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 5",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1547468852-a009a1248cae.jpeg")
pin.photo.attach(io: file, filename: "photo-1547468852-a009a1248cae.jpeg")

BoardsPins.create(
  pin_id: 5,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 6",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1548625129-175bb42da502.jpeg")
pin.photo.attach(io: file, filename: "photo-1548625129-175bb42da502.jpeg")

BoardsPins.create(
  pin_id: 6,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 7",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1561652920-8f376b082576.jpeg")
pin.photo.attach(io: file, filename: "photo-1561652920-8f376b082576.jpeg")

BoardsPins.create(
  pin_id: 7,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 8",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1572368962019-b174d8455588.jpeg")
pin.photo.attach(io: file, filename: "photo-1572368962019-b174d8455588.jpeg")

BoardsPins.create(
  pin_id: 8,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 9",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1573725342230-178c824a10f2.jpeg")
pin.photo.attach(io: file, filename: "photo-1573725342230-178c824a10f2.jpeg")

BoardsPins.create(
  pin_id: 9,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 10",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1582645987199-c85d8cfbacb0.jpeg")
pin.photo.attach(io: file, filename: "photo-1582645987199-c85d8cfbacb0.jpeg")

BoardsPins.create(
  pin_id: 10,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 11",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1585908286456-991b5d0e53f4.jpeg")
pin.photo.attach(io: file, filename: "photo-1585908286456-991b5d0e53f4.jpeg")

BoardsPins.create(
  pin_id: 11,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 12",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1587675213549-82cd6379ee42.jpeg")
pin.photo.attach(io: file, filename: "photo-1587675213549-82cd6379ee42.jpeg")

BoardsPins.create(
  pin_id: 12,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 13",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1589217598472-0a8bc7744b11.jpeg")
pin.photo.attach(io: file, filename: "photo-1589217598472-0a8bc7744b11.jpeg")

BoardsPins.create(
  pin_id: 13,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 14",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1594044501419-e3c3b4d4cd47.jpeg")
pin.photo.attach(io: file, filename: "photo-1594044501419-e3c3b4d4cd47.jpeg")

BoardsPins.create(
  pin_id: 14,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 15",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1600340432632-6ae5c7bb2347.jpeg")
pin.photo.attach(io: file, filename: "photo-1600340432632-6ae5c7bb2347.jpeg")

BoardsPins.create(
  pin_id: 15,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 16",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1600551584344-901f36fb4c9f.jpeg")
pin.photo.attach(io: file, filename: "photo-1600551584344-901f36fb4c9f.jpeg")

BoardsPins.create(
  pin_id: 16,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 17",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1601015686531-5f8a08e15755.jpeg")
pin.photo.attach(io: file, filename: "photo-1601015686531-5f8a08e15755.jpeg")

BoardsPins.create(
  pin_id: 17,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 18",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1601214571665-8871c68fcd46.jpeg")
pin.photo.attach(io: file, filename: "photo-1601214571665-8871c68fcd46.jpeg")

BoardsPins.create(
  pin_id: 18,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 19",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1601293058843-f34e8dd9ccfd.jpeg")
pin.photo.attach(io: file, filename: "photo-1601293058843-f34e8dd9ccfd.jpeg")

BoardsPins.create(
  pin_id: 19,
  board_id: 1
)

pin = Pin.create(
  title: "",
  description: "Animal 20",
  url: "unsplash.com",
  user_id: user1.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/animals/photo-1601994000213-ae29f61232bd.jpeg")
pin.photo.attach(io: file, filename: "photo-1601994000213-ae29f61232bd.jpeg")

BoardsPins.create(
  pin_id: 20,
  board_id: 1
)


# NATURE

pin = Pin.create(
  title: "",
  description: "Nature 1",
  url: "unsplash.com",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1477322524744-0eece9e79640.jpeg")
pin.photo.attach(io: file, filename: "photo-1477322524744-0eece9e79640.jpeg")

BoardsPins.create(
  pin_id: 21,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 2",
  url: "unsplash.com",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1547619378-933802c1fd76.jpeg")
pin.photo.attach(io: file, filename: "photo-1547619378-933802c1fd76.jpeg")

BoardsPins.create(
  pin_id: 22,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 3",
  url: "unsplash.com",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1571129163939-5ddafd71fa91.jpeg")
pin.photo.attach(io: file, filename: "photo-1571129163939-5ddafd71fa91.jpeg")

BoardsPins.create(
  pin_id: 23,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 4",
  url: "unsplash.com",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1587732305677-5bc3c4bda871.jpeg")
pin.photo.attach(io: file, filename: "photo-1587732305677-5bc3c4bda871.jpeg")

BoardsPins.create(
  pin_id: 24,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 5",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1596709097416-6d4206796022.jpeg")
pin.photo.attach(io: file, filename: "photo-1596709097416-6d4206796022.jpeg")

BoardsPins.create(
  pin_id: 25,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 6",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1603879607624-06fcd4ab2894.jpeg")
pin.photo.attach(io: file, filename: "photo-1603879607624-06fcd4ab2894.jpeg")

BoardsPins.create(
  pin_id: 26,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 7",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1605441065768-a2798213ac26.jpeg")
pin.photo.attach(io: file, filename: "photo-1605441065768-a2798213ac26.jpeg")

BoardsPins.create(
  pin_id: 27,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 8",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1605463937280-695c6d381609.jpeg")
pin.photo.attach(io: file, filename: "photo-1605463937280-695c6d381609.jpeg")

BoardsPins.create(
  pin_id: 28,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 9",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1605539558089-0c14c173b015.jpeg")
pin.photo.attach(io: file, filename: "photo-1605539558089-0c14c173b015.jpeg")

BoardsPins.create(
  pin_id: 29,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 10",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1605609476793-3015923b4be1.jpeg")
pin.photo.attach(io: file, filename: "photo-1605609476793-3015923b4be1.jpeg")

BoardsPins.create(
  pin_id: 30,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 11",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1605719720214-ba96e80dc9c2.jpeg")
pin.photo.attach(io: file, filename: "photo-1605719720214-ba96e80dc9c2.jpeg")

BoardsPins.create(
  pin_id: 31,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 12",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1605977216813-2db4874819b4.jpeg")
pin.photo.attach(io: file, filename: "photo-1605977216813-2db4874819b4.jpeg")

BoardsPins.create(
  pin_id: 32,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 13",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1606005162013-8e97e17ec10a.jpeg")
pin.photo.attach(io: file, filename: "photo-1606005162013-8e97e17ec10a.jpeg")

BoardsPins.create(
  pin_id: 33,
  board_id: 2
)

pin = Pin.create(
  title: "",
  description: "Nature 14",
  url: "",
  user_id: user2.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/nature/photo-1606029246036-7b352c188652.jpeg")
pin.photo.attach(io: file, filename: "photo-1606029246036-7b352c188652.jpeg")

BoardsPins.create(
  pin_id: 34,
  board_id: 2
)


# INTERIORS
pin = Pin.create(
  title: "",
  description: "Interiors 01",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1524693220625-1ce88de88992.jpeg")
pin.photo.attach(io: file, filename: "photo-1524693220625-1ce88de88992.jpeg")

BoardsPins.create(
  pin_id: 35,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 02",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1552900096-5d526c911707.jpeg")
pin.photo.attach(io: file, filename: "photo-1552900096-5d526c911707.jpeg")

BoardsPins.create(
  pin_id: 36,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 03",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1554971517-f21bd29c09af.jpeg")
pin.photo.attach(io: file, filename: "photo-1554971517-f21bd29c09af.jpeg")

BoardsPins.create(
  pin_id: 37,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 04",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1555116505-38ab61800975.jpeg")
pin.photo.attach(io: file, filename: "photo-1555116505-38ab61800975.jpeg")

BoardsPins.create(
  pin_id: 38,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 05",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1577892209774-00115cf0428d.jpeg")
pin.photo.attach(io: file, filename: "photo-1577892209774-00115cf0428d.jpeg")

BoardsPins.create(
  pin_id: 39,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 06",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1579197647896-90e794118293.jpeg")
pin.photo.attach(io: file, filename: "photo-1579197647896-90e794118293.jpeg")

BoardsPins.create(
  pin_id: 40,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 07",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1581970696773-e8db5c771e68.jpeg")
pin.photo.attach(io: file, filename: "photo-1581970696773-e8db5c771e68.jpeg")

BoardsPins.create(
  pin_id: 41,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 08",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1582663120922-9c233bfb74e2.jpeg")
pin.photo.attach(io: file, filename: "photo-1582663120922-9c233bfb74e2.jpeg")

BoardsPins.create(
  pin_id: 42,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 09",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1582749911683-de45b174f669.jpeg")
pin.photo.attach(io: file, filename: "photo-1582749911683-de45b174f669.jpeg")

BoardsPins.create(
  pin_id: 43,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 10",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1584973547886-92c625508e24.jpeg")
pin.photo.attach(io: file, filename: "photo-1584973547886-92c625508e24.jpeg")

BoardsPins.create(
  pin_id: 44,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 11",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1589793907316-f94025b46850.jpeg")
pin.photo.attach(io: file, filename: "photo-1589793907316-f94025b46850.jpeg")

BoardsPins.create(
  pin_id: 45,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 12",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1590653264295-33093c07bd05.jpeg")
pin.photo.attach(io: file, filename: "photo-1590653264295-33093c07bd05.jpeg")

BoardsPins.create(
  pin_id: 46,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 13",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1596194789619-e0ff3e3f310a.jpeg")
pin.photo.attach(io: file, filename: "photo-1596194789619-e0ff3e3f310a.jpeg")

BoardsPins.create(
  pin_id: 47,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 14",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1601743383597-c24974f7112b.jpeg")
pin.photo.attach(io: file, filename: "photo-1601743383597-c24974f7112b.jpeg")

BoardsPins.create(
  pin_id: 48,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 15",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1602005913008-fdae98a9eaf9.jpeg")
pin.photo.attach(io: file, filename: "photo-1602005913008-fdae98a9eaf9.jpeg")

BoardsPins.create(
  pin_id: 49,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 16",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1602484069629-7033c3c6194c.jpeg")
pin.photo.attach(io: file, filename: "photo-1602484069629-7033c3c6194c.jpeg")

BoardsPins.create(
  pin_id: 50,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 17",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1602701056390-09456b050ac9.jpeg")
pin.photo.attach(io: file, filename: "photo-1602701056390-09456b050ac9.jpeg")

BoardsPins.create(
  pin_id: 51,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 18",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1602834030251-c7b364a2ee34.jpeg")
pin.photo.attach(io: file, filename: "photo-1602834030251-c7b364a2ee34.jpeg")

BoardsPins.create(
  pin_id: 52,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 19",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1602872030219-ad2b9a54315c.jpeg")
pin.photo.attach(io: file, filename: "photo-1602872030219-ad2b9a54315c.jpeg")

BoardsPins.create(
  pin_id: 53,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 20",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1602872367034-564924d238b7.jpeg")
pin.photo.attach(io: file, filename: "photo-1602872367034-564924d238b7.jpeg")

BoardsPins.create(
  pin_id: 54,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 21",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1603204077345-7afb41a47e18.jpeg")
pin.photo.attach(io: file, filename: "interiors/photo-1603204077345-7afb41a47e18.jpeg")

BoardsPins.create(
  pin_id: 55,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 22",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1603224539456-606f29bd2a0a.jpeg")
pin.photo.attach(io: file, filename: "photo-1603224539456-606f29bd2a0a.jpeg")

BoardsPins.create(
  pin_id: 56,
  board_id: 3
)

pin = Pin.create(
  title: "",
  description: "Interiors 23",
  url: "",
  user_id: user3.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/interiors/photo-1604306354505-8bab3239b009.jpeg")
pin.photo.attach(io: file, filename: "photo-1604306354505-8bab3239b009.jpeg")

BoardsPins.create(
  pin_id: 57,
  board_id: 3
)

# TRAVEL
pin = Pin.create(
  title: "",
  description: "Travel 01",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1442033409393-2870a03634e1.jpeg")
pin.photo.attach(io: file, filename: "photo-1442033409393-2870a03634e1.jpeg")

BoardsPins.create(
  pin_id: 58,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 02",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1516686560589-9ab846de9bb6.jpeg")
pin.photo.attach(io: file, filename: "photo-1516686560589-9ab846de9bb6.jpeg")

BoardsPins.create(
  pin_id: 59,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 03",
  url: "unsplash.com",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1516715297744-34f95f1ec63f.jpeg")
pin.photo.attach(io: file, filename: "photo-1516715297744-34f95f1ec63f.jpeg")

BoardsPins.create(
  pin_id: 60,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 04",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1517157322632-15df54e726d3.jpeg")
pin.photo.attach(io: file, filename: "photo-1517157322632-15df54e726d3.jpeg")

BoardsPins.create(
  pin_id: 61,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 05",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1517164481925-73c4f907f47a.jpeg")
pin.photo.attach(io: file, filename: "photo-1517164481925-73c4f907f47a.jpeg")

BoardsPins.create(
  pin_id: 62,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 06",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1531204823259-03b92a613013.jpeg")
pin.photo.attach(io: file, filename: "photo-1531204823259-03b92a613013.jpeg")

BoardsPins.create(
  pin_id: 63,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 07",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1534856966153-c86d43d53fe0.jpeg")
pin.photo.attach(io: file, filename: "photo-1534856966153-c86d43d53fe0.jpeg")

BoardsPins.create(
  pin_id: 64,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 08",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1543512686-9f9a0a62d5f2.jpeg")
pin.photo.attach(io: file, filename: "photo-1543512686-9f9a0a62d5f2.jpeg")

BoardsPins.create(
  pin_id: 65,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 09",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1575492534537-792e4e1b8bed.jpeg")
pin.photo.attach(io: file, filename: "photo-1575492534537-792e4e1b8bed.jpeg")

BoardsPins.create(
  pin_id: 66,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 10",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1575735409309-e0ecb6088fcd.jpeg")
pin.photo.attach(io: file, filename: "photo-1575735409309-e0ecb6088fcd.jpeg")

BoardsPins.create(
  pin_id: 67,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 11",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1578133950461-ff75984e6392.jpeg")
pin.photo.attach(io: file, filename: "photo-1578133950461-ff75984e6392.jpeg")

BoardsPins.create(
  pin_id: 68,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 12",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1583317094917-8aac805fed5a.jpeg")
pin.photo.attach(io: file, filename: "photo-1583317094917-8aac805fed5a.jpeg")

BoardsPins.create(
  pin_id: 69,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 13",
  url: "unsplash.com",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1586609073158-3e47c1e24b28.jpeg")
pin.photo.attach(io: file, filename: "photo-1586609073158-3e47c1e24b28.jpeg")

BoardsPins.create(
  pin_id: 70,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 14",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1601917717704-28a5801b9901.jpeg")
pin.photo.attach(io: file, filename: "photo-1601917717704-28a5801b9901.jpeg")

BoardsPins.create(
  pin_id: 71,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 15",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1603104143215-0e1f60e7c056.jpeg")
pin.photo.attach(io: file, filename: "photo-1603104143215-0e1f60e7c056.jpeg")

BoardsPins.create(
  pin_id: 72,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 16",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1603104144902-8a46f21ca4c5.jpeg")
pin.photo.attach(io: file, filename: "photo-1603104144902-8a46f21ca4c5.jpeg")

BoardsPins.create(
  pin_id: 73,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 17",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1603793516210-5cf879f819af.jpeg")
pin.photo.attach(io: file, filename: "photo-1603793516210-5cf879f819af.jpeg")

BoardsPins.create(
  pin_id: 74,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 18",
  url: "unsplash.com",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1603888614264-1130819e9a64.jpeg")
pin.photo.attach(io: file, filename: "photo-1603888614264-1130819e9a64.jpeg")

BoardsPins.create(
  pin_id: 75,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 19",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604042834213-db512237efdf.jpeg")
pin.photo.attach(io: file, filename: "photo-1604042834213-db512237efdf.jpeg")

BoardsPins.create(
  pin_id: 76,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 20",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604164389024-1df8238674d5.jpeg")
pin.photo.attach(io: file, filename: "photo-1604164389024-1df8238674d5.jpeg")

BoardsPins.create(
  pin_id: 77,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 21",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604186433294-f4f2721825ef.jpeg")
pin.photo.attach(io: file, filename: "photo-1604186433294-f4f2721825ef.jpeg")

BoardsPins.create(
  pin_id: 78,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 22",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604304694557-d669026ce88f.jpeg")
pin.photo.attach(io: file, filename: "photo-1604304694557-d669026ce88f.jpeg")

BoardsPins.create(
  pin_id: 79,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 23",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604608672516-f1b9b1d37076.jpeg")
pin.photo.attach(io: file, filename: "photo-1604608672516-f1b9b1d37076.jpeg")

BoardsPins.create(
  pin_id: 80,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 24",
  url: "unsplash.com",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604608681018-e5c9db554fd5.jpeg")
pin.photo.attach(io: file, filename: "photo-1604608681018-e5c9db554fd5.jpeg")

BoardsPins.create(
  pin_id: 81,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 25",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604947498105-0ed418039700.jpeg")
pin.photo.attach(io: file, filename: "photo-1604947498105-0ed418039700.jpeg")

BoardsPins.create(
  pin_id: 82,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 26",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1604999286549-9775ca576cd3.jpeg")
pin.photo.attach(io: file, filename: "photo-1604999286549-9775ca576cd3.jpeg")

BoardsPins.create(
  pin_id: 83,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 27",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605025205217-e4e835e57ac5.jpeg")
pin.photo.attach(io: file, filename: "photo-1605025205217-e4e835e57ac5.jpeg")

BoardsPins.create(
  pin_id: 84,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 28",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605051268785-c9199f2d2103.jpeg")
pin.photo.attach(io: file, filename: "photo-1605051268785-c9199f2d2103.jpeg")

BoardsPins.create(
  pin_id: 85,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 29",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605085805739-e7d98e270db3.jpeg")
pin.photo.attach(io: file, filename: "photo-1605085805739-e7d98e270db3.jpeg")

BoardsPins.create(
  pin_id: 86,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 30",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605100970536-2046737bc76d.jpeg")
pin.photo.attach(io: file, filename: "photo-1605100970536-2046737bc76d.jpeg")

BoardsPins.create(
  pin_id: 87,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 31",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605217982221-3b46a8904f05.jpeg")
pin.photo.attach(io: file, filename: "photo-1605217982221-3b46a8904f05.jpeg")

BoardsPins.create(
  pin_id: 88,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 32",
  url: "unsplash.com",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605449775567-9c0e398d260b.jpeg")
pin.photo.attach(io: file, filename: "photo-1605449775567-9c0e398d260b.jpeg")

BoardsPins.create(
  pin_id: 89,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 33",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605821750756-946988f72f22.jpeg")
pin.photo.attach(io: file, filename: "photo-1605821750756-946988f72f22.jpeg")

BoardsPins.create(
  pin_id: 90,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 34",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605880560356-d21791f96693.jpeg")
pin.photo.attach(io: file, filename: "photo-1605880560356-d21791f96693.jpeg")

BoardsPins.create(
  pin_id: 91,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 35",
  url: "unsplash.com",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1605888720025-8d079371e8df.jpeg")
pin.photo.attach(io: file, filename: "photo-1605888720025-8d079371e8df.jpeg")

BoardsPins.create(
  pin_id: 92,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 36",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1606071152856-fb5b9cd33097.jpeg")
pin.photo.attach(io: file, filename: "photo-1606071152856-fb5b9cd33097.jpeg")

BoardsPins.create(
  pin_id: 93,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 37",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1606111287187-62c2a58f4c02.jpeg")
pin.photo.attach(io: file, filename: "photo-1606111287187-62c2a58f4c02.jpeg")

BoardsPins.create(
  pin_id: 94,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 38",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1606140967260-f19bcc9259f8.jpeg")
pin.photo.attach(io: file, filename: "photo-1606140967260-f19bcc9259f8.jpeg")

BoardsPins.create(
  pin_id: 95,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 39",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1606170927122-9d111e6d949e.jpeg")
pin.photo.attach(io: file, filename: "photo-1606170927122-9d111e6d949e.jpeg")

BoardsPins.create(
  pin_id: 96,
  board_id: 4
)

pin = Pin.create(
  title: "",
  description: "Travel 40",
  url: "",
  user_id: user4.id
)

file = open("https://lynterest-seeds.s3.us-east-2.amazonaws.com/lynterest_seeds/travel/photo-1606291587598-4e4f5a3d6783.jpeg")
pin.photo.attach(io: file, filename: "photo-1606291587598-4e4f5a3d6783.jpeg")

BoardsPins.create(
  pin_id: 97,
  board_id: 4
)
