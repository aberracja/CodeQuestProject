class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    @signup = Signup.new(params[:user].permit(:first_name, :last_name, :email, :password, company_attributes: [:name]))

    if @signup.save
      sign_in @signup.user
      redirect_to welcome_index_path, notice: 'You have signed up successfully.'
    else
      render action: :new
    end

  end

  def update
    super
  end
end 