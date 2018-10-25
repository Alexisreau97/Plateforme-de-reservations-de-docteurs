class CreateAppointements < ActiveRecord::Migration[5.2]
  def change
    create_table :appointements do |t|
      t.datetime :date
      t.timestamps
    end
  end
end
