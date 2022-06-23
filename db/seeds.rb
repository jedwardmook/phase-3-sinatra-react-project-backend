Employee.destroy_all
DailyNote.destroy_all

puts "🌱 Seeding spices..."

e1 = Employee.create(first_name: "Marena", last_name: "Smith", email_address: "m.smith@gamil.com")

DailyNote.create(coffee_notes: "4 pots sold. Mexico on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new, employee_id: e1.id )
DailyNote.create(coffee_notes: "5 pots sold. Ethiopia on drip", needs: "Nothing", items_86ed: "Stocked", pastry_soldout: true, leftover_pastry: "N/A", miscellaneous: "Good day for pastry", created_on: Time.new(2022, 6, 22, 2, 3, 2, "-05:00"), employee_id: e1.id )



puts "✅ Done seeding!"
