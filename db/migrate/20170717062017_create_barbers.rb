class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.text :name
    
      t.timestamps
    end

    Barber.create :name => 'Jessy Pinkman'
    Barber.create :name => 'Whalter Whyte'
    Barber.create :name => 'Gus Fing'
  end
end
