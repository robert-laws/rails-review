Country.delete_all
City.delete_all
Diplomat.delete_all

@norway = Country.create(name: "Norway", capital: "Oslo", population: 5233000, foundation_year: 1905, eu_membership: false)
@sweden = Country.create(name: "Sweden", capital: "Stockholm", population: 9903000, foundation_year: 1523, membership_year: 1954)
@denmark = Country.create(name: "Denmark", capital: "Copenhagen", population: 5731000, foundation_year: 1814, membership_year: 1954)
@finland = Country.create(name: "Finland", capital: "Helsinki", population: 5495000, foundation_year: 1917, membership_year: 1965)
@greece = Country.create(name: "Greece", capital: "Athens", population: 4500000, foundation_year: 1831, membership_year: 1972)

City.create(name: "Oslo", population: 755000, country: @norway)
City.create(name: "Bergen", population: 264000, country: @norway)
City.create(name: "Trondheim", population: 142000, country: @norway)

City.create(name: "Stockholm", population: 984000, country: @sweden)
City.create(name: "Malmo", population: 341000, country: @sweden)
City.create(name: "Gotenborg", population: 486000, country: @sweden)

City.create(name: "Copenhagen", population: 1240000, country: @denmark)
City.create(name: "Aarhus", population: 212000, country: @denmark)

City.create(name: "Helsinki", population: 398000, country: @finland)
City.create(name: "Turku", population: 179000, country: @finland)

Diplomat.create(name: "Kal Kool", country: @norway)
Diplomat.create(name: "Bob Cobb", country: @sweden)
Diplomat.create(name: "Val Vine", country: @finland)
Diplomat.create(name: "Jim Jupe", country: @denmark)
Diplomat.create(name: "Don Dome", country: @greece)
Diplomat.create(name: "Lou Loop", country: @norway)
Diplomat.create(name: "Tad Tome", country: @sweden)
Diplomat.create(name: "Wil Wood", country: @denmark)