Employee.destroy_all
DailyNote.destroy_all
Employee.reset_pk_sequence
DailyNote.reset_pk_sequence

puts "🌱 Seeding spices..."

e1 = Employee.create(first_name: "Marena", last_name: "Smith", email_address: "m.smith@gmail.com")
e2 = Employee.create(first_name: "John", last_name: "Mook", email_address: "john@4lwcoffee.com")

DailyNote.create(coffee_notes: "4 pots sold. Mexico on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new, employee_id: e1.id )
DailyNote.create(coffee_notes: "5 pots sold. Ethiopia on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 6, 22, 2, 3, 2, "-05:00"), employee_id: e1.id )
DailyNote.create(coffee_notes: "Ethiopia on left grinder. Kenya on right.", needs: "Cold coffee cans", items_86ed: "Mexico retail", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Cold coffee cans low", created_on: Time.new(2022, 6, 21, 4, 0, 2, "-05:00"), employee_id: e2.id )
DailyNote.create(coffee_notes: "Honduras tasted great", needs: "Nada", items_86ed: "Nada", pastry_soldout: false, leftover_pastry: "1 croissant", miscellaneous: nil, created_on: Time.new(2022, 6, 20, 6, 4, 2, "-05:00"), employee_id: e2.id )


puts "✅ Done seeding!"
