class Certification < ActiveRecord::Base
  attr_accessible :business_id, :cert_date, :community1_c, :community1_d, :community2_c, :community2_d, :community3_c, :community3_d, :community4_c, :community4_d, :conserv10_c, :conserv10_d, :conserv11_c, :conserv11_d, :conserv12_c, :conserv12_d, :conserv13_c, :conserv13_d, :conserv14_d, :conserv14_c, :conserv1_c, :conserv1_d, :conserv2_c, :conserv2_d, :conserv3_c, :conserv3_d, :conserv4_c, :conserv4_d, :conserv5_c, :conserv5_d, :conserv6_c, :conserv6_d, :conserv7_c, :conserv7_d, :conserv8_c, :conserv8_d, :conserv9_c, :conserv9_d, :expiry_date, :labor1_c, :labor1_d, :labor2_c, :labor2_d, :labor3_c, :labor3_d, :labor4_c, :labor4_d, :labor5_c, :labor5_d, :labor6_c, :labor6_d, :labor7_c, :labor7_d, :mand1, :mand2, :mand3, :mand4, :mand5, :nutrition1_c, :nutrition1_d, :nutrition2_c, :nutrition2_d, :nutrition3_c, :nutrition3_d, :nutrition4_c, :nutrition4_d, :nutrition5_c, :nutrition5_d, :optn1_c, :optn1_d, :optn2_c, :optn2_d, :optn3_c, :optn3_d, :optn4_c, :optn4_d, :optn5_c, :optn5_d, :safety1_c, :safety1_d, :source1_c, :source1_d

    belongs_to :business

    def calculate_healthy_points
    2*(labor1_c+laboc2_c+labor3_c+labor4_c)
    end
end
