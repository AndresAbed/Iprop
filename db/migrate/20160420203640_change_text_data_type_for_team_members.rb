class ChangeTextDataTypeForTeamMembers < ActiveRecord::Migration
  def change
    change_column :team_members, :text, :text
  end
end
