Employee.destroy_all
DailyNote.destroy_all

puts "🌱 Seeding spices..."

e1 = Employee.create(first_name: "Marena", last_name: "Smith", email_address: "m.smith@gamil.com")

DailyNote.create(coffee_notes: "4 pots sold. Mexico on espresso", needs: "Tip money", items_86ed: "simple syrup", pastry_soldout: false, leftover_pastry: "2 cinnamon rolls", miscellaneous: "N/A", created_on: Time.new, employee_id: e1.id )



puts "✅ Done seeding!"
