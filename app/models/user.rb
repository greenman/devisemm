class User
  include MongoMapper::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  key :email
  key :encrypted_password


  key :reset_password_token 
  key :reset_password_sent_at, Time    
  key :remember_created_at   , Time     
  key :sign_in_count         , Integer, default: 0
  key :current_sign_in_at    , Time    
  key :last_sign_in_at       , Time    
  key :current_sign_in_ip             
  key :last_sign_in_ip                 
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

end
