class Certification < ActiveRecord::Base
  attr_accessible :business_id, :cert_date, :community1_c, :community1_d, :community2_c, :community2_d, :community3_c, :community3_d, :community4_c, :community4_d, :conserv10_c, :conserv10_d, :conserv11_c, :conserv11_d, :conserv12_c, :conserv12_d, :conserv13_c, :conserv13_d, :conserv14_d, :conserv14_c, :conserv1_c, :conserv1_d, :conserv2_c, :conserv2_d, :conserv3_c, :conserv3_d, :conserv4_c, :conserv4_d, :conserv5_c, :conserv5_d, :conserv6_c, :conserv6_d, :conserv7_c, :conserv7_d, :conserv8_c, :conserv8_d, :conserv9_c, :conserv9_d, :expiry_date, :labor1_c, :labor1_d, :labor2_c, :labor2_d, :labor3_c, :labor3_d, :labor4_c, :labor4_d, :labor5_c, :labor5_d, :labor6_c, :labor6_d, :labor7_c, :labor7_d, :mand1, :mand2, :mand3, :mand4, :mand5, :nutrition1_c, :nutrition1_d, :nutrition2_c, :nutrition2_d, :nutrition3_c, :nutrition3_d, :nutrition4_c, :nutrition4_d, :nutrition5_c, :nutrition5_d, :optn1_c, :optn1_d, :optn2_c, :optn2_d, :optn3_c, :optn3_d, :optn4_c, :optn4_d, :optn5_c, :optn5_d, :safety1_c, :safety1_d, :source1_c, :source1_d

    belongs_to :business

    before_save
    def calculate_healthy_work_points
      labor5_pts = labor5_c ? 1 : 0
      labor6_pts = labor6_c ? 1 : 0
      labor7_pts = labor7_c ? 1 : 0

      @certification.healthy_work_points = 2*(labor1_c+labor2_c+labor3_c+labor4_c)+ labor5_pts + .5(labor6_pts +labor7_pts )
      @certification.save
    end

   def calculate_community_benefits_points
     community1_pts = community1_c ? 1:0
     community2_pts = community2_c ? 1:0
     community3_pts = community3_c ? 1:0
     community4_pts = community4_c ? 1:0
     @certification.community_benefits_points = community1_pts+community2_pts+community3_pts+community4_pts
     @certification.save
   end

   def calculate_food_sourcing_points
     @certification.food_sourcing_points = source1_c * 8
     @certification.save
   end

   def calculate_healthy_dining_points
      if safety1_c >1
        safety1_pts= 0
      else
        safety1_pts = 2-safety1_c
      end

      nutrition1_pts = nutrition1_c ? 1:0
      nutrition2_pts = nutrition2_c ? 1:0
      nutrition3_pts = nutrition3_c ? 1:0
      nutrition4_pts = nutrition4_c ? 1:0
      nutrition5_pts = nutrition5_c ? 1:0
      @certification.healthy_dining_points = safety1_pts + nutrition1_pts+nutrition2_pts+nutrition5_pts + (.5*(nutrition3_pts+nutrition4_pts))
      @certification.save
   end

   def calculate_conservation_points
    conserv1_pts = conserv1_c ? 1:0
    conserv2_pts = conserv2_c ? 1:0
    conserv3_pts = conserv3_c ? 1:0
    conserv4_pts = conserv4_c ? 1:0
    conserv5_pts = conserv5_c ? 1:0
    conserv6_pts = conserv6_c ? 1:0
    conserv7_pts = conserv7_c ? 1:0
    conserv8_pts = conserv8_c ? 1:0
    conserv10_pts = conserv10_c ? 1:0
    conserv11_pts = conserv11_c ? 1:0
    conserv12_pts = conserv12_c ? 1:0
    conserv13_pts = conserv13_c ? 1:0
    conserv14_pts = conserv14_c ? 1:0

     @certification.conservation_points = (conserv9_c*4)+conserv1_pts+(.25)(conserv2_pts+conserv3_pts+conserv4_pts+conserv5_pts+conserv6_pts+conserv7_pts+conserv8_pts+conserv10_pts+conserv11_pts+conserv12_pts+conserv13_pts+conserv14_pts)
   end

   def calculate_optional_points
     @certification.optional_points = optn1_pts+optn2_pts+optn3_pts+optn4_pts+optn5_pts
   end

   def calculate_total_points
     @certification.total_points = healthy_dining_points+healthy_work_points+community_benefits_points+food_sourcing_points+conservation_points+optional_points
   end


end
