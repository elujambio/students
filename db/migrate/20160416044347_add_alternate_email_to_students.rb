class AddAlternateEmailToStudents < ActiveRecord::Migration
  def change
    add_column :students, :alternate_email, :string
  end
end
