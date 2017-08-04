class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :liveCoding
      t.string :uniLion
      t.string :fLearning
      t.string :hackerThon
      t.string :soloRun
      t.timestamps
    end
  end
end
