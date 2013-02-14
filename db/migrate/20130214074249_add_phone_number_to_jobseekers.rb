class AddPhoneNumberToJobseekers < ActiveRecord::Migration
  def change
   add_column :jobseekers, :phone_number, :string
   add_column :jobseekers, :verified, :boolean
  end
end
