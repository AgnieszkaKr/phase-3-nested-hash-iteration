require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  contacts.each do |key, value|
    if key == "Freddy Mercury"
      value.each do |key_nested, val_nested|
        if key_nested == :favorite_ice_cream_flavors
          val_nested.each do |taste|
            val_nested.delete("strawberry")
          end
        end
      end 
    end
  end
  contacts
end

# print the output to the terminal for inspection
remove_strawberry(contacts)
