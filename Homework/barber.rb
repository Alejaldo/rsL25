require 'sqlite3'

@barber_db = SQLite3::Database.new 'barber.db'

def users_table
    @barber_db.execute "SELECT * FROM Users" do |user|
        puts user
        puts "==="
    end
end

def contacts_table
    @barber_db.execute "SELECT * FROM Contacts" do |contact|
        puts contact
        puts "==="
    end
end

puts "Users table:"
puts users_table
puts
puts "Contacts table:"
puts contacts_table
puts

@barber_db.close