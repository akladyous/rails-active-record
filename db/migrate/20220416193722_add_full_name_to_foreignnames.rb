class AddFullNameToForeignnames < ActiveRecord::Migration[7.0]
    def change
        add_column :foreignnames, :full_name, :string
        
        reversible do |dir|
            Foreignname.reset_column_information
            Foreignname.all.each do |f_name|
                dir.up do
                    f_name.full_name = "#{f_name.first_name} #{f_name.last_name}"
                    f_name.save
                end
                dir.down do
                    f_name.first_name, f_name.last_name = f_name.full_name.split(' ')
                    f_name.save
                end
            end
        end
        # remove_column :foreignnames, :full_name, :string
    end
end
