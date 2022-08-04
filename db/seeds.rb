Employee.destroy_all
DailyNote.destroy_all
Employee.reset_pk_sequence
DailyNote.reset_pk_sequence

puts "🌱 Seeding spices..."

e1 = Employee.create(first_name: "Marena", last_name: "Smith", email_address: "m.smith@gmail.com")
e2 = Employee.create(first_name: "John", last_name: "Mook", email_address: "john@4lwcoffee.com")
e3 = Employee.create(first_name: "Ben", last_name: "Wilson", email_address: "wilsy.style@yahoo.com")
e4 = Employee.create(first_name: "Jessica", last_name: "Buttersmith", email_address: "j.butte@hotmail.com")
e5 = Employee.create(first_name: "Samuel", last_name: "Farmer", email_address: "matterfarmer@gmail.com")
e6 = Employee.create(first_name: "Jamie", last_name: "Hernandez", email_address: "her_jam@gmail.com")

DailyNote.create(coffee_notes: "3 pots sold. Mexico on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new(2022, 6, 07, 8, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "5 pots sold. Ethiopia on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 6, 22, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "Ethiopia on left grinder. Mexico on right.", needs: "Cold coffee cans", items_86ed: "Mexico retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 6, 21, 4, 0, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "Honduras tasted great", needs: "Tens", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 6, 20, 6, 4, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "4 pots sold. Ethiopia on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new(2022, 4, 12, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "5 pots sold. Ethiopia hard to dial in", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 4, 22, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "Kenya tasting great.", needs: "Cold coffee cans", items_86ed: "Mexico retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 5, 21, 4, 0, 2, "-05:00"), employee_id: e4.id )
DailyNote.create(coffee_notes: "Honduras tasted great", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 5, 19, 3, 4, 2, "-05:00"), employee_id: e4.id )
DailyNote.create(coffee_notes: "3 pots sold. Natty brazil on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new(2022, 5, 01, 2, 3, 2, "-05:00"), employee_id: e6.id )
DailyNote.create(coffee_notes: "6 pots sold. Big day on the drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 1, 02, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "Ethiopia on right grinder. Kenya on left.", needs: "Cold coffee cans", items_86ed: "Mexico retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 2, 19, 1, 1, 2, "-05:00"), employee_id: e3.id )
DailyNote.create(coffee_notes: "Honduras tasted so-so. Needs some work for espresso", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 1, 20, 6, 4, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "4 pots sold. Brazil on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new(2022, 5, 04, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "4 pots sold. Ethiopia on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 6, 24, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "Brazil on left grinder. Kenya on right.", needs: "Cold coffee cans", items_86ed: "Mexico retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 6, 28, 4, 0, 2, "-05:00"), employee_id: e6.id )
DailyNote.create(coffee_notes: "El Salvador tasted great", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 5, 05, 6, 4, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "3 pots sold. Peru on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new(2022, 4, 05, 2, 3, 2, "-05:00"), employee_id: e5.id )
DailyNote.create(coffee_notes: "4 pots sold. Rwanda on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 7, 9, 2, 3, 2, "-05:00"), employee_id: e4.id )
DailyNote.create(coffee_notes: "Rwanda on left grinder. Philippines on right.", needs: "Cold coffee cans", items_86ed: "Philippines retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 8, 03, 4, 0, 2, "-05:00"), employee_id: e6.id )
DailyNote.create(coffee_notes: "People were really loving the cold coffee", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 chocolate croissant", miscellaneous: nil, created_on: Time.new(2021, 8, 14, 6, 4, 2, "-05:00"), employee_id: e4.id )
DailyNote.create(coffee_notes: "Honduras tasted so-so. Needs some work for espresso", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 8, 1, 6, 4, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "4 pots sold. Brazil on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 sweet rolls", miscellaneous: "N/A", created_on: Time.new(2022, 7, 29, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "4 pots sold. Ethiopia on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 7, 24, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "Brazil on left grinder. Kenya on right.", needs: "Cold coffee cans", items_86ed: "Mexico retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 7, 28, 4, 0, 2, "-05:00"), employee_id: e6.id )
DailyNote.create(coffee_notes: "El Salvador tasted great", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 7, 4, 6, 4, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "3 pots sold. Peru on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "1 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new(2022, 6, 05, 2, 3, 2, "-05:00"), employee_id: e5.id )
DailyNote.create(coffee_notes: "4 pots sold. Rwanda on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: false, leftover_pastry: "mostly everthing, sold one kimchi danish", miscellaneous: "Bad day for pastry", created_on: Time.new(2022, 7, 8, 2, 3, 2, "-05:00"), employee_id: e4.id )
DailyNote.create(coffee_notes: "Rwanda on left grinder. Philippines on right.", needs: "Cold coffee cans", items_86ed: "Philippines retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 7, 3, 4, 0, 2, "-05:00"), employee_id: e6.id )
DailyNote.create(coffee_notes: "People were really loving the cold coffee", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2021, 10 , 14, 6, 4, 2, "-05:00"), employee_id: e4.id )

puts "✅ Done seeding!"
