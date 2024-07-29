p 'destroying all'
Flat.destroy_all
User.destroy_all
p 'destroy done'

User.create(email: "test@test.com", password: '123456')
p 'users ok'

Flat.create(name: "Flat 1", description: "Description 1", price: 100)
Flat.create(name: "Flat 2", description: "Description 2", price: 200)
Flat.create(name: "Flat 3", description: "Description 3", price: 300)
Flat.create(name: "Flat 4", description: "Description 4", price: 400)
p 'flat ok'
