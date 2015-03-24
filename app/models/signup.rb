class Signup
  include Virtus 

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_reader :user, :company

  attribute :first_name, String
  attribute :last_name, String
  attribute :company_name, String
  attribute :email, String
  attribute :password, String

  # validates :last_name, :first_name, presence: true

  # Forms are never themselves persisted
  def persisted?
    false
  end

  def save
    if valid?
      persist!
      true
    

    else
      false
    end
  end

  
private

  def persist!
    @company = Company.create!(name: company_name)
    @user = @company.users.create!(first_name: first_name, last_name: last_name, email: email, password: password)
    # ActiveRecord::Base.transaction do
    #   @user.save!
    #   @company.save!
    # end
  end
end