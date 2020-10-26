class CreationTablesPrincipales < ActiveRecord::Migration[6.0]
  def change
  
  # CREATION DE LA TABLE USERS
   	create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
      t.integer :age
      t.timestamps
    end
    
# CREATION DE LA TABLE CITIES
    create_table :cities do |t|
      t.string :name
      t.string :zip_code
      t.timestamps
    end

# CREATION DE LA TABLE POTINS
    create_table :potins do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true 
      t.timestamps
    end
    
# CREATION DE LA TABLE TAGS
	  create_table :tags do |t|
      t.string :title
      t.timestamps
    end

# CREATION DE LA TABLE TAGGOSSIPS
 	  create_table :taggossips do |t|
 	  	t.belongs_to :potin, index: true 
 	  	t.belongs_to :tag, index: true 
      t.timestamps
    end

  
  end
end
