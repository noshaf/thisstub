class AddPhotoToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :photo_file_name, :string
    add_column :tickets, :photo_content_type, :string
    add_column :tickets, :photo_file_size, :integer
  end
end
