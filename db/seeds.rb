# Simple user
user1 = User.create(email: "sore@example.com", name: "SORE Kevin", password: "password")
user2 = User.create(email: "diallo@example.com", name: "DIALLO Abdoulaye", password: "password")
user3 = User.create(email: "ali@example.com", name: "ALI Bonkoungou", password: "password")
user4 = User.create(email: "aziz@example.com", name: "AZIZ Bafiogo", password: "password")
user5 = User.create(email: "san@example.com", name: "SAN Eric", password: "password")

# Admin user
user6 = User.create(email: "toe@example.com", name: "TOE Carlos", password: "password", admin: true)
user7 = User.create(email: "larry@example.com", name: "LARRY Howard", password: "password", admin: true)
user8 = User.create(email: "bachir@example.com", name: "BACHIR Adama", password: "password", admin: true)
user9 = User.create(email: "paul@example.com", name: "PAUL Sanou", password: "password", admin: true)
user10 = User.create(email: "pierre@example.com", name: "PIERRE Coulibaly", password: "password", admin: true)

# Category
category1 = Category.create(name: "Homme", user_id: "1")
category2 = Category.create(name: "Femme", user_id: "1")
category3 = Category.create(name: "Jeune homme", user_id: "1")
category4 = Category.create(name: "Jeune femme", user_id: "1")
category5 = Category.create(name: "Autre", user_id: "1")

# Models
model1 = Model.create(name: "Pantalon", description: "Pantalon plaqué", montant: 10000, user_id: 1, category_id: 1 , image: Rails.root.join("app/assets/images/logo.png").open)
model2 = Model.create(name: "Chemise long", description: "Chemise pour veste", montant: 10000, user_id: 1, category_id: 2 , image: Rails.root.join("app/assets/images/logo.png").open)
model3 = Model.create(name: "Culotte", description: "Culotte de promenade", montant: 5000, user_id: 1, category_id: 1 , image: Rails.root.join("app/assets/images/logo.png").open)
model4 = Model.create(name: "Chemise court", description: "Chemise ample", montant: 7500, user_id: 1, category_id: 4 , image: Rails.root.join("app/assets/images/logo.png").open)
model5 = Model.create(name: "Boubou", description: "Grand boubou", montant: 15000, user_id: 1, category_id: 3 , image: Rails.root.join("app/assets/images/logo.png").open)
model6 = Model.create(name: "Veste", description: "Veste de luxe", montant: 50000, user_id: 1, category_id: 5 , image: Rails.root.join("app/assets/images/logo.png").open)

# Clients
client1 = Client.create(name: "BADO Alice", email: "bado@example.com", telephone: "+22670025616", genre: "Femme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client2 = Client.create(name: "SOLE Jean", email: "sole@example.com", telephone: "+22654872169", genre: "Homme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client3 = Client.create(name: "TRAORE Bertrand", email: "traore@example.com", telephone: "+22685471236", genre: "Homme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client4 = Client.create(name: "YAMEOGO Habib", email: "yameogo@example.com", telephone: "+22671525616", genre: "Femme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client5 = Client.create(name: "CONGO Hélène", email: "congo@example.com", telephone: "+22678402514", genre: "Femme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client6 = Client.create(name: "DALO Seni", email: "dalo@example.com", telephone: "+22662996478", genre: "Homme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client7 = Client.create(name: "BADOLO Ange", email: "badolo@example.com", telephone: "+22670025616", genre: "Femme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client8 = Client.create(name: "SAWADOGO Serge", email: "sawadogo@example.com", telephone: "+22665847251", genre: "Homme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client9 = Client.create(name: "WANGO Irène", email: "wango@example.com", telephone: "+22636958745", genre: "Femme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)
client10 = Client.create(name: "KABORE Ines", email: "kabore@example.com", telephone: "+22699872548", genre: "Femme", image: Rails.root.join("app/assets/images/logo.png").open, dos: 42, epaule: 54, poitrine: 8, long_manche: 25, tour_manche: 12, long_taille: 25, tour_taille: 41, pinces: 12, long_camisole: 43, long_chemise: 89, poignet: 45, tour_bras: 85, long_robe: 35, ventre: 84, tour_cou: 78, frappe: 12, ceinture: 58, bassin: 32, genoux: 84, cuisse: 75, long_jupe: 98, long_pantalon: 94, bas: 17, user_id: 1)

# Orders
order1 = Order.create(montant_total: 10000, avance: 5000, reste: 5000, etat_facture: "Non soldé", livraison: "05/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "completed", priority: "medium", user_id: 1, model_id: 1, client_id: 1)
order2 = Order.create(montant_total: 50000, avance: 30000, reste: 20000, etat_facture: "Non soldé", livraison: "15/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "inprogress", priority: "high", user_id: 1, model_id: 2, client_id: 2)
order3 = Order.create(montant_total: 15000, avance: 5000, reste: 10000, etat_facture: "Non soldé", livraison: "25/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "notstarted", priority: "low", user_id: 1, model_id: 3, client_id: 3)
order4 = Order.create(montant_total: 75000, avance: 75000, reste: 0, etat_facture: "Soldé", livraison: "05/10/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "completed", priority: "high", user_id: 1, model_id: 1, client_id: 4)
order5 = Order.create(montant_total: 40000, avance: 20000, reste: 20000, etat_facture: "Non soldé", livraison: "18/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "inprogress", priority: "high", user_id: 1, model_id: 4, client_id: 5)
order6 = Order.create(montant_total: 5000, avance: 5000, reste: 0, etat_facture: "Soldé", livraison: "30/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "inprogress", priority: "low", user_id: 1, model_id: 1, client_id: 6)
order7 = Order.create(montant_total: 65000, avance: 30000, reste: 35000, etat_facture: "Non soldé", livraison: "05/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "notstarted", priority: "medium", user_id: 1, model_id: 5, client_id: 1)
order8 = Order.create(montant_total: 45000, avance: 20000, reste: 25000, etat_facture: "Non soldé", livraison: "05/11/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "completed", priority: "high", user_id: 1, model_id: 1, client_id: 8)
order9 = Order.create(montant_total: 25000, avance: 10000, reste: 15000, etat_facture: "Non soldé", livraison: "12/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "notstarted", priority: "medium", user_id: 1, model_id: 6, client_id: 1)
order10 = Order.create(montant_total: 15000, avance: 15000, reste: 0, etat_facture: "Soldé", livraison: "20/09/2022", image: Rails.root.join("app/assets/images/logo.png").open, etat_command: "inprogress", priority: "low", user_id: 1, model_id: 1, client_id: 1)

# Comments
comment1 = Comment.create(content: "Good job !", client_id: 1, order_id: 10)
comment2 = Comment.create(content: "Very satisfy !", client_id: 2, order_id: 2)
comment3 = Comment.create(content: "You are the best !", client_id: 3, order_id: 3)
comment4 = Comment.create(content: "Nice model !", client_id: 4, order_id: 4)
comment5 = Comment.create(content: "No delay please !", client_id: 5, order_id: 5)