class Sign_Up_Validator < ActiveModel::Validator
  def validate(sign_up)
    if SignUp.where("fable_id = ?", sign_up.fable_id).size >= 2
      sign_up.errors[:fable_id] << 'can only have 2 presenters!!'
    end
  end
end

class SignUp < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with Sign_Up_Validator
  belongs_to :fable
  belongs_to :user
  belongs_to :topic
end
