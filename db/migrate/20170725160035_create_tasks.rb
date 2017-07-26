class CreateTasks < ActiveRecord::Migration[5.1]
    def self.up
        create_table :tasks do |t|
            t.serial :id
            t.string :title
        end
    end

    def self.down
        drop_table :tasks
    end
end
