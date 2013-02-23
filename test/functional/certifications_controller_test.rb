require 'test_helper'

class CertificationsControllerTest < ActionController::TestCase
  setup do
    @certification = certifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certification" do
    assert_difference('Certification.count') do
      post :create, certification: { business_id: @certification.business_id, cert_date: @certification.cert_date, community1_c: @certification.community1_c, community1_d: @certification.community1_d, community2_c: @certification.community2_c, community2_d: @certification.community2_d, community3_c: @certification.community3_c, community3_d: @certification.community3_d, community4_c: @certification.community4_c, community4_d: @certification.community4_d, conserv10_c: @certification.conserv10_c, conserv10_d: @certification.conserv10_d, conserv11_c: @certification.conserv11_c, conserv11_d: @certification.conserv11_d, conserv12_c: @certification.conserv12_c, conserv12_d: @certification.conserv12_d, conserv13_c: @certification.conserv13_c, conserv13_d: @certification.conserv13_d, conserv14: @certification.conserv14, conserv14_c: @certification.conserv14_c, conserv1_c: @certification.conserv1_c, conserv1_d: @certification.conserv1_d, conserv2_c: @certification.conserv2_c, conserv2_d: @certification.conserv2_d, conserv3_c: @certification.conserv3_c, conserv3_d: @certification.conserv3_d, conserv4_c: @certification.conserv4_c, conserv4_d: @certification.conserv4_d, conserv5_c: @certification.conserv5_c, conserv5_d: @certification.conserv5_d, conserv6_c: @certification.conserv6_c, conserv6_d: @certification.conserv6_d, conserv7_c: @certification.conserv7_c, conserv7_d: @certification.conserv7_d, conserv8_c: @certification.conserv8_c, conserv8_d: @certification.conserv8_d, conserv9_c: @certification.conserv9_c, conserv9_d: @certification.conserv9_d, expiry_date: @certification.expiry_date, labor1_c: @certification.labor1_c, labor1_d: @certification.labor1_d, labor2_c: @certification.labor2_c, labor2_d: @certification.labor2_d, labor3_c: @certification.labor3_c, labor3_d: @certification.labor3_d, labor4_c: @certification.labor4_c, labor4_d: @certification.labor4_d, labor5_c: @certification.labor5_c, labor5_d: @certification.labor5_d, labor6_c: @certification.labor6_c, labor6_d: @certification.labor6_d, labor7_c: @certification.labor7_c, labor7_d: @certification.labor7_d, mand1: @certification.mand1, mand2: @certification.mand2, mand3: @certification.mand3, mand4: @certification.mand4, mand5: @certification.mand5, nutrition1_c: @certification.nutrition1_c, nutrition1_d: @certification.nutrition1_d, nutrition2_c: @certification.nutrition2_c, nutrition2_d: @certification.nutrition2_d, nutrition3_c: @certification.nutrition3_c, nutrition3_d: @certification.nutrition3_d, nutrition4_c: @certification.nutrition4_c, nutrition4_d: @certification.nutrition4_d, nutrition5_c: @certification.nutrition5_c, nutrition5_d: @certification.nutrition5_d, optn1_c: @certification.optn1_c, optn1_d: @certification.optn1_d, optn2_c: @certification.optn2_c, optn2_d: @certification.optn2_d, optn3_c: @certification.optn3_c, optn3_d: @certification.optn3_d, optn4_c: @certification.optn4_c, optn4_d: @certification.optn4_d, optn5_c: @certification.optn5_c, optn5_d: @certification.optn5_d, safety1_c: @certification.safety1_c, safety1_d: @certification.safety1_d, source1_c: @certification.source1_c, source1_d: @certification.source1_d }
    end

    assert_redirected_to certification_path(assigns(:certification))
  end

  test "should show certification" do
    get :show, id: @certification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certification
    assert_response :success
  end

  test "should update certification" do
    put :update, id: @certification, certification: { business_id: @certification.business_id, cert_date: @certification.cert_date, community1_c: @certification.community1_c, community1_d: @certification.community1_d, community2_c: @certification.community2_c, community2_d: @certification.community2_d, community3_c: @certification.community3_c, community3_d: @certification.community3_d, community4_c: @certification.community4_c, community4_d: @certification.community4_d, conserv10_c: @certification.conserv10_c, conserv10_d: @certification.conserv10_d, conserv11_c: @certification.conserv11_c, conserv11_d: @certification.conserv11_d, conserv12_c: @certification.conserv12_c, conserv12_d: @certification.conserv12_d, conserv13_c: @certification.conserv13_c, conserv13_d: @certification.conserv13_d, conserv14: @certification.conserv14, conserv14_c: @certification.conserv14_c, conserv1_c: @certification.conserv1_c, conserv1_d: @certification.conserv1_d, conserv2_c: @certification.conserv2_c, conserv2_d: @certification.conserv2_d, conserv3_c: @certification.conserv3_c, conserv3_d: @certification.conserv3_d, conserv4_c: @certification.conserv4_c, conserv4_d: @certification.conserv4_d, conserv5_c: @certification.conserv5_c, conserv5_d: @certification.conserv5_d, conserv6_c: @certification.conserv6_c, conserv6_d: @certification.conserv6_d, conserv7_c: @certification.conserv7_c, conserv7_d: @certification.conserv7_d, conserv8_c: @certification.conserv8_c, conserv8_d: @certification.conserv8_d, conserv9_c: @certification.conserv9_c, conserv9_d: @certification.conserv9_d, expiry_date: @certification.expiry_date, labor1_c: @certification.labor1_c, labor1_d: @certification.labor1_d, labor2_c: @certification.labor2_c, labor2_d: @certification.labor2_d, labor3_c: @certification.labor3_c, labor3_d: @certification.labor3_d, labor4_c: @certification.labor4_c, labor4_d: @certification.labor4_d, labor5_c: @certification.labor5_c, labor5_d: @certification.labor5_d, labor6_c: @certification.labor6_c, labor6_d: @certification.labor6_d, labor7_c: @certification.labor7_c, labor7_d: @certification.labor7_d, mand1: @certification.mand1, mand2: @certification.mand2, mand3: @certification.mand3, mand4: @certification.mand4, mand5: @certification.mand5, nutrition1_c: @certification.nutrition1_c, nutrition1_d: @certification.nutrition1_d, nutrition2_c: @certification.nutrition2_c, nutrition2_d: @certification.nutrition2_d, nutrition3_c: @certification.nutrition3_c, nutrition3_d: @certification.nutrition3_d, nutrition4_c: @certification.nutrition4_c, nutrition4_d: @certification.nutrition4_d, nutrition5_c: @certification.nutrition5_c, nutrition5_d: @certification.nutrition5_d, optn1_c: @certification.optn1_c, optn1_d: @certification.optn1_d, optn2_c: @certification.optn2_c, optn2_d: @certification.optn2_d, optn3_c: @certification.optn3_c, optn3_d: @certification.optn3_d, optn4_c: @certification.optn4_c, optn4_d: @certification.optn4_d, optn5_c: @certification.optn5_c, optn5_d: @certification.optn5_d, safety1_c: @certification.safety1_c, safety1_d: @certification.safety1_d, source1_c: @certification.source1_c, source1_d: @certification.source1_d }
    assert_redirected_to certification_path(assigns(:certification))
  end

  test "should destroy certification" do
    assert_difference('Certification.count', -1) do
      delete :destroy, id: @certification
    end

    assert_redirected_to certifications_path
  end
end
