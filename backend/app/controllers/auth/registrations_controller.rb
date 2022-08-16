class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController  
  private
  def sign_up_params
    params.permit(:nickname, :last_name, :first_name, :last_name_reading, :first_name_reading,
                  :birthday, :introduction, :grade_id, :classroom_id, :number_id, :image, :password, :password_confirmation, :email)
  end
end
