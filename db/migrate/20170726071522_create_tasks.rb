class CreateTasks < ActiveRecord::Migration[5.1]
    def self.up
        create_table :tasks do |t|
            t.string :title
            t.boolean :completed
        end
    end

    def self.down
        drop_table :tasks
    end
end
