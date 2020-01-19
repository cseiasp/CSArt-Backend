# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Painting.delete_all

paintings = [
    {name:"Bunmi" , medium:"Watercolour", url:"BunmiWatercolour.jpg", exhibited_at: "Royal Portrait Society Annual Exhibition 2017", price: "" , availability_status: "available"},
    {name:"Avocado" , medium:"Watercolour", url:"Avocado.jpg", exhibited_at: "", price: "" , availability_status: "available"},
    {name:"Chilis" , medium:"Watercolour", url:"Chillis.jpg", exhibited_at: "", price: "" , availability_status: "available"},
    # {name:"Nino" , medium:"Charcoal drawing", url:"Nino.jpg", exhibited_at: "Royal Portrait Society Annual Exhibition 2014", price: "" , availability_status: "sold" },
    {name:"Tito", medium:"Charcoal drawing", url:"Tito.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Mausi", medium:"Charcoal drawing", url:"Mausi.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Franco", medium:"Charcoal drawing", url:"Franco.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    {name:"Glen", medium:"Charcoal drawing", url:"Glen.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    {name:"Girl", medium:"Charcoal drawing", url:"Girl.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Papi", medium:"Charcoal drawing", url:"Papi.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Bunmi", medium:"Charcoal drawing", url:"Bunmi.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    # {name:"Arthur", medium:"Charcoal drawing", url:"Arthur.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    # {name:"Papi", medium:"Charcoal drawing", url:"Pap1.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Papi", medium:"Charcoal drawing", url:"Pap2.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Nino" , medium:"Charcoal drawing", url:"NinoWall.jpg", exhibited_at: "Royal Portrait Society Annual Exhibition 2014", price: "" , availability_status: "sold" },
    # {name:"Tito", medium:"Charcoal drawing", url:"Tito1.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Martina", medium:"Oil Painting", url:"Marina.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    {name:"Nino" , medium:"Oil Painting", url:"Nino.jpg", exhibited_at: "Royal Portrait Society Annual Exhibition 2017", price: "" , availability_status: "sold", award: "Highly Commended, The de Lazlo Foundation Award" },
    {name:"Glen", medium:"Oil Painting", url:"Glen.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    {name:"Russian", medium:"Oil Painting", url:"Russian.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    {name:"Silvia", medium:"Oil Painting", url:"Silvia.jpg", exhibited_at: "", price: "" , availability_status:"available" },
    {name:"Stefan", medium:"Oil Painting", url:"Stefan.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Boy1", medium:"Oil Painting", url:"Boy1.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Boy2", medium:"Oil Painting", url:"Boy2.jpg", exhibited_at: "", price: "" , availability_status:"sold" },
    {name:"Woman", medium:"Oil Painting", url:"Woman.jpg", exhibited_at: "", price: "" , availability_status:"available" }
]

Painting.create(paintings)