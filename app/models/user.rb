class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:authentication_keys => [:name]

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
  with_options presence: true do
    validates :name,format: {
      with: /\A[ぁ-んァ-ン一-龥]/,
      message: '全角のみで入力して下さい'
    }
    validates :tel, format: { with: /\d{9,11}/,
    message: '半角数字、11文字で入力してください' }, 
    length: { is: 11 }
  end

# No use email
   def email_required?
     false
   end

   def email_changed?
     false
   end

   def will_save_change_to_email?
     false
   end
end
