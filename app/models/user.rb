class User < ActiveRecord::Base
  authenticates_with_sorcery!
    attr_accessible :username, :email, :password, :password_confirmation

    validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
    validates_confirmation_of :password, :message => "should match confirmation", :if => :password
    validates_uniqueness_of :username, :email
    
    has_many :submits, :dependent => :destroy
end
