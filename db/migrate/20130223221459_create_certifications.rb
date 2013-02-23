class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.integer :business_id
      t.datetime :cert_date
      t.datetime :expiry_date
      t.boolean :mand1
      t.boolean :mand2
      t.boolean :mand3
      t.boolean :mand4
      t.boolean :mand5
      t.integer :safety1_c, :default => 0
      t.integer :safety1_d, :default => 0
      t.boolean :nutrition1_c, :default => false
      t.integer :nutrition1_d, :default => 0
      t.boolean :nutrition2_c, :default => false
      t.integer :nutrition2_d, :default => 0
      t.boolean :nutrition3_c, :default => false
      t.integer :nutrition3_d, :default => 0
      t.boolean :nutrition4_c, :default => false
      t.integer :nutrition4_d, :default => 0
      t.boolean :nutrition5_c, :default => false
      t.integer :nutrition5_d, :default => 0
      t.float :labor1_c, :default => 0
      t.integer :labor1_d, :default => 0
      t.float :labor2_c, :default => 0
      t.integer :labor2_d, :default => 0
      t.float :labor3_c, :default => 0
      t.integer :labor3_d, :default => 0
      t.float :labor4_c, :default => 0
      t.integer :labor4_d, :default => 0
      t.boolean :labor5_c, :default => false
      t.integer :labor5_d, :default => 0
      t.boolean :labor6_c, :default => false
      t.integer :labor6_d, :default => 0
      t.boolean :labor7_c, :default => false
      t.integer :labor7_d, :default => 0
      t.boolean :community1_c, :default => false
      t.integer :community1_d, :default => 0
      t.boolean :community2_c, :default => false
      t.integer :community2_d, :default => 0
      t.boolean :community3_c, :default => false
      t.integer :community3_d, :default => 0
      t.boolean :community4_c, :default => false
      t.integer :community4_d, :default => 0
      t.float :source1_c, :default => 0
      t.integer :source1_d, :default => 0
      t.boolean :conserv1_c, :default => false
      t.integer :conserv1_d, :default => 0
      t.boolean :conserv2_c, :default => false
      t.integer :conserv2_d, :default => 0
      t.boolean :conserv3_c, :default => false
      t.integer :conserv3_d, :default => 0
      t.boolean :conserv4_c, :default => false
      t.integer :conserv4_d, :default => 0
      t.boolean :conserv5_c, :default => false
      t.integer :conserv5_d, :default => 0
      t.boolean :conserv6_c, :default => false
      t.integer :conserv6_d, :default => 0
      t.boolean :conserv7_c, :default => false
      t.integer :conserv7_d, :default => 0
      t.boolean :conserv8_c, :default => false
      t.integer :conserv8_d, :default => 0
      t.float :conserv9_c, :default => 0
      t.integer :conserv9_d, :default => 0
      t.boolean :conserv10_c, :default => false
      t.integer :conserv10_d, :default => 0
      t.boolean :conserv11_c, :default => false
      t.integer :conserv11_d, :default => 0
      t.boolean :conserv12_c, :default => false
      t.integer :conserv12_d, :default => 0
      t.boolean :conserv13_c, :default => false
      t.integer :conserv13_d, :default => 0
      t.boolean :conserv14_c, :default => false
      t.integer :conserv14_d, :default => 0
      t.string :optn1_c
      t.integer :optn1_d, :default => 0
      t.string :optn2_c
      t.integer :optn2_d, :default => 0
      t.string :optn3_c
      t.integer :optn3_d, :default => 0
      t.string :optn4_c
      t.integer :optn4_d, :default => 0
      t.string :optn5_c
      t.integer :optn5_d, :default => 0
      t.float :healthy_dining_points, :default => 0
      t.float :healthy_work_points, :default => 0
      t.float :community_benefits_points, :default => 0
      t.float :food_sourcing_points, :default => 0
      t.float :conversation_points, :default => 0
      t.float :total_points, :default => 0

      t.timestamps
    end
  end
end
