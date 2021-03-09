class Pokemon

    attr_accessor :id, :name, :type, :db

    def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end
  
    def self.find(id_num, db)
      pokemon_info = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).first
      Pokemon.new(pokemon_info, db)
    end
  
    def initialize(attr_array)
      @id, @name, @type, @db = *attr_array
    end

end
