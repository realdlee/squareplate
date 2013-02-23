class AddOptionPointsToCertification < ActiveRecord::Migration
  def change
    add_column :certifications, :optn1_pts, :integer
    add_column :certifications, :optn2_pts, :integer
    add_column :certifications, :optn3_pts, :integer
    add_column :certifications, :optn4_pts, :integer
    add_column :certifications, :optn5_pts, :integer
    add_column :certifications, :optional_points, :integer
  end
end
