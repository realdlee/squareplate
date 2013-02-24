class Certification < ActiveRecord::Base
  attr_accessible :business_id, :cert_date, :community1_c, :community1_d, :community2_c, :community2_d, :community3_c, :community3_d, :community4_c, :community4_d, :conserv10_c, :conserv10_d, :conserv11_c, :conserv11_d, :conserv12_c, :conserv12_d, :conserv13_c, :conserv13_d, :conserv14_d, :conserv14_c, :conserv1_c, :conserv1_d, :conserv2_c, :conserv2_d, :conserv3_c, :conserv3_d, :conserv4_c, :conserv4_d, :conserv5_c, :conserv5_d, :conserv6_c, :conserv6_d, :conserv7_c, :conserv7_d, :conserv8_c, :conserv8_d, :conserv9_c, :conserv9_d, :expiry_date, :labor1_c, :labor1_d, :labor2_c, :labor2_d, :labor3_c, :labor3_d, :labor4_c, :labor4_d, :labor5_c, :labor5_d, :labor6_c, :labor6_d, :labor7_c, :labor7_d, :mand1, :mand2, :mand3, :mand4, :mand5, :nutrition1_c, :nutrition1_d, :nutrition2_c, :nutrition2_d, :nutrition3_c, :nutrition3_d, :nutrition4_c, :nutrition4_d, :nutrition5_c, :nutrition5_d, :optn1_c, :optn1_d, :optn2_c, :optn2_d, :optn3_c, :optn3_d, :optn4_c, :optn4_d, :optn5_c, :optn5_d, :safety1_c, :safety1_d, :source1_c, :source1_d

  attr_accessible :healthy_dining_points,
                  :healthy_work_points,
                  :community_benefits_points,
                  :food_sourcing_points,
                  :conversation_points,
                  :total_points

    belongs_to :business

    before_save do
      calculate_healthy_work_points
      calculate_community_benefits_points
      calculate_food_sourcing_points
      calculate_healthy_dining_points
      calculate_conservation_points
      calculate_optional_points
      calculate_total_points
      # return true
    end

    def calculate_healthy_work_points
      labor5_pts = self.labor5_c ? 1 : 0
      labor6_pts = self.labor6_c ? 1 : 0
      labor7_pts = self.labor7_c ? 1 : 0

     self.healthy_work_points = 2*(self.labor1_c+self.labor2_c+self.labor3_c+self.labor4_c)+ labor5_pts + (0.5)*(labor6_pts +labor7_pts )
      # self.save
    end

   def calculate_community_benefits_points
     community1_pts = self.community1_c ? 1:0
     community2_pts = self.community2_c ? 1:0
     community3_pts = self.community3_c ? 1:0
     community4_pts = self.community4_c ? 1:0
     self.community_benefits_points = community1_pts+community2_pts+community3_pts+community4_pts
   end

   def calculate_food_sourcing_points
     self.food_sourcing_points = (source1_c || 0) * (8.0)
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
      self.healthy_dining_points = safety1_pts + nutrition1_pts+nutrition2_pts+nutrition5_pts + (0.5*(nutrition3_pts+nutrition4_pts))
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

    self.conversation_points = 4*(conserv9_c)+conserv1_pts+(0.25)*(conserv2_pts+conserv3_pts+conserv4_pts+conserv5_pts+conserv6_pts+conserv7_pts+conserv8_pts+conserv10_pts+conserv11_pts+conserv12_pts+conserv13_pts+conserv14_pts)
   end

   def calculate_optional_points
     self.optional_points = (optn1_pts || 0) +( optn2_pts || 0) +(optn3_pts || 0)+(optn4_pts || 0 )+ (optn5_pts || 0)
   end

   def calculate_total_points
     self.total_points = ( healthy_dining_points || 0) +( healthy_work_points || 0)+ (community_benefits_points ||0)+ (food_sourcing_points ||0)+(conversation_points ||0) +(optional_points ||0)
   end


end
